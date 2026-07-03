import mysql.connector as mycon

mydb = mycon.connect(
    host="localhost",
    user="root",
    password="r00t1234",
    database = "School"
)

mycursor = mydb.cursor()

mycursor.execute("CREATE TABLE Students(Id INT,Name VARCHAR(40),City VARCHAR(20),Gender VARCHAR(10))")
print("Table created succesfully")
for db in mycursor:
    print(db)