#!/usr/bin/python
#-*- coding: utf-8 -*-
import MySQLdb


if __name__ == "__main__":

	connector = MySQLdb.connect(host="192.168.30.10", db="personal", user="vagrant", passwd="vagrant", charset="utf8")
	cursor = connector.cursor()
	cursor.execute("SELECT * FROM info")
	result = cursor.fetchall()

	print "Content-Type: text/html\n"
	print "<html>"
	print "<title>Hello Ptyhon</title>"
	print "<body>"

	for row in result:
		print "===== Hit! =====<br/>"
		print "code -- " + row[2].encode('utf-8') + "<br/>"
		print "name -- " + row[4].encode('utf-8') + "<br/>"

	print "</body>"
	print "</html>"

	cursor.close()
	connector.close()
