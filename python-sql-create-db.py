import mysql.connector
from mysql.connector import Error

# Verbindungsdaten
host = "127.0.0.1"
user = "root"
password = "root"


def create_connection(host_name, user_name, user_password, db_name=None):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password,
            database=db_name
        )
        print("Verbindung zur MySQL Datenbank erfolgreich")
    except Error as e:
        print(f"Der Fehler '{e}' trat auf")
    return connection

def create_database(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        print("Datenbank wurde erfolgreich erstellt")
    except Error as e:
        print(f"Der Fehler '{e}' trat auf")

def create_table(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        print("Tabelle wurde erfolgreich erstellt")
    except Error as e:
        print(f"Der Fehler '{e}' trat auf")

def insert_mitarbeiter(connection, name, abteilung):
    cursor = connection.cursor()
    query = "INSERT INTO mitarbeiter (name, abteilung) VALUES (%s, %s)"
    try:
        cursor.execute(query, (name, abteilung))
        connection.commit()
        print("Datensatz wurde erfolgreich eingefügt")
    except Error as e:
        print(f"Der Fehler '{e}' trat auf")

# Verbindung zur MySQL Server ohne spezifizierte Datenbank
connection = create_connection(host, user, password)

# Datenbank erstellen
create_database_query = "CREATE DATABASE IF NOT EXISTS python_db"
create_database(connection, create_database_query)

# Verbindung zur neu erstellten Datenbank
connection = create_connection(host, user, password, "python_db")

# Tabelle erstellen
create_mitarbeiter_table = """
CREATE TABLE IF NOT EXISTS mitarbeiter (
    mitarbeiter_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    abteilung VARCHAR(50),
    PRIMARY KEY (mitarbeiter_id)
)
"""
create_table(connection, create_mitarbeiter_table)

# Daten einfügen
for element in range(10):
	insert_mitarbeiter(connection, f"Max Mustermann {element}", "IT-Abteilung")

# Verbindung schließen
connection.close()



