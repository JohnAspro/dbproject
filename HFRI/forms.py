from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired, Email

## when passed as a parameter to a template, an object of this class will be rendered as a regular HTML form
## with the additional restrictions specified for each field
class organization_form(FlaskForm):

    abbreviation = StringField(label = "abbreviation", validators = [DataRequired(message = "Abbreviation is a required field.")])

    name = StringField(label = "name", validators = [DataRequired(message = "Name is a required field.")])

    street = StringField(label = "street", validators = [DataRequired(message = "Street is a required field.")])

    street_number = StringField(label = "street_number", validators = [DataRequired(message = "Street Number is a required field.")])

    postal_code = StringField(label = "postal_code", validators = [DataRequired(message = "Postal Code is a required field.")])

    city = StringField(label = "city", validators = [DataRequired(message = "City is a required field.")])

    submit = SubmitField("Create")

class researcher_form(FlaskForm):

    first_name = StringField(label = "first_name", validators = [DataRequired(message = "First Name is a required field.")])

    last_name = StringField(label = "last_name", validators = [DataRequired(message = "Last Name is a required field.")])

    sex = StringField(label = "sex", validators = [DataRequired(message = "sex is a required field.")])

    date_of_birth = StringField(label = "date_of_birth", validators = [DataRequired(message = "date of birth is a required field.")])

    start_date = StringField(label = "start_date", validators = [DataRequired(message = "Start date is a required field.")])

    organization_id = StringField(label = "organization_id", validators = [DataRequired(message = "Organization ID is a required field.")])

    submit = SubmitField("Create")

class project_form(FlaskForm):

    title = StringField(label = "title", validators = [DataRequired(message = "Title is a required field.")])

    summary = StringField(label = "summary", validators = [DataRequired(message = "Summary is a required field.")])

    funds = StringField(label = "funds", validators = [DataRequired(message = "Fund is a required field.")])

    start_date = StringField(label = "start_date", validators = [DataRequired(message = "Start date is a required field.")])

    end_date = StringField(label = "end_date", validators = [DataRequired(message = "End Date is a required field.")])

    grade = StringField(label = "grade", validators = [DataRequired(message = "Grade is a required field.")])

    evaluation_date = StringField(label = "evaluation_date", validators = [DataRequired(message = "Eval date is a required field.")])

    program_id = StringField(label = "program_id", validators = [DataRequired(message = "Program ID is a required field.")])

    evaluator_id = StringField(label = "evaluator_id", validators = [DataRequired(message = "Evaluator ID is a required field.")])

    supervisor_id = StringField(label = "supervisor_id", validators = [DataRequired(message = "Supervisor ID is a required field.")])

    executive_id = StringField(label = "executive_id", validators = [DataRequired(message = "Executive ID is a required field.")])

    organization_id = StringField(label = "organization_id", validators = [DataRequired(message = "Organization ID is a required field.")])

    submit = SubmitField("Create")

class program_form(FlaskForm):

    program_name = StringField(label = "program_name", validators = [DataRequired(message = "Program name is a required field.")])

    department = StringField(label = "department", validators = [DataRequired(message = "Department is a required field.")])

    submit = SubmitField("Create")
