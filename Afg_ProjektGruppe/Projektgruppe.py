import mysql.connector

# Verbindungsinformationen
config = {
    'user': 'root',  # Mit MySQL-Benutzernamen ersetzen
    'password': 'root',  # Passwort ersetzen
    'host': '127.0.0.1',         # IP-Adresse/Hostname des DB-Servers
    'database': 'projektgruppen',  # Namen der Datenbank angeben
    'raise_on_warnings': True
}

try:
    # Verbindung zur Datenbank herstellen mit obigen Vorgaben
    conn = mysql.connector.connect(**config)

    # Cursor erstellen
    cursor = conn.cursor()

    # SQL-Anfrage ausführen mittels Cursor
    cursor.execute(f"SELECT * FROM Kunden")

    for row in cursor.fetchall():
        print(row)

except mysql.connector.Error as err:
    print(f"Fehler: {err}")

finally:
    # Verbindung schließen
    if conn.is_connected():
        cursor.close()
        conn.close()
        print("Verbindung zur Datenbank wurde geschlossen.")