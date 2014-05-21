#!/usr/bin/python
#-*- coding: utf-8 -*-
import MySQLdb


if __name__ == "__main__":

	connector = MySQLdb.connect(host="192.168.30.10", db="personal", user="vagrant", passwd="vagrant", charset="utf8")
	cursor = connector.cursor()
	cursor.execute("SELECT * FROM info")
	result = cursor.fetchall()

	print 'Content-Type: text/html\n'
	print '<html>'
	print '<title>Hello Ptyhon</title>'
	print '<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">'
	print '<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">'
	print '<link rel="stylesheet" href="//bootswatch.com/cerulean/bootstrap.min.css">'
	print '<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>'
	print '<body>'
	print '<div class="navbar navbar-default">'
	print '<div class="navbar-header">'
	print '<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">'
	print '<span class="icon-bar"></span>'
	print '<span class="icon-bar"></span>'
	print '<span class="icon-bar"></span>'
	print '</button>'
	print '<a class="navbar-brand" href="#">Wakamonog Sample</a>'
	print '</div>'
	print '</div>'
	print '<div class="container">'
	print '<div class="row">'
	print '<div class="panel panel-primary">'
	print '<div class="panel-heading">Loading result</div>'
	print '<div class="panel-body">'
	print '<table class="table table-striped table-hover">'
	print '<thead>'
	print '<tr>'
	print '<th>#</th>'
	print '<th>Name</th>'
	print '<th>Sex</th>'
	print '<th>Mail</th>'
	print '<th>Birthday</th>'
	print '</tr>'
	print '</thead>'
	print '<tbody>'

	for row in result:
		print '<tr>'
		print "<td>" + str(row[0]) + "</td>"
		print "<td>" + str(row[2]) + "</td>"

		if str(row[3]) == "M":
			print '<td>Man</td>'
		else:
			print '<td>Woman</td>'
			
		print "<td>" + str(row[4]) + "</td>"
		print "<td>" + str(row[5]) + "</td>"
		print '</tr>'

	print '</tbody>'
	print '</table>'
	print '</div>'
	print '</div>'
	print '</div>'
	print '</div>'
	print '</div>'
	print '</body>'
	print '</html>'

	cursor.close()
	connector.close()
