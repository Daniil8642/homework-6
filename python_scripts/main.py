# main.py

from python_scripts import db_connector
from python_scripts import populate_database
from python_scripts import execute_queries
from python_scripts import config  # Додано імпорт модуля config

if __name__ == "__main__":
    # Підключення до бази даних
    connection = db_connector.connect_to_database(config.DATABASE_PATH)

    # Створення та наповнення бази даних
    populate_database.create_and_populate_database(connection)

    # Виконання запитів
    execute_queries.execute_all_queries(connection)

    # Закриття з'єднання з базою даних
    connection.close()
