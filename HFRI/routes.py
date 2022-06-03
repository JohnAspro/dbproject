from flask import Flask, render_template, request, flash, redirect, url_for, abort
from flask_mysqldb import MySQL
from HFRI import app, db ## initially created by __init__.py, need to be used here
from HFRI.forms import organization_form, researcher_form, project_form, program_form

@app.route("/")
def index():
    try:
        return render_template("landing.html", pageTitle = "Welcome!")
    except Exception as e:
        print(e)
        return render_template("landing.html", pageTitle = "Welcome!")

@app.route("/show_tables")
def get_tables():
    """
    Show and manipulate database data
    """
    try:
        cur = db.connection.cursor()
        cur.execute("show tables")
        column_names = [i[0] for i in cur.description]
        tables = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        names = ["Companies", "Deliverables", "Executives", "Projects and Scientific Fields", "Organizations",
        "Phones per organization", "Phone numbers", "Number of projects per researcher", "Programs", "Projects", "Research Centers",
        "Researchers", "Scientific Fields", "Universities", "Researchers and projects"]
        return render_template("show_tables.html", names=names, tables=tables, pageTitle = "Data")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

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
    Retrieve students from database
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
        query = "UPDATE org SET abbreviation = '{}', name = '{}', street = '{}', street_number = '{}', postal_code = '{}', city = '{}'  WHERE organization_id = {};".format(updateData['abbreviation'].data, updateData['name'].data, updateData['street'].data,  updateData['street_number'].data,  updateData['postal_code'].data, updateData['city'].data,  orgID)
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
        query = "UPDATE project SET title = '{}', summary = '{}', funds = '{}', start_date = '{}', end_date = '{}', grade = '{}', evaluation_date = '{}', program_id = '{}', evaluator_id = '{}', supervisor_id = '{}', executive_id = '{}', organization_id = '{}' WHERE project_id = '{}';".format(updateData['title'].data, updateData['summary'].data, updateData['funds'].data,  updateData['start_date'].data,  updateData['end_date'].data, updateData['grade'].data, updateData['evaluation_date'].data, updateData['program_id'].data, updateData['evaluator_id'].data, updateData['supervisor_id'].data, updateData['executive_id'].data, updateData['organization_id'].data, projectID)
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
        return render_template("program.html", programs = programs, pageTitle = "Programs Page", form = form)
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
    try:
        cur = db.connection.cursor()
        cur.execute(query)
        db.connection.commit()
        cur.close()
        flash("Program deleted successfully", "primary")
    except Exception as e:
        flash(str(e), "danger")
    return redirect(url_for("get_program"))


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
