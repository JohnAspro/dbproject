from flask import Flask, render_template, request, flash, redirect, url_for, abort, request
from flask_mysqldb import MySQL
from HFRI import app, db
# import forms
from HFRI.forms import organization_form, researcher_form, project_form, program_form, deliverable_form, executive_form, university_form, research_center_form, company_form, phone_number_form, scientific_field_form, works_on_form, focuses_on_form

global is_admin #for login
is_admin=False

# home page

@app.route("/")
def index():
    try:
        return render_template("landing.html", pageTitle = "Welcome!")
    except Exception as e:
        print(e)
        return render_template("landing.html", pageTitle = "Welcome!")

@app.route("/login", methods=['GET', 'POST'])
def login():
    global is_admin
    if request.method == 'POST':
        if request.form['username'] != 'HFRI_admin' or request.form['password'] != 'admin':
            flash("Invalid password", "danger")
            return redirect(url_for("index"))
        else:
            is_admin=True
            flash("Logged in", "success")
            return redirect(url_for("index"))

@app.route("/logout", methods=['GET', 'POST'])
def logout():
    global is_admin
    if is_admin==False:
        flash("You are not logged in", "warning")
        return redirect(url_for("index"))
    else:
        is_admin=False
        flash("Logged out", "success")
        return redirect(url_for("index"))

@app.route("/show_tables")
def get_tables():
    """
    Show and manipulate database data
    """
    try:
        cur = db.connection.cursor()
        cur.execute("show tables")
        column_names = [i[0] for i in cur.description]
        tables = [dict(zip(column_names, entry)) for entry in cur.fetchall() if entry[0]!="p_sf" and entry[0]!="y_o"]
        cur.close()
        names = ["Companies", "Deliverables", "Executives", "Projects and scientific fields", "Organizations",
        "Number of phones per organization", "Phone numbers", "Number of projects per researcher", "Programs", "Projects", "Research centers",
        "Researchers", "Scientific fields", "Universities", "Researchers and projects"]
        return render_template("show_tables.html", names=names, tables=tables, pageTitle = "Data")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

# queries

