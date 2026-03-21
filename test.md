# MySQL feladat – Webáruház terméknyilvántartás

## A feladat célja

Hozz létre és tölts be egy egyszerű MySQL adatbázist, majd futtass rajta alap lekérdezéseket.

Az adatbázis egy egyszerű **webáruház termékeit** tartalmazza kategóriákkal együtt.

---

# 1. SQL script

Az alábbi kódot mentsd el például `webaruhaz.sql` néven.

```sql
CREATE DATABASE IF NOT EXISTS webaruhaz;
USE webaruhaz;

DROP TABLE IF EXISTS termekek;
DROP TABLE IF EXISTS kategoriak;

CREATE TABLE kategoriak (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(50) NOT NULL
);

CREATE TABLE termekek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nev VARCHAR(100) NOT NULL,
    ar INT NOT NULL,
    raktaron_db INT NOT NULL,
    kategoria_id INT,
    FOREIGN KEY (kategoria_id) REFERENCES kategoriak(id)
);

INSERT INTO kategoriak (nev) VALUES
('Laptop'),
('Monitor'),
('Billentyűzet'),
('Egér');

INSERT INTO termekek (nev, ar, raktaron_db, kategoria_id) VALUES
('Lenovo IdeaPad 3', 189990, 12, 1),
('HP Pavilion 15', 249990, 8, 1),
('Dell Inspiron 14', 219990, 5, 1),
('Samsung 24 colos monitor', 45990, 20, 2),
('LG 27 colos monitor', 69990, 10, 2),
('Acer Nitro monitor', 89990, 6, 2),
('Logitech K120', 5990, 30, 3),
('Redragon Kumara', 15990, 14, 3),
('Genius SlimStar', 7990, 18, 3),
('Logitech B100', 3990, 25, 4),
('A4Tech Bloody', 8990, 11, 4),
('Trust Wireless Mouse', 6990, 16, 4);
```

---

# 2. Útmutató az adatbázis beolvasásához

## MySQL Workbench használatával

### 1. lépés – MySQL Workbench megnyitása

Nyisd meg a **MySQL Workbench** programot, majd csatlakozz a helyi szerverhez.

### 2. lépés – Új SQL fül megnyitása

Kattints az **SQL +** ikonra, hogy új lekérdezési fület nyiss.

### 3. lépés – A script beillesztése

Másold be a fenti teljes SQL kódot az új ablakba.

### 4. lépés – A script futtatása

Kattints a **villám ikonra**.

Ez létrehozza:

* a `webaruhaz` adatbázist,
* a `kategoriak` táblát,
* a `termekek` táblát,
* valamint feltölti őket adatokkal.

### 5. lépés – Ellenőrzés

A bal oldali sávban frissítsd a **Schemas** részt, és meg kell jelennie a `webaruhaz` adatbázisnak.

---

## Beolvasás fájlból

Ha a scriptet `.sql` fájlba mentetted:

### 1. lépés

A menüben válaszd:
**File → Open SQL Script**

### 2. lépés

Nyisd meg a `webaruhaz.sql` fájlt.

### 3. lépés

Kattints a **villám ikonra** a futtatáshoz.

---

# 3. A lekérdezések futtatásának menete

Minden lekérdezést ugyanúgy kell futtatni.

## Lekérdezés futtatása MySQL Workbench-ben

### 1. lépés

Nyiss egy új SQL fület.

### 2. lépés

Írd be vagy másold be a lekérdezést.

### 3. lépés

Jelöld ki a futtatni kívánt lekérdezést.

### 4. lépés

Kattints a **villám ikonra**.

### 5. lépés

Az eredmény lent, a **Result Grid** részben jelenik meg.

---

# 4. Öt alap lekérdezés

## 1. Az összes termék lekérdezése

```sql
USE webaruhaz;

SELECT * FROM termekek;
```

### Mit csinál?

Kilistázza a `termekek` tábla összes sorát és összes oszlopát.

### Hogyan futtasd?

* másold be a lekérdezést,
* jelöld ki,
* kattints a villám ikonra.

---

## 2. Csak a 10 000 Ft-nál drágább termékek

```sql
USE webaruhaz;

SELECT nev, ar
FROM termekek
WHERE ar > 10000;
```

### Mit csinál?

Csak azokat a termékeket jeleníti meg, amelyek ára nagyobb 10 000 forintnál.

