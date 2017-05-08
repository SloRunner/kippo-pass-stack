#!/usr/bin/python
import MySQLdb

db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="kippo",         # your username
                     passwd="Kippo-DB-pass",  # your password
                     db="kippo")        # name of the data base

cur = db.cursor()

cur.execute("SELECT username, password FROM auth")

for row in cur.fetchall():
    print "{}:0:{}".format(row[0], row[1])

db.close()