@app.route("/queries", methods=['GET', 'POST'])
def get_query():
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT r.first_name, r.last_name, count(*) num_of_proj from researcher r INNER JOIN works_on wo ON wo.researcher_id = r.researcher_id where wo.project_id IN (select p.project_id from project p WHERE  p.project_id NOT IN (select d.project_id from deliverable d)) GROUP BY r.last_name, r.first_name HAVING num_of_proj > 4")
        column_names = [i[0] for i in cur.description]
        q1 = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        cur = db.connection.cursor()
        cur.execute("SELECT ex.executive_name, o.organization_name, SUM(p.funds) money from executive ex INNER join project p ON (ex.executive_id = p.executive_id) INNER JOIN org o ON o.organization_id = p.organization_id GROUP BY ex.executive_name, o.organization_name ORDER BY money DESC LIMIT 5;")
        column_names = [i[0] for i in cur.description]
        q2 = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        cur = db.connection.cursor()
        cur.execute("SELECT a.first_name, a.last_name, COUNT(b.project_id) num_of_proj FROM researcher a INNER JOIN works_on b ON (a.researcher_id = b.researcher_id) INNER JOIN project c ON (c.project_id = b.project_id) WHERE c.end_date > CURDATE() AND DATEDIFF(CURDATE(),a.date_of_birth) /365 < 40 GROUP BY a.researcher_id ORDER BY num_of_proj DESC;")
        column_names = [i[0] for i in cur.description]
        q3 = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        cur = db.connection.cursor()
        cur.execute("SELECT count(psf.project_id) num , psf.scientific_field_name sf, psf2.scientific_field_name sf2 from p_sf psf INNER JOIN p_sf psf2 ON psf.project_id = psf2.project_id WHERE psf.scientific_field_name > psf2.scientific_field_name GROUP BY psf.scientific_field_name, psf2.scientific_field_name order by num desc LIMIT 3;")
        column_names = [i[0] for i in cur.description]
        q4 = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        cur = db.connection.cursor()
        cur.execute("SELECT yo.organization_name from y_o yo INNER JOIN y_o yo2 ON (yo.organization_name = yo2.organization_name and ABS(yo.xronos - yo2.xronos) = 1 and yo.xronos > yo2.xronos);")
        column_names = [i[0] for i in cur.description]
        q5 = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()

        cur = db.connection.cursor()
        cur.execute("SELECT scientific_field_name FROM scientific_field;")
        column_names = [i[0] for i in cur.description]
        scf = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()

        scf2 = request.form.get('sf')

        cur = db.connection.cursor()
        cur.execute("SELECT DISTINCT p.title from focuses_on fo INNER JOIN project p ON (p.project_id = fo.project_id) INNER JOIN works_on wo ON (wo.project_id = p.project_id) INNER JOIN researcher r ON (r.researcher_id = wo.researcher_id) WHERE p.end_date - CURDATE() > 0 and fo.scientific_field_name = '{}';".format(scf2))
        column_names = [i[0] for i in cur.description]
        q6 = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()

        cur = db.connection.cursor()
        cur.execute("SELECT r.first_name, r.last_name from focuses_on fo INNER JOIN project p ON (p.project_id = fo.project_id) INNER JOIN works_on wo ON (wo.project_id = p.project_id) INNER JOIN researcher r ON (r.researcher_id = wo.researcher_id) WHERE p.end_date - CURDATE() > 0 and fo.scientific_field_name = '{}';".format(scf2))
        column_names = [i[0] for i in cur.description]
        q7 = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()

        cur = db.connection.cursor()
        cur.execute("SELECT executive_name FROM executive")
        column_names = [i[0] for i in cur.description]
        ex = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()

        cur = db.connection.cursor()
        cur.execute("SELECT DISTINCT YEAR(start_date) y FROM project ORDER BY y DESC")
        column_names = [i[0] for i in cur.description]
        st_d = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()

        ex2 = request.form.get('exe')
        st_d2 = request.form.get('stad')
        du = request.form.get('dur')

        if(ex2 == None):
            ex2 = ""
        if(st_d2 == None):
            st_d2 = ""
        if(du == None):
            du = ""

        if(ex2 == "" and st_d2 == "" and du == ""):
            where = " "
        else:
            where = " WHERE "

        if(ex2 != ""):
            ex2 = "e.executive_name = " + "'" + ex2 + "'"

        if(du != ""):
            du = "YEAR(p.end_date) - YEAR(p.start_date) = " + du
            if(ex2 != ""):
                du = " AND " + du

        if(st_d2 != ""):
             st_d2 = "YEAR(p.start_date) = " + "'" + st_d2 + "'"
             if(du != "" or ex2 != ""):
                 st_d2 = " AND " + st_d2

        if(ex2 == ""):
            ex2 = " "

        if(du == ""):
            du = " "

        if(st_d2 == ""):
            st_d2 = " "

        cur = db.connection.cursor()
        cur.execute("SELECT p.title from project p INNER JOIN executive e ON (e.executive_id = p.executive_id)" + where + ex2 + du + st_d2)
        column_names = [i[0] for i in cur.description]
        q8 = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()

        cur = db.connection.cursor()
        cur.execute("SELECT r.first_name, r.last_name , p.title  from project p INNER JOIN executive e ON (e.executive_id = p.executive_id) INNER JOIN works_on wo  ON wo.project_id = p.project_id  INNER JOIN researcher r  ON r.researcher_id = wo.researcher_id " + where + ex2 + du + st_d2)
        column_names = [i[0] for i in cur.description]
        q9 = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()


        return render_template("queries.html",
                               pageTitle = "FAQ", q1 = q1, q2 = q2, q3 = q3, q4 = q4, q5 = q5, scf = scf, q6 = q6, pr = scf2, q7 = q7,
                               ex = ex, st_d = st_d, q8 = q8, q9 = q9)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

