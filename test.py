# -*- coding: utf-8 -*- 

import MySQLdb

if __name__ == "__main__":

	connector = MySQLdb.connect(host="192.168.30.10", db="personal", user="vagrant", passwd="vagrant", charset="utf8")
	cursor = connector.cursor()
	cursor.execute("SELECT * FROM info")
	result = cursor.fetchall()

	for row in result:
		print "===== Hit! ====="
		print "code -- " + row[2].encode('utf-8')
		print "name -- " + row[4].encode('utf-8')

	cursor.close()
	connector.close()
