from flask import Flask, render_template, request, flash, redirect, url_for, abort
from flask_mysqldb import MySQL
from HFRI import app, db ## initially created by __init__.py, need to be used here
# from HFRI import forms

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
