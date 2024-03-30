from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
from .. import db


class SolarizeApplicationSpace(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    firstName = db.Column(db.String(64), nullable=False)
    lastName = db.Column(db.String(64), nullable=False)
    afm = db.Column(db.String(9), nullable=False)
    incomeRange = db.Column(db.Integer, nullable=False)
    street = db.Column(db.String(64), nullable=False)
    spaceSize = db.Column(db.Integer, nullable=False)
    is_accepted = db.Column(db.Boolean, default=False)
    solarization_id = db.Column(db.Integer, db.ForeignKey('solarization.id'), nullable=True)

db.CheckConstraint('incomeRange >= 1 AND incomeRange <= 5', name='incomeRange_check')
