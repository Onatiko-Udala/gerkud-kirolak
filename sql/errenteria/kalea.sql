SET foreign_key_checks = 0;

TRUNCATE TABLE kalea;
INSERT INTO `kalea` (`id`, `barrutia_id`, `izena`, `google`) VALUES
	(121, 12, 'Txirrita - Maleo', NULL),
	(181, 18, 'ZZ_Genérico', NULL),
	(1101, 5, 'Goiko Kalea / C. Arriba', 'Calle de Arriba'),
	(1103, 5, 'Herriko Plaza', 'Calle de la Magdalena, 1'),
	(1104, 5, 'Elizako Kalea', 'Calle de la Iglesia'),
	(1105, 5, 'Madalen Kalea', 'Calle de la Magdalena'),
	(1106, 5, 'Erdiko Kalea / C. Medio', 'Calle del Medio'),
	(1107, 5, 'Miguel Alduntzin', 'Calle de Miguel Alduncin'),
	(1108, 5, 'Orereta', 'Calle de Orereta'),
	(1109, 5, 'Pablo Iglesias', 'Avenida de Pablo Iglesias'),
	(1110, 5, 'Santa Klara', 'Calle de Santa Clara'),
	(1111, 5, 'Antontxu Sainz Enparantza', NULL),
	(1201, 5, 'Kapitanenea', 'Calle de Kapitanenea'),
	(1202, 10, 'Kristobal Gamon', 'Calle de Cristóbal Gamón'),
	(1203, 5, 'Fernandez de Landa', 'Plaza de Fernández de Landa'),
	(1204, 5, 'Gamon, Alameda de', 'Alameda de Gamón'),
	(1207, 10, 'Askatasunaren Martiriak', 'Avenida de los Mártires de la Libertad'),
	(1209, 5, 'Santxoenea', 'Santxoenea Kalea'),
	(1210, 5, 'Santa Maria Kalea', 'Calle de Santa María'),
	(1211, 10, 'Urantzu', 'Uranzu Kalea'),
	(1212, 5, 'Biteri', 'Calle de Viteri'),
	(1213, 10, 'Zamalbide', 'Calle de Zamalbide'),
	(1214, 10, 'Zubiaurre', 'Zubiaurre Kalea'),
	(1301, 5, 'Foru Plaza', 'Plaza de los Fueros'),
	(1302, 8, 'Gaztaño', 'Gaztaño Auzoa'),
	(1304, 5, 'Maria Lezo', 'María Lezo Kalea'),
	(1401, 6, 'Aizpitarte Pasabidea', 'Pasaje de Aitzbitarte'),
	(1402, 6, 'Alexander Fleming', 'Alexander Fleming Kalea'),
	(1403, 6, 'Fanderia Pasealekua', 'Fanderia Etorbidea'),
	(1404, 6, 'Lartzabal', 'Larzabal'),
	(1406, 6, 'Salk eta Sabin', 'Salk eta Sabín Kalea'),
	(1407, 5, 'Tomas Lopez', 'Calle de Tomás López'),
	(1408, 6, 'Gabierrota Pasealekua', 'Gabierrota Pasealekua'),
	(1501, 5, 'Beheko Kalea / C. Abajo', 'Calle de Abajo'),
	(1507, 5, 'Santa Klara Plaza', 'Calle de Santa Clara'),
	(1601, 5, 'Añarbe', 'Añarbe Kalea'),
	(1602, 5, 'Bidasoa', 'Bidasoa Kalea'),
	(1603, 5, 'Lope Isasti', 'Lope de Isasti Kalea'),
	(1604, 5, 'Kaletxiki', 'Txiki Kalea'),
	(1605, 5, 'Martin Etxeberria', 'Martín Etxeberria Kalea'),
	(1606, 5, 'Morronguilleta', 'Calle de Morronguilleta'),
	(1607, 5, 'Oria', 'Oria Kalea'),
	(1608, 5, 'Urola Kalea', 'Urola Kalea'),
	(1610, 5, 'Xenpelar', 'Xenpelar Kalea'),
	(1620, 5, 'Koldo Mitxelena Plaza', 'Koldo Mitxelena Plaza'),
	(1702, 7, 'Parke', 'Parkeko Kalea'),
	(1801, 7, 'Aizkorri Plaza', 'Plaza del Aitzgorri'),
	(1803, 7, 'Ganbo Plaza', 'Plaza de Ganbo'),
	(1804, 7, 'Miguel Zabaleta', 'Calle de Miguel Zabaleta'),
	(1805, 7, 'Urbia Plaza', 'Urbia Plaza'),
	(1806, 7, 'Yanci', 'Calle Yanci'),
	(1807, 12, 'Masti Loidi', 'Masti-Loidi Industrialdea'),
	(1901, 5, 'Alfonso XI.aren Kalea', 'Alfonso XI Kalea'),
	(1903, 5, 'Francisco Gazkue', 'Francisco Gazkue Kalea'),
	(1904, 5, 'Jose Erbiti', 'José Erviti Kalea'),
	(1906, 5, 'Segundo Ispizua', 'Segundo Izpizua Kalea'),
	(1907, 5, 'Vicente Elicegi', 'Vicente Elizegi Kalea'),
	(2001, 2, 'Alaberga', 'Irumugarrieta Kalea'),
	(2002, 5, 'Juan Olazabal', 'Calle de Juan Olazábal'),
	(2103, 4, 'Kaputxinoa Gaina', 'Capuchinos Puerto'),
	(2201, 9, 'Donostia - S.Sebastian', 'Donostia-San Sebastián Kalea'),
	(2202, 9, 'Iztieta Pasealekua', 'Iztieta Pasealekua'),
	(2203, 9, 'Lezo Pasealekua', 'Lezo Pasealekua'),
	(2205, 9, 'Pasaia', 'Pasaia Kalea'),
	(2301, 9, 'Diputazio Plaza', 'Plaza de la Diputación'),
	(2303, 9, 'Hondarribia', 'Hondarribia Kalea'),
	(2304, 9, 'Irun', 'Irun Kalea'),
	(2307, 9, 'Oiartzun', 'Oiartzun Kalea'),
	(2401, 9, 'Amasa', 'Amasatarren Kalea'),
	(2406, 9, 'Astigarraga', 'Astigarraga Kalea'),
	(2502, 7, 'Jaizkibel', 'Jaizkibel Kalea'),
	(2504, 7, 'Urdaburu', 'Urdaburu Kalea'),
	(2601, 7, 'Ernio', 'Ernio Kalea'),
	(2602, 7, 'Irumugarrieta', 'Irumugarrieta Kalea'),
	(2603, 7, 'Larrunarri', 'Larrunarri Kalea'),
	(2604, 7, 'Mandoegi', 'Mandoegi Kalea'),
	(2605, 7, 'Murumendi', 'Murumendi Kalea'),
	(2701, 7, 'Aralar Plaza', 'Urbasa Kalea'),
	(2901, 1, 'Monja Agustindarren Etorbidea', 'Avenida de las Agustinas'),
	(2902, 1, 'Atarieder', 'Atari Eder Kalea'),
	(2903, 1, 'Elias Salaberria', 'Elías Salaberria Kalea'),
	(2904, 1, 'Hombrados Oñatibia', 'Hombrados Oñatibia Kalea'),
	(2905, 1, 'Markola Etorbidea', 'Markola Etorbidea'),
	(2907, 1, 'Resurreccion M. Azkue', 'Resurrección María de Azkue Etorbidea'),
	(3001, 10, 'Olibet', 'Lugar Barrio Olibet, 5'),
	(3201, 11, 'Arditurri', 'Arditurri Kalea'),
	(3204, 11, 'Pontika', 'Pontika Kalea'),
	(3402, 3, 'Jesus Guridi', 'Jesús Guridi Kalea'),
	(3403, 3, 'Juan C. Arriaga', 'Juan Crisóstomo Arriaga Kalea'),
	(3404, 3, 'Julian Lavilla', 'Julián Lavilla Kalea'),
	(3405, 3, 'Norberto Almandoz', 'Norberto Almandoz Kalea'),
	(3501, 3, 'Beraun', 'Beraun Kalea'),
	(3601, 3, 'Aita Donostia', 'Aita Donostia Kalea'),
	(3603, 3, 'Maurice Ravel', 'Maurice Ravel Kalea'),
	(3604, 3, 'San Marko', 'San Marcos Kalea'),
	(3701, 3, 'Aldakoenea', 'Aldakoenea Kalea'),
	(3702, 3, 'Isidro Antsorena', 'Isidro Ansorena Kalea'),
	(3703, 3, 'Jose M. Usandizaga', 'José María Usandizaga Kalea'),
	(3704, 3, 'Luis Mariano Plaza', 'Luis Mariano Plaza'),
	(3801, 4, 'Sorgintzulo', 'Sorgintxulo Kalea'),
	(3901, 4, 'Basanoaga', 'Basanoaga Kalea'),
	(3903, 4, 'Versalles', 'Versalles Kalea'),
	(3904, 4, 'Esnabide', 'Esnabide Kalea'),
	(6001, 10, 'Gernika Plaza', 'Zubiaurre Kalea'),
	(6002, 6, 'Evaristo Bozas Plaza', 'Alexander Fleming Kalea'),
	(6003, 5, 'Zabaleta Anaien Kalea', 'Zabaleta Anaiaren Kalea'),
	(6004, 7, 'Aiako Harria', 'Aiako Harria Kalea'),
	(6005, 7, 'Geltokiko Kalea', 'Apeadero Kalea'),
	(6006, 14, 'San Marko Gunea', 'Camino de San Marcos'),
	(6007, 14, 'Zentolen Gunea', 'Zentolen Berri'),
	(6008, 14, 'Zamalbide Gunea', NULL),
	(6009, 14, 'Aldura Gunea', NULL),
	(6010, 11, 'Urbasa', 'Calle de Urbasa'),
	(6011, 4, 'Peninsula Capuchinos', 'Capuchinos Kaia'),
	(6012, 5, 'Ikutza Kortsarioa', 'Ikutza Korsarioaren Kalea'),
	(6013, 5, 'Musika Plaza', 'Martín Etxeberria Kalea'),
	(6014, 5, 'Senidetutako Herrien Plaza / Pueblos Hermanados', 'Urbasa Kalea'),
	(6015, 4, 'Valverde Antonio, Plaza', NULL),
	(6016, 4, 'Fuentepelayo Plaza', 'Sorgintxulo Kalea'),
	(6017, 6, 'Touring Etorbidea', 'Touring Etorbidea'),
	(6018, 6, 'Dolores Ibarruri Zumardia', 'Dolores Ibárruri Zumardia'),
	(6019, 6, 'Dario Regoyos', 'Darío Regoyos Kalea'),
	(6020, 6, 'Garcia Lorca', 'García Lorca Kalea'),
	(6021, 6, 'Vicente Cobreros', 'Vicente Cobreros Kalea'),
	(6022, 5, 'Agirre Lehendakariaren Plaza', 'Calle de Abajo'),
	(6023, 5, 'Andoni Korta', 'Andoni Korta Kalea'),
	(6024, 5, 'Jaurtarkol Plaza', 'Plaza de Jautarkol'),
	(6025, 5, 'Xabier Olaskoaga Plaza', 'Xabier Olaskoaga Plaza'),
	(6026, 10, 'Ugarritza Etorbidea', 'Zubiaurre Kalea'),
	(6027, 5, 'Zapirain Anaien Kalea', 'Zapirain Anaien Kalea'),
	(6028, 5, 'Pelotari Kalea', 'Pelotarien Kalea'),
	(6029, 3, 'Monroy Plaza', 'San Marcos Kalea, 1'),
	(6030, 11, 'Jose Migel Barandiaran', 'María Lezo Kalea'),
	(6031, 5, 'Bittor Idiazabal', 'Bittor Idiazabal Kalea'),
	(6032, 11, 'Tulle', 'Tulle Kalea'),
	(6033, 1, 'Lousada', 'Lousada Kalea'),
	(6034, 5, 'Txirrita Parkea', 'Zapirain Anaien Kalea'),
	(6035, 5, 'Arramendi Pasealekua', 'Tobar Berri Baserria'),
	(6037, 5, 'Santa Clara, Plaza', NULL),
	(6038, 3, 'Sarriegi Plaza', 'Sarriegi Plaza'),
	(6039, 5, 'Gaztelutxo, Parkea', NULL),
	(6040, 5, 'Urola', 'Urola Kalea'),
	(6041, 4, 'Zamarreño Jose Manuel, Plaza', NULL),
	(6043, 1, 'Erramun Astibia', 'Resurrección María de Azkue Etorbidea'),
	(6044, 11, 'Rioja Glorieta', NULL),
	(6045, 1, 'Vicente Zapirain', 'Markola Etorbidea'),
	(6046, 6, 'Bakearen Aldeko Parkea', ' De La Paz Parkea'),
	(6047, 3, 'Glorieta Extremadura', NULL),
	(6048, 9, 'Glorieta Galicia', NULL),
	(6049, 2, 'Glorieta Navarra', NULL),
	(6050, 3, 'Josep Juni Plaza', 'Josep Juni Plaza'),
	(6051, 5, 'Rioja, Glorieta', NULL),
	(6052, 10, 'Glorieta Castilla La Mancha', NULL),
	(6053, 12, 'Egiburuberri', 'Egiburuberri Pasealekua'),
	(6054, 8, 'Gaztaño Pasalekua', 'Gaztaño Auzoa'),
	(6055, 11, 'Arditurri Plaza', 'Arditurri Kalea'),
	(6057, 14, 'Sagardiburu', NULL),
	(6058, 14, 'San Marcos carretera', NULL),
	(6060, 1, 'Jorge Oteiza, Paseo', 'Jorge Oteiza Ibilbidea'),
	(6061, 14, 'Añabitarte Kalea', 'Anabitarte Bidea'),
	(6063, 1, 'Glorieta Andalucía', NULL),
	(6064, 1, 'Parque Eduardo Chillida', NULL),
	(6065, 11, 'Cataluña, Glorieta', NULL),
	(6066, 7, 'Parque de Galtzaraborda', NULL),
	(6067, 14, 'Añabitarte, Villas', NULL),
	(9050, 14, 'Listorreta Gunea', NULL),
	(9051, 14, 'Zona Añarbe', NULL),
	(21208, 2, 'Nafarroa Hiribidea 81', 'Nafarroa Etorbidea'),
	(41701, 4, 'Galtzaraborda Etorbidea 69-105', 'Galtzaraborda Etorbidea'),
	(51208, 5, 'Nafarroa Hiribidea 23-69', 'Nafarroa Etorbidea'),
	(60361, 3, 'Pablo Sorozabal Plaza', 'Pablo Sorozabal Plaza'),
	(60431, 5, 'Galicia, Glorieta', NULL),
	(60451, 8, 'Parque de Arramendi', 'Arramendi Pasealekua'),
	(60541, 5, 'Tellerialde Plaza', 'Tellerialde Plaza'),
	(60572, 2, 'Parque de Alaberga', NULL),
	(60611, 8, 'Zona de Arramendi', NULL),
	(61208, 6, 'Nafarroa Hiribidea 2-19', 'Nafarroa Etorbidea'),
	(71701, 7, 'Galtzaraborda, Avda. de 1-61', 'Galtzaraborda Etorbidea'),
	(91208, 9, 'Nafarroa Hiribidea 26-32', 'Nafarroa Etorbidea'),
	(101208, 10, 'Nafarroa Hiribidea s/n,14', 'Nafarroa Etorbidea');

SET foreign_key_checks = 1;