# get, update, delete

@app.route("/researcher")
def get_researcher():
    """
    Retrieve researchers from database
    """
    try:
        form = researcher_form()
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM researcher")
        column_names = [i[0] for i in cur.description]
        researcher = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("researcher.html", researcher = researcher, pageTitle = "Researchers", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/researcher/update/<int:researcherID>", methods = ["POST"])
def update_researcher(researcherID):
    """
    Update a researcher in the database by id
    """
    form = researcher_form()
    updateData = form.__dict__
    if(form.validate_on_submit()):
        query = "UPDATE researcher SET first_name = '{}', last_name = '{}', sex = '{}', date_of_birth = '{}', start_date = '{}', organization_id = '{}'  WHERE researcher_id = {};".format(updateData['first_name'].data, updateData['last_name'].data, updateData['sex'].data,  updateData['date_of_birth'].data,  updateData['start_date'].data, updateData['organization_id'].data,  researcherID)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_researcher"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Researcher updated successfully", "success")
        except Exception as e:
            flash(str(e), "danger")
    else:
        for category in form.errors.values():
            for error in category:
                flash(error, "danger")
    return redirect(url_for("get_researcher"))

@app.route("/researcher/delete/<int:researcherID>", methods = ["POST"])
def delete_researcher(researcherID):
    """
    Delete researcher by id from database
    """
    query = f"DELETE FROM researcher WHERE researcher_id = {researcherID};"
    if (is_admin==False):
        flash("You are not permitted to make changes", "danger")
        return redirect(url_for("get_researcher"))
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("Researcher deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_researcher"))

@app.route("/deliverable")
def get_deliverable():
    """
    Retrieve deliverables from database
    """
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT * from deliverable")
        column_names = [i[0] for i in cur.description]
        deliverables = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("deliverable.html", deliverables = deliverables, pageTitle = "Deliverables")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/org")
def get_organization():
    """
    Retrieve organizations from database
    """
    try:
        form = organization_form()
        cur = db.connection.cursor()
        cur.execute("SELECT * from org")
        column_names = [i[0] for i in cur.description]
        orgs = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("org.html", orgs = orgs, pageTitle = "Organizations", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/org/update/<int:orgID>", methods = ["POST"])
def update_organization(orgID):
    """
    Update an organization in the database by id
    """
    form = organization_form()
    updateData = form.__dict__
    if(form.validate_on_submit()):
        query = "UPDATE org SET abbreviation = '{}', organization_name = '{}', street = '{}', street_number = '{}', postal_code = '{}', city = '{}'  WHERE organization_id = {};".format(updateData['abbreviation'].data, updateData['organization_name'].data, updateData['street'].data,  updateData['street_number'].data,  updateData['postal_code'].data, updateData['city'].data,  orgID)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_organization"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Organization updated successfully", "success")
        except Exception as e:
            flash(str(e), "danger")
    else:
        for category in form.errors.values():
            for error in category:
                flash(error, "danger")
    return redirect(url_for("get_organization"))

@app.route("/org/delete/<int:orgID>", methods = ["POST"])
def delete_organization(orgID):
    """
    Delete organization by id from database
    """
    query = f"DELETE FROM org WHERE organization_id = {orgID};"
    if (is_admin==False):
        flash("You are not permitted to make changes", "danger")
        return redirect(url_for("get_organization"))
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("Organization deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_organization"))

