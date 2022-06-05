# forms

from flask_wtf import FlaskForm
from wtforms import StringField, SubmitField
from wtforms.validators import DataRequired, Email

## when passed as a parameter to a template, an object of this class will be rendered as a regular HTML form
## with the additional restrictions specified for each field
class organization_form(FlaskForm):

    abbreviation = StringField(label = "Abbreviation", validators = [DataRequired(message = "Abbreviation is a required field.")])

    organization_name = StringField(label = "Name", validators = [DataRequired(message = "Name is a required field.")])

    street = StringField(label = "Street", validators = [DataRequired(message = "Street is a required field.")])

    street_number = StringField(label = "Street number", validators = [DataRequired(message = "Street number is a required field.")])

    postal_code = StringField(label = "Postal code", validators = [DataRequired(message = "Postal code is a required field.")])

    city = StringField(label = "City", validators = [DataRequired(message = "City is a required field.")])

    submit = SubmitField("Create")

class researcher_form(FlaskForm):

    first_name = StringField(label = "First name", validators = [DataRequired(message = "First Name is a required field.")])

    last_name = StringField(label = "Last name", validators = [DataRequired(message = "Last Name is a required field.")])

    sex = StringField(label = "Sex", validators = [DataRequired(message = "Sex is a required field.")])

    date_of_birth = StringField(label = "Date of birth", validators = [DataRequired(message = "Date of birth is a required field.")])

    start_date = StringField(label = "Start date", validators = [DataRequired(message = "Start date is a required field.")])

    organization_id = StringField(label = "Organization ID", validators = [DataRequired(message = "Organization ID is a required field.")])

    submit = SubmitField("Create")

class project_form(FlaskForm):

    title = StringField(label = "Title", validators = [DataRequired(message = "Title is a required field.")])

    summary = StringField(label = "Summary", validators = [DataRequired(message = "Summary is a required field.")])

    funds = StringField(label = "Funds", validators = [DataRequired(message = "Funds is a required field.")])

    start_date = StringField(label = "Start date", validators = [DataRequired(message = "Start date is a required field.")])

    end_date = StringField(label = "End date", validators = [DataRequired(message = "End date is a required field.")])

    grade = StringField(label = "Grade", validators = [DataRequired(message = "Grade is a required field.")])

    evaluation_date = StringField(label = "Evaluation date", validators = [DataRequired(message = "Evaluation date is a required field.")])

    program_id = StringField(label = "Program ID", validators = [DataRequired(message = "Program ID is a required field.")])

    evaluator_id = StringField(label = "Evaluator ID", validators = [DataRequired(message = "Evaluator ID is a required field.")])

    supervisor_id = StringField(label = "Supervisor ID", validators = [DataRequired(message = "Supervisor ID is a required field.")])

    executive_id = StringField(label = "Executive ID", validators = [DataRequired(message = "Executive ID is a required field.")])

    organization_id = StringField(label = "Organization ID", validators = [DataRequired(message = "Organization ID is a required field.")])

    submit = SubmitField("Create")

class program_form(FlaskForm):

    program_name = StringField(label = "Name", validators = [DataRequired(message = "Name is a required field.")])

    department = StringField(label = "Department", validators = [DataRequired(message = "Department is a required field.")])

    submit = SubmitField("Create")

class deliverable_form(FlaskForm):

    title = StringField(label = "Title", validators = [DataRequired(message = "Title is a required field.")])

    summary = StringField(label = "Summary", validators = [DataRequired(message = "Summary is a required field.")])

    due_date = StringField(label = "Due date", validators = [DataRequired(message = "Due date is a required field.")])

    project_id = StringField(label = "Project ID", validators = [DataRequired(message = "Project ID is a required field.")])

    submit = SubmitField("Create")

class executive_form(FlaskForm):

    executive_name = StringField(label = "Name", validators = [DataRequired(message = "Name is a required field.")])

    submit = SubmitField("Create")

class university_form(FlaskForm):

    organization_id = StringField(label = "Organization ID")

    budget_from_minedu = StringField(label = "Budget from minedu", validators = [DataRequired(message = "Budget from minedu is a required field.")])

    submit = SubmitField("Create")

class research_center_form(FlaskForm):

    organization_id = StringField(label = "Organization ID")

    budget_from_minedu = StringField(label = "Budget from minedu", validators = [DataRequired(message = "Budget from minedu is a required field.")])

    budget_from_private_acts = StringField(label = "Budget from private acts", validators = [DataRequired(message = "Budget from private acts is a required field.")])

    submit = SubmitField("Create")

class company_form(FlaskForm):

    organization_id = StringField(label = "Organization ID")

    equity = StringField(label = "Equity", validators = [DataRequired(message = "Equity is a required field.")])

    submit = SubmitField("Create")

class phone_number_form(FlaskForm):

    organization_id = StringField(label = "Organization ID", validators = [DataRequired(message = "Organization ID is a required field.")])

    p_number = StringField(label = "Phone number", validators = [DataRequired(message = "Phone number is a required field.")])

    submit = SubmitField("Create")

class scientific_field_form(FlaskForm):

    scientific_field_name = StringField(label = "Name", validators = [DataRequired(message = "Name is a required field.")])

    submit = SubmitField("Create")

class works_on_form(FlaskForm):

    project_id = StringField(label = "Project ID", validators = [DataRequired(message = "Project ID is a required field.")])

    researcher_id = StringField(label = "Researcher ID", validators = [DataRequired(message = "Researcher ID is a required field.")])

    submit = SubmitField("Create")

class focuses_on_form(FlaskForm):

    project_id = StringField(label = "Project ID", validators = [DataRequired(message = "Project ID is a required field.")])

    scientific_field_name = StringField(label = "Scientific field", validators = [DataRequired(message = "Scientific field is a required field.")])

    submit = SubmitField("Create")
