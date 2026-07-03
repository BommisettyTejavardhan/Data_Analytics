import mysql.connector as mycon

mydb = mycon.connect(
    host="localhost",
    user="root",
    password="r00t1234"
)

mycursor = mydb.cursor()

mycursor.execute("SHOW DATABASES")
for db in mycursor:
    print(db)