#! /usr/bin/env python
import json
from bottle import Bottle, route, run, static_file, jinja2_template as template, jinja2_view as view
from datetime import date
import smtplib

app = Bottle()
dict_cal = {'today': date.today().strftime("%Y-%m-%d")}



@app.route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='./static/')

@app.route('/')
@app.route('/notifications', name='notifications')
def notifications():
    return template('landing.tpl', cal=dict_cal)

app.run(host='0.0.0.0', port=5004, reloader=True, debug=True)

##
# NOTES : BottlePy and CherryPy
#
# - Useful Links:
# 1) http://stackoverflow.com/questions/28307981/how-to-launch-a-bottle-application-over-a-cherrypy-standalone-web-server
# 2) https://buxty.com/b/2013/12/jinja2-templates-and-bottle/
#
