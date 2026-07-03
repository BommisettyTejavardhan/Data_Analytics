import mysql.connector as mycon

mydb = mycon.connect(
    host="localhost",
    user="root",
    password="r00t1234"
)

if mydb.is_connected():
    print("Successfully connected to MySQL database!")

mycursor = mydb.cursor()
mycursor.execute("SHOW DATABASES")

for db in mycursor:
    print(db)