import mysql.connector as mycon

mydb = mycon.connect(
    host="localhost",
    user="root",
    password="r00t1234",
    database = "School"
)

mycursor = mydb.cursor()

mycursor.execute("""Insert into Students value(1,"A","Madanapalle","Male")""")
print("Inserted succesfully")
for db in mycursor:
    print(db)