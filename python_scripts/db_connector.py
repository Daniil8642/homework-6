# db_connector.py

import sqlite3

def connect_to_database(database_path):
    # Підключення до бази даних
    connection = sqlite3.connect(database_path)
    return connection

def execute_query(connection, query):
    # Виконання SQL-запиту
    cursor = connection.cursor()
    cursor.execute(query)
    connection.commit()
    return cursor.fetchall()
