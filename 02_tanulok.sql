1.
Írd ki az összes tanulót a 10.B osztályból!
SELECT nev FROM tanulok
WHERE osztaly = ’10.B’

2.
Írd ki azoknak a nevét és átlagát, akiknek az átlaga nagyobb, mint 4.0!
SELECT nev, atlag FROM tanulok
WHERE atlag > 4.0

3.
Listázd ki az összes különböző osztályt!
SELECT DISTINCT osztaly FROM tanulok

4.
Írd ki a tanulókat átlag szerint növekvő sorrendben!
SELECT nev FROM tanulok
ORDER BY atlag ASC

5.
Írd ki a 4.0 feletti tanulókat csökkenő sorrendben!
SELECT nev, atlag FROM tanulok
WHERE atlag > 4.0
ORDER BY atlag DESC
