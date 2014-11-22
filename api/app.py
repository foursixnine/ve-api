# -*- coding: utf-8 -*-
import logging
from logging.handlers import RotatingFileHandler
from flask import Flask, request, g, redirect, url_for, flash
from app.database import db 
# Instantiate application.
app = Flask(__name__)
app.config.from_object('config.DevelopmentConfig')

# Instantiate database object
db.init_app(app)


@app.teardown_appcontext
def commit_on_success(error=None):
    if error is None:
        db.session.commit()


@app.teardown_request
def shutdown_session(exception=None):
    db.session.remove()


def create_logger():
    if not app.debug:
        formatter = logging.Formatter(
            "[%(asctime)s] {%(pathname)s:%(lineno)d} %(levelname)s - %(message)s")
        handler = RotatingFileHandler('fudconlatam.log', maxBytes=10000000, backupCount=5)
        handler.setLevel(logging.DEBUG)
        handler.setFormatter(formatter)
        app.logger.addHandler(handler)

# Import blueprints
# from foo.ui.frontend.views import bp as frontend_bp


# Register blueprints.
# app.register_blueprint(frontend_bp)