@app.route("/project")
def get_project():
    """
    Retrieve projects from database
    """
    try:
        form = project_form()
        cur = db.connection.cursor()
        cur.execute("SELECT * from project")
        column_names = [i[0] for i in cur.description]
        projects = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("project.html", projects = projects, pageTitle = "Projects", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/project/update/<int:projectID>", methods = ["POST"])
def update_project(projectID):
    """
    Update a prject in the database, by id
    """
    form = project_form()
    updateData = form.__dict__
    if(form.validate_on_submit()):
        query = "UPDATE project SET title = '{}', summary = '{}', end_date = '{}' WHERE project_id = '{}';".format(updateData['title'].data, updateData['summary'].data, updateData['end_date'].data, projectID)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_project"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Project updated successfully", "success")
        except Exception as e:
            flash(str(e), "danger")
    else:
        for category in form.errors.values():
            for error in category:
                flash(error, "danger")
    return redirect(url_for("get_project"))

@app.route("/project/delete/<int:projectID>", methods = ["POST"])
def delete_project(projectID):
    """
    Delete project by id from database
    """
    query = f"DELETE FROM project WHERE project_id = {projectID};"
    if (is_admin==False):
        flash("You are not permitted to make changes", "danger")
        return redirect(url_for("get_project"))
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("Project deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_project"))

@app.route("/program")
def get_program():
    """
    Retrieve programs from database
    """
    try:
        form = program_form()
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM program")
        column_names = [i[0] for i in cur.description]
        programs = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("program.html", programs = programs, pageTitle = "Programs", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/program/update/<int:programID>", methods = ["POST"])
def update_program(programID):
    """
    Update a program in the database, by id
    """
    form = program_form()
    updateData = form.__dict__
    if(form.validate_on_submit()):
        query = "UPDATE program SET program_name = '{}', department = '{}' WHERE program_id = {};".format(updateData['program_name'].data, updateData['department'].data, programID)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_program"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Programs updated successfully", "success")
        except Exception as e:
            flash(str(e), "danger")
    else:
        for category in form.errors.values():
            for error in category:
                flash(error, "danger")
    return redirect(url_for("get_program"))

@app.route("/program/delete/<int:programID>", methods = ["POST"])
def delete_program(programID):
    """
    Delete program by id from database
    """
    query = f"DELETE FROM program WHERE program_id = {programID};"
    if (is_admin==False):
        flash("You are not permitted to make changes", "danger")
        return redirect(url_for("get_program"))
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("Program deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_program"))

@app.route("/executive")
def get_executive():
    """
    Retrieve executives from database
    """
    try:
        form = executive_form()
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM executive")
        column_names = [i[0] for i in cur.description]
        executives = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("executive.html", executives = executives, pageTitle = "Executives", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/executive/delete/<int:executiveID>", methods = ["POST"])
def delete_executive(executiveID):
    """
    Delete executive by id from database
    """
    query = f"DELETE FROM executive WHERE executive_id = {executiveID};"
    if (is_admin==False):
        flash("You are not permitted to make changes", "danger")
        return redirect(url_for("get_executive"))
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("Executive deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_executive"))

@app.route("/phone_number")
def get_phone_number():
    """
    Retrieve phone numbers from database
    """
    try:
        form = phone_number_form()
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM phone_number")
        column_names = [i[0] for i in cur.description]
        phone_numbers = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("phone_number.html", phone_numbers=phone_numbers, pageTitle = "Phone numbers", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/phone_number/delete/<int:phonenumber>", methods = ["POST"])
def delete_phone_number(phonenumber):
    """
    Delete phone number from database
    """
    query = "DELETE FROM phone_number WHERE p_number = '{}';".format(phonenumber)
    if (is_admin==False):
        flash("You are not permitted to make changes", "danger")
        return redirect(url_for("get_phone_number"))
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("Phone number deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_phone_number"))

@app.route("/works_on")
def get_works_on():
    """
    Retrieve researches and projects that work on from database
    """
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM works_on")
        column_names = [i[0] for i in cur.description]
        works_on = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("works_on.html", works_on=works_on, pageTitle = "Researchers and projects")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/pr_re")
