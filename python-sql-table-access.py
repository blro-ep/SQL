import mysql.connector

# Verbindungsinformationen
config = {
    'user': 'root',  # Mit MySQL-Benutzernamen ersetzen
    'password': 'root',  # Passwort ersetzen
    'host': '127.0.0.1',         # IP-Adresse/Hostname des DB-Servers
    'database': 'dbtrx',  # Namen der Datenbank angeben
    'raise_on_warnings': True
}

TABLE_NAME = "Kunden"

try:
    # Verbindung zur Datenbank herstellen
    conn = mysql.connector.connect(**config)

    # Cursor erstellen
    cursor = conn.cursor()

    # SQL-Anfrage ausführen
    cursor.execute(f"SELECT * FROM {TABLE_NAME}")

                                                            # field_names = [i[0] for i in cursor.description]
                                                            # print("Feldnamen:", field_names)

    # Ergebnisse ausgeben
    print(f"Daten in '{TABLE_NAME}':")
    for row in cursor.fetchall():
        print(row)
                                                            #    print(f"{field_names[0]}: {row[0]}, {field_names[1]}: {row[1]}")

except mysql.connector.Error as err:
    print(f"Fehler: {err}")

finally:
    # Verbindung schließen
    if conn.is_connected():
        cursor.close()
        conn.close()
        print("Verbindung zur Datenbank wurde geschlossen.")
