from flask import Flask
from .config import Config
from flask_migrate import Migrate
from .extensions import db
from flask_restx import Api
from .api.application import application_ns
from .api.solarize import solarize_ns
from .models.Solarization import Solarization
from .models.SolarizeApplicationMoney import SolarizeApplicationMoney
from .models.SolarizeApplicationSpace import SolarizeApplicationSpace

def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(config_class)


    db.init_app(app)
    migrate = Migrate(app, db)
    api = Api(app, doc='/docs')
    api.add_namespace(application_ns)
    api.add_namespace(solarize_ns)

    with app.app_context():
        db.create_all()
        db.session.commit()
    return app

# you can put other configuration logic here
