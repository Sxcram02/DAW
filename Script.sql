USE fuertesNeomedievales;

SHOW TABLES;

SELECT nombreFortin 
FROM fortin
WHERE diametro >= 20;

SELECT nombreFortin
FROM fortin
WHERE diametro <= 40;

SELECT nombreFortin
FROM fortin
WHERE NOT diametro<= 20;

/*
Aqui se realizan las consultas a 
klas tablas vigilantes
*/

SELECT CONCAT_WS(" ", nombreVig, ap1, ap2) AS nombreCompleto
FROM vigilante
WHERE nombreCompleto LIKE "A%";

SELECT CONCAT_WS(" ", nombreVig, ap1, ap2), dni AS nombreCompletoDni
FROM vigilante 
WHERE  dni LIKE "%E";

SELECT CONCAT_WS(" ", nombreVig, ap1, ap2) AS nombreComlpleto
FROM vigilante
WHERE nombreCompleto LIKE "%W%"

SELECT CONCAT_WS(" ", nombreVig, ap1, ap2) AS nombreComlpleto
FROM vigilante
WHERE ap1 LIKE "_____";

SELECT CONCAT_WS(" ", nombreVig, ap1, ap2) AS nombreComlpleto
FROM vigilante
WHERE ap2 LIKE "%on";

SELECT CONCAT_WS(" ", nombreVig, ap1, ap2), sueldo AS nombreComlpleto
FROM vigilante
WHERE ap1 LIKE "%ar" AND sueldo < 950;

SELECT CONCAT_WS(" ", nombreVig, ap1, ap2), sueldo AS nombreComlpleto
FROM vigilante
WHERE sueldo >= 900 
ORDER BY sueldo DESC, ap1 ASC;
