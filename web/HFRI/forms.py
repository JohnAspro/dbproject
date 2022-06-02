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