### Hogyan futtasd?

* másold be a lekérdezést,
* jelöld ki,
* futtasd a villám ikonnal.

---

## 3. A termékek ár szerinti növekvő sorrendben

```sql
USE webaruhaz;

SELECT nev, ar
FROM termekek
ORDER BY ar ASC;
```

### Mit csinál?

Kilistázza a termékeket úgy, hogy a legolcsóbb legyen legfelül.

### Hogyan futtasd?

* illeszd be a lekérdezést,
* jelöld ki,
* futtasd.

---

## 4. Hány termék van összesen?

```sql
USE webaruhaz;

SELECT COUNT(*) AS termekek_szama
FROM termekek;
```

### Mit csinál?

Megszámolja, hány termék szerepel az adatbázisban.

### Hogyan futtasd?

* másold be a lekérdezést,
* jelöld ki,
* kattints a villám ikonra.

---

## 5. Termékek és kategóriáik megjelenítése

```sql
USE webaruhaz;

SELECT termekek.nev AS termek_neve, kategoriak.nev AS kategoria_neve
FROM termekek
INNER JOIN kategoriak
ON termekek.kategoria_id = kategoriak.id;
```

### Mit csinál?

Összekapcsolja a két táblát, és megmutatja minden termék nevét a saját kategóriájával együtt.

### Hogyan futtasd?

* másold be a lekérdezést,
* jelöld ki,
* futtasd a villám ikonnal.

---

# 5. Rövid összefoglalás a használt SQL utasításokról

## `CREATE DATABASE`

Új adatbázist hoz létre.

## `USE`

Kiválasztja, melyik adatbázissal dolgozunk.

## `CREATE TABLE`

Új táblát hoz létre.

## `INSERT INTO`

Adatokat szúr be a táblába.

## `SELECT`

Adatok lekérdezésére használjuk.

## `WHERE`

Feltételt ad meg.

## `ORDER BY`

Rendezést végez.

## `COUNT()`

Megszámolja a sorokat.

## `INNER JOIN`

Két táblát kapcsol össze közös mező alapján.

---

# MySQL kulcsszavak és operátorok

## 1. Adatbázis- és táblakezelő kulcsszavak

| Kulcsszó / elem        | Mire való?                                           | Példa                                      |
| ---------------------- | ---------------------------------------------------- | ------------------------------------------ |
| `CREATE DATABASE`      | Új adatbázis létrehozása                             | `CREATE DATABASE webaruhaz;`               |
| `IF NOT EXISTS`        | Csak akkor hozza létre az elemet, ha még nem létezik | `CREATE DATABASE IF NOT EXISTS webaruhaz;` |
| `USE`                  | Kiválasztja, melyik adatbázissal dolgozzunk          | `USE webaruhaz;`                           |
| `DROP TABLE`           | Tábla törlése                                        | `DROP TABLE termekek;`                     |
| `DROP TABLE IF EXISTS` | Tábla törlése csak akkor, ha létezik                 | `DROP TABLE IF EXISTS termekek;`           |
| `CREATE TABLE`         | Új tábla létrehozása                                 | `CREATE TABLE kategoriak (...);`           |

---

## 2. Oszlopokhoz és mezőkhöz kapcsolódó kulcsszavak

| Kulcsszó / elem  | Mire való?                            | Példa                               |
| ---------------- | ------------------------------------- | ----------------------------------- |
| `INT`            | Egész szám típusú mező                | `id INT`                            |
| `VARCHAR(50)`    | Szöveges mező, maximum 50 karakterrel | `nev VARCHAR(50)`                   |
| `AUTO_INCREMENT` | Automatikusan növekvő azonosító       | `id INT AUTO_INCREMENT`             |
| `PRIMARY KEY`    | Elsődleges kulcs, egyedi azonosító    | `id INT AUTO_INCREMENT PRIMARY KEY` |
| `NOT NULL`       | A mező nem maradhat üres              | `nev VARCHAR(50) NOT NULL`          |

---

## 3. Kapcsolatokhoz tartozó kulcsszavak

| Kulcsszó / elem | Mire való?                                                        | Példa                        |
| --------------- | ----------------------------------------------------------------- | ---------------------------- |
| `FOREIGN KEY`   | Idegen kulcs megadása, kapcsolat két tábla között                 | `FOREIGN KEY (kategoria_id)` |
| `REFERENCES`    | Megadja, melyik tábla melyik oszlopára hivatkozik az idegen kulcs | `REFERENCES kategoriak(id)`  |