def get_pre_re():
    """
    Retrieve number of projects per researcher from database
    """
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM pr_re")
        column_names = [i[0] for i in cur.description]
        pr_re = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("pr_re.html", pr_re=pr_re, pageTitle = "Number of projects per researcher")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/scientific_field")
def get_scientific_field():
    """
    Retrieve scientific fields from database
    """
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM scientific_field")
        column_names = [i[0] for i in cur.description]
        scientific_fields = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("scientific_field.html", scientific_fields=scientific_fields, pageTitle = "Scientific fields")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/focuses_on")
def get_focuses_on():
    """
    Retrieve scientific fields that a project focuses on from database
    """
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT * from focuses_on")
        column_names = [i[0] for i in cur.description]
        project_and_sf = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("focuses_on.html", project_and_sf = project_and_sf, pageTitle = "Projects and Scientific fields")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/p_per_org")
def get_p_per_org():
    """
    Retrieve number of phones per organization from database
    """
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT * from p_per_org")
        column_names = [i[0] for i in cur.description]
        p_per_org = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("p_per_org.html", p_per_org = p_per_org, pageTitle = "Number of phones per organization")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/company")
def get_company():
    """
    Retrieve companies from database
    """
    try:
        form = company_form()
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM company")
        column_names = [i[0] for i in cur.description]
        org = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("company.html", org = org, pageTitle = "Companies", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/company/update/<int:companyID>", methods = ["POST"])
def update_company(companyID):
    """
    Update a company in the database, by id
    """
    form = company_form()
    updateData = form.__dict__
    if(form.validate_on_submit()):
        query = "UPDATE company SET equity = '{}' WHERE organization_id = {};".format(updateData['equity'].data, companyID)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_company"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Company updated successfully", "success")
        except Exception as e:
            flash(str(e), "danger")
    else:
        for category in form.errors.values():
            for error in category:
                flash(error, "danger")
    return redirect(url_for("get_company"))

@app.route("/company/delete/<int:companyID>", methods = ["POST"])
def delete_company(companyID):
    """
    Delete company by id from database
    """
    query = f"DELETE FROM company WHERE organization_id = {companyID};"
    if (is_admin==False):
        flash("You are not permitted to make changes", "danger")
        return redirect(url_for("get_company"))
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("Company deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_company"))

@app.route("/research_center")
def get_research_center():
    """
    Retrieve research_centers from database
    """
    try:
        form = research_center_form()
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM research_center")
        column_names = [i[0] for i in cur.description]
        org = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("research_center.html", org = org, pageTitle = "Research centers", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/research_center/update/<int:research_centerID>", methods = ["POST"])
def update_research_center(research_centerID):
    """
    Update a research center in the database, by id
    """
    form = research_center_form()
    updateData = form.__dict__
    if(form.validate_on_submit()):
        query = "UPDATE research_center SET budget_from_minedu = '{}', budget_from_private_acts = '{}' WHERE organization_id = {};".format(updateData['budget_from_minedu'].data, updateData['budget_from_private_acts'].data, research_centerID)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_research_center"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Research center updated successfully", "success")
        except Exception as e:
            flash(str(e), "danger")
    else:
        for category in form.errors.values():
            for error in category:
                flash(error, "danger")
    return redirect(url_for("get_research_center"))

@app.route("/research_center/delete/<int:research_centerID>", methods = ["POST"])
def delete_research_center(research_centerID):
    """
    Delete a researcher by id from database
    """
    query = f"DELETE FROM research_center WHERE organization_id = {research_centerID};"
    if (is_admin==False):
        flash("You are not permitted to make changes", "danger")
        return redirect(url_for("get_research_center"))
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("Research center deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_research_center"))

