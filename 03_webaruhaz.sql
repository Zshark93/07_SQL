1.
Írd ki azokat a termékeket, amelyek:
•	elektronikai kategóriába tartoznak
•	ÉS van raktáron
SELECT nev, kategoria, raktaron_db FROM termekek
WHERE kategoria = „elektronika” AND raktaron_db > 0

2.
Írd ki azokat a termékeket, amelyek:
•	bútorok
•	VAGY drágábbak, mint 50 000
SELECT nev, ar FROM termekek
WHERE kategoria = „butor” OR ar > 50000

3.
Írd ki azokat a termékeket, amelyek:
•	NEM lakás kategóriájúak
SELECT nev FROM termekek
WHERE NOT kategoria = „lakas” / WHERE kategoria <> „lakas”

4.
Írd ki azokat a termékeket, amelyek:
•	elektronika VAGY bútor
•	ÉS az áruk nagyobb, mint 20 000
SELECT nev FROM termekek
WHERE kategoria = („elektronia” OR „butor”) AND ar > 20000

5.
Írd ki azokat a termékeket, amelyek:
•	nincs raktáron
•	VAGY az áruk kisebb, mint 10 000
SELECT nev FROM termekek
WHERE raktaron_db = 0 OR ar < 10000
