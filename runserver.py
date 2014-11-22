#!/usr/bin/env python
# -*- coding: utf-8 -*-

from flask.ext.script import Manager
from app.database import db
from api.app import app

manager = Manager(app)


@manager.command
def create_database():
    """ Create database """
    db.drop_all()
    db.create_all()


@manager.command
def destroy_database():
    """ Destroy database """
    db.drop_all()


@manager.command
def run():
    """ Run application """
    app.run(debug=True, host='0.0.0.0')

if __name__ == '__main__':
    manager.run()