---

## 4. Adatbeszúráshoz kapcsolódó kulcsszavak

| Kulcsszó / elem | Mire való?                       | Példa                          |
| --------------- | -------------------------------- | ------------------------------ |
| `INSERT INTO`   | Új adatok beszúrása a táblába    | `INSERT INTO kategoriak (nev)` |
| `VALUES`        | A beszúrandó értékek felsorolása | `VALUES ('Laptop');`           |

---

## 5. Lekérdezéshez kapcsolódó kulcsszavak

| Kulcsszó / elem | Mire való?                                     | Példa                        |
| --------------- | ---------------------------------------------- | ---------------------------- |
| `SELECT`        | Adatok lekérdezése                             | `SELECT * FROM termekek;`    |
| `FROM`          | Megadja, melyik táblából kérjük le az adatokat | `FROM termekek`              |
| `WHERE`         | Feltétel megadása lekérdezéshez                | `WHERE ar > 10000`           |
| `ORDER BY`      | Rendezés megadása                              | `ORDER BY ar ASC`            |
| `AS`            | Álnév adása oszlopnak vagy táblának            | `COUNT(*) AS termekek_szama` |

---

## 6. Táblák összekapcsolásához tartozó kulcsszavak

| Kulcsszó / elem | Mire való?                                                 | Példa                                      |
| --------------- | ---------------------------------------------------------- | ------------------------------------------ |
| `INNER JOIN`    | Két tábla összekapcsolása közös mező alapján               | `INNER JOIN kategoriak`                    |
| `ON`            | Megadja, milyen feltétellel kapcsolódjon össze a két tábla | `ON termekek.kategoria_id = kategoriak.id` |

---

## 7. Függvények

| Függvény   | Mire való?                 | Példa                            |
| ---------- | -------------------------- | -------------------------------- |
| `COUNT(*)` | Megszámolja a sorok számát | `SELECT COUNT(*) FROM termekek;` |

---

## 8. Rendezési kulcsszavak

| Kulcsszó | Mire való?       | Példa              |
| -------- | ---------------- | ------------------ |
| `ASC`    | Növekvő sorrend  | `ORDER BY ar ASC`  |
| `DESC`   | Csökkenő sorrend | `ORDER BY ar DESC` |

---

## 9. Operátorok

| Operátor | Mire való?             | Példa                                   |
| -------- | ---------------------- | --------------------------------------- |
| `=`      | Egyenlőség vizsgálata  | `termekek.kategoria_id = kategoriak.id` |
| `>`      | Nagyobb mint vizsgálat | `WHERE ar > 10000`                      |

---

## 10. Speciális jelek és jelölések

| Jel / forma | Mire való?                              | Példa                                     |
| ----------- | --------------------------------------- | ----------------------------------------- |
| `*`         | Minden oszlop kiválasztása              | `SELECT * FROM termekek;`                 |
| `()`        | Paraméterek, mezők, értékek felsorolása | `VARCHAR(50)`, `COUNT(*)`, `VALUES (...)` |
| `,`         | Felsorolás elválasztása                 | `nev, ar`                                 |
| `;`         | SQL utasítás lezárása                   | `USE webaruhaz;`                          |
| `.`         | Tábla és oszlop összekapcsolása         | `termekek.nev`                            |
| `' '`       | Szöveges értékek jelölése               | `'Laptop'`                                |

---

# Rövid, egyszerű összefoglaló

| Elem típusa                 | Mire használjuk?                                         |
| --------------------------- | -------------------------------------------------------- |
| Adatbázis-kezelő utasítások | Adatbázis és táblák létrehozására, törlésére             |
| Mezőtípusok                 | Annak megadására, hogy egy oszlop milyen adatot tárol    |
| Megszorítások               | Annak szabályozására, hogy milyen adat kerülhet a mezőbe |
| Lekérdezési kulcsszavak     | Adatok kiolvasására és szűrésére                         |
| Rendezési kulcsszavak       | Az eredmények sorrendjének meghatározására               |
| Kapcsoló kulcsszavak        | Több tábla összekapcsolására                             |
| Operátorok                  | Feltételek megadására                                    |
| Függvények                  | Számolásra, összesítésre                                 |
