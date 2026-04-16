1.
Számold ki, hány különböző film szerepel a jegyek táblában.
SELECT COUNT(DISTINCT film_cim)
FROM jegyek

2.
Számold ki, összesen hány néző volt a 2024-05-04 napon.
SELECT COUNT nezok_szama
FROM jegyek
WHERE datum = ’2024-05-04’

3.
Számold ki, mennyi bevételt hozott összesen a Batman film.
SELECT COUNT (nezok_szama * ar)
FROM jegyek
WHERE cim = ’Batman’

4.
Kérdezd le a legnagyobb nézőszámot a táblából.
SELECT MAX(nezok_szama)
FROM jegyek

5.
Kérdezd le a legkisebb nézőszámot a táblából.
SELECT MIN(nezok_szama)
FROM jegyek

6.
Számold ki a Dune film vetítéseinek átlagos nézőszámát.
SELECT AVG(nezok_szama)
FROM jegyek
WHERE cim = ’Dune’

7.
Írd ki a 4 legdrágább vetítést úgy, hogy csak a film_cim, ar és datum mezők jelenjenek meg.
SELECT film_cim, datum, ar
FROM jegyek
ORDER BY ar DESC
LIMIT 4;

8.
Számold ki, összesen hány néző volt az 1-es teremben.
SELECT SUM(nezok_szama)
FROM jegyek
WHERE terem = 1

9.
Számold ki, mennyi volt az összbevétel a 2024-05-05 napon.
SELECT SUM(nezok_szama * ar)
FROM jegyek
WHERE datum = '2024-05-05'

10.
Írd ki annak a filmnek a címét és árát, amelyikhez a legmagasabb jegyár tartozik.
SELECT film_cim, ar
FROM jegyek
ORDER BY ar DESC
Limit 1 
Komplexebb feladatok

11.
Melyik teremben volt összesen a legtöbb néző?
SELECT terem
FROM jegyek
GROUP BY terem
ORDER BY SUM(nezok_szama) DESC
Limit 1;

12.
Melyik napon volt a legkisebb összbevétel?
SELECT datum
FROM jegyek
GROUP BY datum
ORDER BY SUM(nezok_szama*ar) ASC
Limit 1

13.
Számold ki, egy átlagos vetítésen hány néző volt, de csak azoknál a vetítéseknél, ahol legalább 100 néző volt.
SELECT AVG(nezok_szama)
FROM jegyek
WHERE nezok_szama > 100

14.
Írd ki a 3 legnagyobb nézőszámú vetítést.
SELECT film_cim, nezok_szama, datum
FROM jegyek
ORDER BY nezok_szama DESC
LIMIT 3

15.
Melyik filmnél volt összesen a legtöbb néző?
SELECT film_cim
FROM jegyek
GROUP BY film_cim
ORDER BY SUM(nezok_szama) DESC
LIMIT 1
