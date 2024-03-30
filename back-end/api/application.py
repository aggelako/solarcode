from datetime import timedelta
import os
from flask_restx import Resource, Namespace, fields
from .. import db
from flask import abort, current_app, request, jsonify, make_response
from ..models.SolarizeApplicationMoney import SolarizeApplicationMoney
from ..models.SolarizeApplicationSpace import SolarizeApplicationSpace


application_ns = Namespace("application", description="A namespace for application")

application_model = application_ns.model(
    "Application",
    {
        "firstName": fields.String(),
        "lastName": fields.String(),
        "afm": fields.String(),
        "moneyToInvest": fields.Integer(),
        "incomeRange": fields.Integer(),
        "street": fields.String(),
        "spaceSize":  fields.Integer(),
        "hasMoney": fields.Boolean(),
        "hasSpace": fields.Boolean()
    },
)

stats_model = application_ns.model(
    "Stats",
    {
        "onlyMoney": fields.Integer(),
        "onlySpace": fields.Integer(),
        "both": fields.Integer(),
        "sumOfMoney": fields.Integer(),
        "sumOfSpace": fields.Integer()
    }
)

@application_ns.route("/create")
class Application(Resource):
    @application_ns.expect(application_model)
    def post(self):
        data = request.get_json()
        if data['hasMoney']:
            new_application = SolarizeApplicationMoney(
                firstName=data['firstName'],
                lastName=data['lastName'],
                afm=data['afm'],
                moneyToInvest=data['moneyToInvest'],
                incomeRange=data['incomeRange'],
                isAccepted=False  # initially set to False
            )
            db.session.add(new_application)
        if data['hasSpace']:
            new_application = SolarizeApplicationSpace(
            firstName=data['firstName'],
            lastName=data['lastName'],
            afm=data['afm'],
            incomeRange=data['incomeRange'],
            street=data['street'],
            spaceSize=data['spaceSize'],
            is_accepted=False  # initially set to False
        )
            db.session.add(new_application)
        db.session.commit()
        return make_response(jsonify({"message": "Application created successfuly"}), 201)

    @application_ns.marshal_with(stats_model)
    def get(self):
        # Query SolarizeApplicationMoney
        money_applications = SolarizeApplicationMoney.query.filter_by(isAccepted=False).all()

        # Query SolarizeApplicationSpace
        space_applications = SolarizeApplicationSpace.query.filter_by(is_accepted=False).all()

        # Count the number of unique 'afm' in the first table
        count_1 = db.session.query(SolarizeApplicationMoney.afm).distinct().count()

        # Count the number of unique 'afm' in the second table
        count_2 = db.session.query(SolarizeApplicationSpace.afm).distinct().count()

        # Count the number of 'afm' that are in both tables
        count_both = db.session.query(SolarizeApplicationMoney.afm).join(SolarizeApplicationSpace, SolarizeApplicationMoney.afm == SolarizeApplicationSpace.afm).distinct().count()
        count_1 -= count_both
        count_2 -= count_both
        sum_of_money = sum(app.moneyToInvest for app in money_applications)
        sum_of_space = sum(app.spaceSize for app in space_applications)
        data = {
            "onlyMoney": count_1,
            "onlySpace": count_2,
            "both": count_both,
            "sumOfMoney": sum_of_money,
            "sumOfSpace": sum_of_space
        }
        return data