@app.route("/university")
def get_university():
    """
    Retrieve universities from database
    """
    try:
        form = university_form()
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM university")
        column_names = [i[0] for i in cur.description]
        org = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("university.html", org = org, pageTitle = "Universities", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/university/update/<int:universityID>", methods = ["POST"])
def update_university(universityID):
    """
    Update a university in the database, by id
    """
    form = university_form()
    updateData = form.__dict__
    if(form.validate_on_submit()):
        query = "UPDATE university SET budget_from_minedu = '{}' WHERE organization_id = {};".format(updateData['budget_from_minedu'].data, universityID)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_university"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("University updated successfully", "success")
        except Exception as e:
            flash(str(e), "danger")
    else:
        for category in form.errors.values():
            for error in category:
                flash(error, "danger")
    return redirect(url_for("get_university"))

@app.route("/university/delete/<int:universityID>", methods = ["POST"])
def delete_university(universityID):
    """
    Delete university by id from database
    """
    query = f"DELETE FROM university WHERE organization_id = {universityID};"
    if (is_admin==False):
        flash("You are not permitted to make changes", "danger")
        return redirect(url_for("get_university"))
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("University deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_university"))

# insert

@app.route("/researcher/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_researcher():
    """
    Create new researcher in the database
    """
    form = researcher_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newresearcher = form.__dict__
        query = "INSERT INTO researcher(first_name, last_name, sex, date_of_birth, start_date, organization_id) VALUES ('{}', '{}', '{}', '{} 00:00:00', '{} 00:00:00', '{}');".format(newresearcher['first_name'].data, newresearcher['last_name'].data, newresearcher['sex'].data, newresearcher['date_of_birth'].data,
        newresearcher['start_date'].data, newresearcher['organization_id'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("show_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Researcher inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    return render_template("insert_researcher.html", pageTitle = "Insert Researcher", form = form)

@app.route("/program/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_program():
    """
    Create new program in the database
    """
    form = program_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newprogram = form.__dict__
        query = "INSERT INTO program(program_name, department) VALUES ('{}', '{}');".format(newprogram['program_name'].data, newprogram['department'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Program inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_program.html", pageTitle = "Insert Program", form = form)

@app.route("/project/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_project():
    """
    Create new project in the database
    """
    form = project_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newproject = form.__dict__
        query = "INSERT INTO project(title, summary, funds, start_date, end_date, grade, evaluation_date, program_id, evaluator_id, supervisor_id, executive_id, organization_id) VALUES ('{}', '{}', '{}', '{} 00:00:00', '{} 00:00:00', '{}', '{} 00:00:00', '{}', '{}', '{}', '{}', '{}');".format(newproject['title'].data, newproject['summary'].data, newproject['funds'].data,  newproject['start_date'].data,  newproject['end_date'].data, newproject['grade'].data, newproject['evaluation_date'].data, newproject['program_id'].data, newproject['evaluator_id'].data, newproject['supervisor_id'].data, newproject['executive_id'].data, newproject['organization_id'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Project inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_project.html", pageTitle = "Insert Project", form = form)

@app.route("/org/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_organization():
    """
    Create new organization in the database
    """
    form = organization_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        neworg = form.__dict__
        query = "INSERT INTO org(abbreviation, organization_name, street, street_number, postal_code, city) VALUES ('{}', '{}', '{}', '{}', '{}', '{}');".format(neworg['abbreviation'].data, neworg['organization_name'].data, neworg['street'].data,  neworg['street_number'].data,  neworg['postal_code'].data, neworg['city'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Organization inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_org.html", pageTitle = "Insert Organization", form = form)

@app.route("/deliverable/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_deliverable():
    """
    Create new deliverable in the database
    """
    form = deliverable_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newdeliverable = form.__dict__
        query = "INSERT INTO deliverable(title, summary, due_date, project_id) VALUES ('{}', '{}', '{} 00:00:00', '{}');".format(newdeliverable['title'].data, newdeliverable['summary'].data, newdeliverable['due_date'].data,  newdeliverable['project_id'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Deliverable inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_deliverable.html", pageTitle = "Insert Deliverable", form = form)

@app.route("/executive/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_executive():
    """
    Insert new executive in the database
    """
    form = executive_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newexecutive = form.__dict__
        query = "INSERT INTO executive(executive_name) VALUES ('{}');".format(newexecutive['executive_name'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Executive inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_executive.html", pageTitle = "Insert Executive", form = form)

@app.route("/university/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_uinversity():
    """
    Insert new university in the database
    """
    form = university_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newuniversity = form.__dict__
        query = "INSERT INTO university(organization_id, budget_from_minedu) VALUES ('{}', '{}');".format(newuniversity['organization_id'].data, newuniversity['budget_from_minedu'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("University inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_university.html", pageTitle = "Insert University", form = form)

@app.route("/research_center/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_research_center():
    """
    Insert new research center in the database
    """
    form = research_center_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newresearch_center = form.__dict__
        query = "INSERT INTO research_center(organization_id, budget_from_minedu, budget_from_private_acts) VALUES ('{}', '{}', '{}');".format(newresearch_center['organization_id'].data,
        newresearch_center['budget_from_minedu'].data, newresearch_center['budget_from_private_acts'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Research Center inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_research_center.html", pageTitle = "Insert Research Center", form = form)

@app.route("/company/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_company():
    """
    Insert new company in the database
    """
    form = company_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newcompany = form.__dict__
        query = "INSERT INTO company(organization_id, equity) VALUES ('{}', '{}');".format(newcompany['organization_id'].data, newcompany['equity'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Company inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_company.html", pageTitle = "Insert Company", form = form)

@app.route("/phone_number/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_phone_number():
    """
    Insert new phone number in the database
    """
    form = phone_number_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newphone_number = form.__dict__
        query = "INSERT INTO phone_number(organization_id, p_number) VALUES ('{}', '{}');".format(newphone_number['organization_id'].data, newphone_number['p_number'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Phone number inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_phone_number.html", pageTitle = "Insert Phone number", form = form)

@app.route("/scientific_field/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_scientific_field():
    """
    Insert new scientific field in the database
    """
    form = scientific_field_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newscientific_field = form.__dict__
        query = "INSERT INTO scientific_field(scientific_field_name) VALUES ('{}');".format(newscientific_field['scientific_field_name'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Scientific field inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_scientific_field.html", pageTitle = "Insert Scientific field", form = form)

@app.route("/focuses_on/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_focuses_on():
    """
    Insert scientific fields that a project focuses on in the database
    """
    form = focuses_on_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newfocuses_on = form.__dict__
        query = "INSERT INTO focuses_on(project_id, scientific_field_name) VALUES ('{}', '{}');".format(newfocuses_on['project_id'].data, newfocuses_on['scientific_field_name'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("Scientific field that project focuses on inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_focuses_on.html", pageTitle = "Insert scientific field for a project", form = form)


@app.route("/works_on/insert", methods = ["GET", "POST"]) ## "GET" by default
def insert_works_on():
    """
    Insert new project for a researcher in the database
    """
    form = works_on_form()
    ## when the form is submitted
    if(request.method == "POST" and form.validate_on_submit()):
        newworks_on = form.__dict__
        query = "INSERT INTO works_on(project_id, researcher_id) VALUES ('{}', '{}');".format(newworks_on['project_id'].data, newworks_on['researcher_id'].data)
        if (is_admin==False):
            flash("You are not permitted to make changes", "danger")
            return redirect(url_for("get_tables"))
        try:
            cur = db.connection.cursor()
            cur.execute(query)
            db.connection.commit()
            cur.close()
            flash("New project for the researcher inserted successfully", "success")
            return redirect(url_for("index"))
        except Exception as e: ## OperationalError
            flash(str(e), "danger")

    ## else, response for GET request
    return render_template("insert_works_on.html", pageTitle = "Insert new project for a researcher", form = form)
