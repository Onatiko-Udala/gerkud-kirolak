SET foreign_key_checks = 0;

TRUNCATE TABLE eraikina;
INSERT INTO `eraikina` (`id`, `izena`, `barrutia_id`, `auzoa_id`, `longitudea`, `latitudea`) VALUES
	(1, 'Sarrera', 1, 1, -1.898085, 43.312866),
	(2, 'Harrera pasilloak', 1, 1, -1.898616, 43.312840),
	(3, 'Igerilekuko eskailerak (Harmailak)', 1, 2, -1.899269, 43.311898),
	(4, 'Igerilekuko eskailerak (Hall)', 1, 2, -1.901400, 43.314145),
	(5, 'Pasilloa', 1, 3, -1.901031, 43.313629),
	(6, 'A aldagela', 1, 3, -1.904199, 43.311146),
	(7, 'Eskailerak tenisera', 1, 4, -1.893001, 43.310608),
	(8, 'Igogailua tenisera', 1, 4, -1.900571, 43.311671),
	(9, 'Sarbidea, eskailerak eta belargunea', 2, 5, -1.900532, 43.311850),
	(10, 'Takila, zaborgunea eta markagailua', 2, 5, -1.906151, 43.312412),
	(11, 'Aldagela zaharrak orokorreak', 2, 6, -1.893966, 43.308582),
	(12, 'Aldagela zaharra 6', 2, 6, -1.903516, 43.305328),
	(13, 'Aldagela berriak orokorreak', 2, 7, -1.902665, 43.304892),
	(14, 'Fisio gela', 2, 7, -1.900518, 43.312806),
	(15, 'Taberna orokorrean', 2, 8, -1.901630, 43.312435),
	(16, 'Sarrera 2', 2, 8, -1.903731, 43.311294);

SET foreign_key_checks = 1;
