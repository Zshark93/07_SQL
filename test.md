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

# 6. Diákfeladat

1. Hozd létre az adatbázist a megadott SQL script segítségével.
2. Ellenőrizd, hogy a táblák és az adatok helyesen létrejöttek-e.
3. Futtasd le az 5 megadott lekérdezést.
4. Minden lekérdezés eredményéről készíts képernyőképet.
5. Írd le röviden, hogy szerinted melyik lekérdezés mire való.

---
