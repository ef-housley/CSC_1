
CREATE TABLE furnizori
(idf INT(5), numef VARCHAR(50), adresa VARCHAR(50));
CREATE TABLE piese
(idp INT(5),numep VARCHAR(25), culoare VARCHAR(50)
);
CREATE TABLE catalog
(idf INT(5),idp INT(5),pret VARCHAR(30));
CREATE TABLE comenzi
(idc INT(5),idf INT(5),idp INT(5),cantitate INT(5));
ALTER TABLE furnizori
ADD CONSTRAINT c_furnizori_pk PRIMARY KEY(idf);
ALTER TABLE piese
ADD CONSTRAINT c_piese_pk PRIMARY KEY(idp);

ALTER TABLE catalog
ADD CONSTRAINT c_catalog_fk_idf FOREIGN KEY(idf) REFERENCES furnizori(idf);
ALTER TABLE catalog
ADD CONSTRAINT c_catalog_fk_idp FOREIGN KEY(idp) REFERENCES piese(idp);

ALTER TABLE comenzi
ADD CONSTRAINT c_comenzi_pk PRIMARY KEY(idc);
ALTER TABLE comenzi
ADD CONSTRAINT c_comenzi_fk_idf FOREIGN KEY(idf) REFERENCES furnizori(idf);
ALTER TABLE comenzi
ADD CONSTRAINT c_comenzi_fk_idp FOREIGN KEY(idp) REFERENCES piese(idp);
ALTER TABLE catalog
ADD(currency VARCHAR(5));


INSERT INTO piese VALUES(100, 'piulita', 'negru');
INSERT INTO piese VALUES(101, 'suruburi', 'alb');
INSERT INTO piese VALUES(102, 'ciocan', 'maro');
INSERT INTO piese VALUES(103, 'masa', 'maro');
INSERT INTO piese VALUES(105, 'lingurita', 'galben');
INSERT INTO piese VALUES(11, 'clementine', 'portocalio');
INSERT INTO furnizori VALUES(1, 'Kevin', '13 Backstreet,Barba');
INSERT INTO furnizori VALUES(2, 'Taylor', '60 Locsta,Barba');
INSERT INTO furnizori VALUES(3, 'Swift', '11 Akaltyn,Barba');
INSERT INTO furnizori VALUES(4, 'John Doe SRL', '23 observator');
INSERT INTO furnizori VALUES(5, 'Damad Kelle', '112 Dejland Berkan');
INSERT INTO furnizori VALUES(13, 'Veronica Baldy', '11 Zorilor');
INSERT INTO furnizori VALUES(16, 'Tomos Adrian', '8 Mengecyan Nesip');
INSERT INTO catalog VALUES(1, 100, 23,'RON');
INSERT INTO catalog VALUES(2, 101, 34,'USD');
INSERT INTO catalog VALUES(1, 102, 15,'EUR');
INSERT INTO catalog VALUES(3, 102, 2125, 'RON');
INSERT INTO catalog VALUES(4, 105, 3469, 'USD');
INSERT INTO catalog VALUES(4, 105, 2469, 'EUR');
INSERT INTO comenzi VALUES(200, 1, 100, 230);
INSERT INTO comenzi VALUES(201,2, 101, 340);
INSERT INTO comenzi VALUES(202,2, 102, 715);
INSERT INTO Comenzi (idc, idf, idp, cantitate) VALUES (13, 12, 11, 14);
INSERT INTO Comenzi (idc, idf, idp, cantitate) VALUES (13, 15, 11, 16);
INSERT INTO Comenzi (idc, idf, idp, cantitate) VALUES (16, 15, 11, 2);

