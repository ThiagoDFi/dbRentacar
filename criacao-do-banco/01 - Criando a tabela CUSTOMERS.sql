-- SQLite

-- Crinado a tabela de CUSTOMERS

create table CUSTOMERS (
                ID INTEGER PRIMARY KEY AUTOINCREMENT,
                NAME VARCHAR(128) NOT NULL,
                LASTNAME VARCHAR(155) NOT NULL,
                PHONE VARCHAR(16) NOT NULL,
                EMAIL VARCHAR(32) NOT NULL,
                ADDRESS VARCHAR (200) NOT NULL,
                CITY VARCHAR(54) NOT NULL,
                STATE VARCHAR(2) NOT NULL,
                BIRTH_DATE DATETIME NOT NULL
);

SELECT * FROM CUSTOMERS
