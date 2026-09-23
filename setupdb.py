# setupbd.py
# Faz o reset e o setup inicial do banco de dados SQLite quando necessário.
# PERIGO! Use isso somente em "devtime".

import sqlite3

connection = sqlite3.connect("database.db")

with open("database.sql", "r", encoding="utf-8") as file:
    sql = file.read()

connection.executescript(sql)

connection.close()

print("Banco de dados preparado cm sucesso!")