from flask import Flask, render_template, request, flash, redirect, url_for, abort
from flask_mysqldb import MySQL
from HFRI import app, db ## initially created by __init__.py, need to be used here
from HFRI.forms import organization_form

@app.route("/")
def index():
    try:
        return render_template("landing.html",
                               pageTitle = "Landing Page"
                               )
    except Exception as e:
        print(e)
        return render_template("landing.html", pageTitle = "Landing Page")

@app.route("/researcher")
def getResearcher():
    """
    Retrieve students from database
    """
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT * FROM researcher") 
        column_names = [i[0] for i in cur.description]
        researcher = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("researcher.html", researcher = researcher, pageTitle = "Researchers Page")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/show_tables")
def get_tables():
    """
    Retrieve students from database
    """
    try:
        cur = db.connection.cursor()
        cur.execute("show tables") 
        column_names = [i[0] for i in cur.description]
        tables = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("show_tables.html", tables = tables, pageTitle = "Tables Page")
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/deliverable")
def get_deliverables():
    """
    Retrieve students from database
    """
    try:
        cur = db.connection.cursor()
        cur.execute("SELECT * from deliverable") 
        column_names = [i[0] for i in cur.description]
        deliverables = [dict(zip(column_names, entry)) for entry in cur.fetchall()]
        cur.close()
        return render_template("deliverable.html", deliverables = deliverables, pageTitle = "Deliverables Page")
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
        return render_template("org.html", orgs = orgs, pageTitle = "Organizations Page", form = form)
    except Exception as e:
        ## if the connection to the database fails, return HTTP response 500
        flash(str(e), "danger")
        abort(500)

@app.route("/org/update/<int:orgID>", methods = ["POST"])
def update_organization(orgID):
    """
    Update a student in the database, by id
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
    Delete student by id from database
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


# @app.route("/researcher/delete/<int:researcherID>", methods = ["POST"])
# def deleteStudent(researcherID):
#     """
#     Delete student by id from database
#     """
#     query = f"DELETE FROM researcher WHERE id = {researcherID};"
#     try:
#         cur = db.connection.cursor()
#         cur.execute(query)
#         db.connection.commit()
#         cur.close()
#         flash("Student deleted successfully", "primary")
#     except Exception as e:
#         flash(str(e), "danger")
#     return redirect(url_for("getStudents"))
