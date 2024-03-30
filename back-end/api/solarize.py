from datetime import timedelta
import os
from flask_restx import Resource, Namespace, fields
from .. import db
from flask import abort, current_app, request, jsonify, make_response
from ..models.SolarizeApplicationMoney import SolarizeApplicationMoney
from ..models.SolarizeApplicationSpace import SolarizeApplicationSpace
import pandas as pd
import numpy as np
from ..utils import normalize_and_score_money,normalize_and_score_space, calculate_cost_of_PV,balance_sums

solarize_ns = Namespace("solarize", description="A namespace for solarize")

solarization_model = solarize_ns.model(
    "Solarization",
    {   
        "number_of_applications_accepted" : fields.Integer(),
        "sum_of_money_invested" : fields.Integer(),
        "sum_of_space_invested" : fields.Integer(),
        "energy_production_forested_annualy" : fields.Integer(),
        "co2_emmision_annualy" : fields.Integer()
    },
)

@solarize_ns.route("/run", methods=['POST'])
class Solarization(Resource):
    @solarize_ns.marshal_with(solarization_model)
    def post(self):
        # Query SolarizeApplicationMoney
        money_applications = SolarizeApplicationMoney.query.filter_by(isAccepted=False).all()

        # Query SolarizeApplicationSpace
        space_applications = SolarizeApplicationSpace.query.filter_by(is_accepted=False).all()

        money_data = {
            "id": [app.id for app in money_applications],
            "money_invested": [app.moneyToInvest for app in money_applications],
            "wealth_categorization": [app.incomeRange for app in money_applications]
            }
        df_money_data = pd.DataFrame(money_data)
        scored_money = normalize_and_score_money(df_money_data)

        space_data = {
            "id": [app.id for app in space_applications],
            "squared_meters": [app.spaceSize for app in space_applications],
            "wealth_categorization": [app.incomeRange for app in space_applications]
        }
        df_space_data = pd.DataFrame(space_data)
        scored_space = normalize_and_score_space(df_space_data)

        sum_of_money = sum(app.moneyToInvest for app in money_applications)
        df_space_data = calculate_cost_of_PV(scored_space)
        sum_of_cost = df_space_data['total_cost'].sum()
        results_money, results_space = balance_sums(scored_money , df_space_data)
        print(results_space['total_cost'].sum())

        number_of_applications_accepted = len(results_money) + len(results_space)
        sum_of_money_invested = results_money['money_invested'].sum()
        sum_of_space_invested = results_space['squared_meters'].sum()
        energy_production_forcasted_annualy = 110*sum_of_space_invested #200 KWH ANA TETRAGWNIKO METRO KATHE XRONO
        co2_emmision_annualy = energy_production_forcasted_annualy * 41
        data = {
            "number_of_applications_accepted": number_of_applications_accepted,
            "sum_of_money_invested": sum_of_money_invested,
            "sum_of_space_invested": sum_of_space_invested,
            "energy_production_forested_annualy": energy_production_forcasted_annualy,
            "co2_emmision_annualy": co2_emmision_annualy
            }
        return data







    