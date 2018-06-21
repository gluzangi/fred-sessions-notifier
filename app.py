#! /usr/bin/env python
import json
from bottle import Bottle, route, run, static_file, jinja2_template as template, jinja2_view as view
# from paste import httpserver
from cherrypy import wsgiserver
from datetime import date

import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

app = Bottle()
dict_cal = {'today': date.today().strftime("%Y-%m-%d")}

@app.route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='./static/')

@app.route('/')
@app.route('/notifications', name='notifications')
def notifications():
    server = smtplib.SMTP('smtp.gmail.com', 587)
#    server.connect("smtp.gmail.com",465)
#    server.login("gelwa.workx@gmail.com", "GibberishGoliath007")
#    msg = "\nHello!" # The /n separates the message from the headers
#    server.sendmail("gelwa.workx@gmail.com", "gerald.luzangi@we.com", msg)
    return template('landing.tpl', cal=dict_cal)

app.run(server='cherrypy', host='0.0.0.0', port=5004, reloader=True, debug=True)
# app.run(server='paste', host='0.0.0.0', port=5004, reloader=True, debug=True)
# app.run(server='gunicorn', workers=4, host='0.0.0.0', port=5004, reloader=True, debug=True)

##
# NOTES : BottlePy and CherryPy
#
# - Useful Links:
# 1) http://stackoverflow.com/questions/28307981/how-to-launch-a-bottle-application-over-a-cherrypy-standalone-web-server
# 2) https://buxty.com/b/2013/12/jinja2-templates-and-bottle/
#
