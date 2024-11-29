import mysql.connector

def print_user(user)

config = {
    "host": "127.0.0.1",
    "port": "3306",
    "database": "hello_mysql",
    "user": "root",
    "password": "123456789"
}

connection = mysql.connector.connect(**config)
cursor = connection.cursor()

query = "select * from users where name='" + user + "'"
cursor.execute(query)
result = cursor.fetchall()


for row in result:
    print(row)

cursor.close()
connection.close()

print_user("Brais")