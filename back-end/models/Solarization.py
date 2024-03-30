from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from .. import db


class Solarization(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    total_money_accepted = db.Column(db.Float, nullable=True)
    total_space_accepted = db.Column(db.Float, nullable=True)
    applications_accepted = db.Column(db.Integer, nullable=True)
    space_covered = db.Column(db.Float, nullable=True)
    energy_produced_in_10_yrs = db.Column(db.Float, nullable=True)
