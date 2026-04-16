1.
Szúrj be egy új könyvet a konyvek táblába az alábbi adatokkal:
•	Cím: Java programozás alapjai
•	Szerző: Kovacs Bela
•	Év: 2020
•	Műfaj: szakmai konyv
•	Oldalszám: 350
INSERT INTO konyvek (cim, szerzo, ev, mufaj, oldalszam)
VALUES
(’ Java programozás alapjai’,’ Kovacs Bela’,2020,’szakmai konyv’,350)

2.
Módosítsd az Abigel műfaját regeny értékre.
UPDATE konyvek
SET mufaj = regeny
WHERE cim = ’Abigel’

3.
Módosítsd az Esti Kornel oldalszámát 200-ra.
UPDATE konyvek
SET oldalszam = 200
WHERE cim = ’Esti Kornel’

4.
Töröld ki a konyvek táblából a Titokzatos tortenet című könyvet.
DELETE FROM konyvek
WHERE cim = 'Titokzatos tortenet'

5.
Szúrj be egy új könyvet a konyvek táblába az alábbi adatokkal:
•	Cím: Elveszett kezirat
•	Szerző: Névtelen
•	Év: 2025
•	Műfaj: regeny
•	Oldalszám: NULL
INSERT INTO konyvek (cim,szerzo,ev,mufaj,oldalszam)
VALUES('Elveszett kézirat','Névtelen',2025,'regeny',NULL)

6.
Kérdezd le azokat a könyveket, amelyeknél az oldalszám hiányzik.
SELECT cim FROM konyvek
WHERE oldalszam IS NULL

7.
Kérdezd le azokat a könyveket, amelyeknél az oldalszám meg van adva.
SELECT cim FROM konyvek
WHERE oldalszam IS NOT NULL
