

# Iskola

```sql
CREATE DATABASE IF NOT EXISTS iskola;
USE iskola;

DROP TABLE IF EXISTS tanulok;

CREATE TABLE tanulok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    eletkor INT NOT NULL,
    osztaly VARCHAR(10) NOT NULL,
    atlag DECIMAL(3,1) NOT NULL
);

INSERT INTO tanulok (nev, eletkor, osztaly, atlag) VALUES
('Kiss Anna', 16, '10.A', 4.7),
('Nagy Péter', 17, '10.B', 3.9),
('Tóth Réka', 16, '10.A', 4.4),
('Szabó Márk', 15, '9.C', 3.6),
('Varga Dóra', 17, '11.B', 4.9),
('Kovács Levente', 16, '10.C', 4.1),
('Molnár Eszter', 15, '9.A', 4.3),
('Balogh Máté', 17, '11.A', 3.8),
('Horváth Lilla', 16, '10.B', 4.6),
('Juhász Bence', 15, '9.B', 3.5);
```

---
# Webáruház

```sql

CREATE DATABASE IF NOT EXISTS webaruhaz;
USE webaruhaz;

DROP TABLE IF EXISTS termekek;

CREATE TABLE termekek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    ar INT NOT NULL,
    kategoria VARCHAR(50) NOT NULL,
    raktaron_db INT NOT NULL
);

INSERT INTO termekek (nev, ar, kategoria, raktaron_db) VALUES
('Laptop', 250000, 'elektronika', 5),
('Eger', 5000, 'elektronika', 50),
('Szek', 30000, 'butor', 10),
('Asztal', 60000, 'butor', 3),
('Fejhallgato', 20000, 'elektronika', 0),
('Lampa', 15000, 'lakas', 25),
('Monitor', 80000, 'elektronika', 7),
('Polc', 22000, 'butor', 4),
('Telefon', 180000, 'elektronika', 12),
('Szonyeg', 12000, 'lakas', 8);
```

---
# Könyvtár

```sql
CREATE DATABASE IF NOT EXISTS konyvtar;
USE konyvtar;

DROP TABLE IF EXISTS konyvek;

CREATE TABLE konyvek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cim VARCHAR(150) NOT NULL,
    szerzo VARCHAR(100) NOT NULL,
    ev INT NOT NULL,
    mufaj VARCHAR(100) NOT NULL,
    oldalszam INT NULL
);

INSERT INTO konyvek (cim, szerzo, ev, mufaj, oldalszam) VALUES
('Az ajto', 'Szabo Magda', 1987, 'regeny', 280),
('Egri csillagok', 'Gardonyi Geza', 1901, 'tortenelmi regeny', 512),
('A Pal utcai fiuk', 'Molnar Ferenc', 1907, 'ifjusagi regeny', 192),
('Tizedes meg a tobbiek', 'Oszter Sandor', 1965, 'filmregeny', 210),
('Abigel', 'Szabo Magda', 1970, 'ifjusagi regeny', 430),
('Titokzatos tortenet', 'Ismeretlen szerzo', 2024, 'regeny', NULL),
('Lathatatlan ember', 'Geza Gardonyi', 1901, 'tortenelmi regeny', 350),
('Esti Kornel', 'Kosztolanyi Dezso', 1933, 'novellafuzer', 180),
('Legy jo mindhalalig', 'Moricz Zsigmond', 1920, 'regeny', 300),
('Utas es holdvilag', 'Szerb Antal', 1937, 'regeny', 270);
```

---
# Mozi

```sql
CREATE DATABASE IF NOT EXISTS mozi;
USE mozi;

DROP TABLE IF EXISTS jegyek;

CREATE TABLE jegyek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    film_cim VARCHAR(100) NOT NULL,
    ar INT NOT NULL,
    nezok_szama INT NOT NULL,
    terem INT NOT NULL,
    datum DATE NOT NULL
);

INSERT INTO jegyek (film_cim, ar, nezok_szama, terem, datum) VALUES
('Avatar', 2500, 120, 1, '2024-05-01'),
('Batman', 2200, 80, 2, '2024-05-01'),
('Titanic', 2000, 150, 1, '2024-05-02'),
('Joker', 2400, 60, 3, '2024-05-02'),
('Avatar', 2500, 90, 2, '2024-05-03'),
('Dune', 2600, 110, 1, '2024-05-03'),
('Inception', 2300, 95, 2, '2024-05-04'),
('Interstellar', 2700, 130, 1, '2024-05-04'),
('Batman', 2200, 70, 3, '2024-05-05'),
('Titanic', 2000, 140, 2, '2024-05-05'),
('Joker', 2400, 75, 1, '2024-05-06'),
('Dune', 2600, 100, 2, '2024-05-06');
```

---
# Sportegyesület

```sql
CREATE DATABASE IF NOT EXISTS sportegyesulet;
USE sportegyesulet;

DROP TABLE IF EXISTS jatekosok;

CREATE TABLE jatekosok (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    eletkor INT NOT NULL,
    poszt VARCHAR(50) NOT NULL,
    fizetes INT NOT NULL,
    csapat VARCHAR(100) NOT NULL,
    mezszam INT NULL,
    serult VARCHAR(10) NOT NULL,
    golok_szama INT NOT NULL
);

INSERT INTO jatekosok (nev, eletkor, poszt, fizetes, csapat, mezszam, serult, golok_szama) VALUES
('Kiss Adam', 22, 'csatar', 450000, 'Villam FC', 9, 'nem', 14),
('Nagy Peter', 25, 'vedo', 390000, 'Villam FC', 4, 'nem', 2),
('Toth Mark', 21, 'kozeppalyas', 410000, 'Delfin SE', 8, 'igen', 5),
('Varga Daniel', 28, 'kapus', 500000, 'Delfin SE', 1, 'nem', 0),
('Horvath Levente', 24, 'csatar', 470000, 'Villam FC', 11, 'nem', 11),
('Balogh Aron', 19, 'vedo', 320000, 'Sasok SC', 3, 'nem', 1),
('Fekete Bence', 23, 'kozeppalyas', 430000, 'Sasok SC', 6, 'igen', 6),
('Molnar Gergo', 26, 'csatar', 520000, 'Delfin SE', 10, 'nem', 17),
('Juhasz Mate', 20, 'vedo', 340000, 'Villam FC', 5, 'nem', 0),
('Papp Roland', 27, 'kozeppalyas', 460000, 'Sasok SC', 7, 'nem', 8),
('Simon Patrik', 22, 'csatar', 440000, 'Sasok SC', 15, 'nem', 9),
('Kovacs Milan', 18, 'vedo', 300000, 'Delfin SE', NULL, 'nem', 0);
```

---
