import mysql.connector

cnx= mysql.connector.connect(
    host = "127.0.0.1",
    port = 3306
    user = "root"
    password = "tobitobi"
)

sesssion1= cnx.cusor()

session1.execute("CREATE IF NOT EXIST alx_book_store")