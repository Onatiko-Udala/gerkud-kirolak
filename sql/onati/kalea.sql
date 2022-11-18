SET foreign_key_checks = 0;

TRUNCATE TABLE kalea;
INSERT INTO `kalea` (`id`, `izena`, `barrutia_id`, `auzoa_id`, `google`) VALUES
	(1, 'Sarrera', 1, 1, -1.898085),
	(2, 'Harrera pasilloak', 1, 1, -1.898616),
	(3, 'Igerilekuko eskailerak (Harmailak)', 1, 2, -1.899269),
	(4, 'Igerilekuko eskailerak (Hall)', 1, 2, -1.901400),
	(5, 'Pasilloa', 1, 3, -1.901031),
	(6, 'A aldagela', 1, 3, -1.904199),
	(7, 'Eskailerak tenisera', 1, 4, -1.893001),
	(8, 'Igogailua tenisera', 1, 4, -1.900571),
	(9, 'Sarbidea, eskailerak eta belargunea', 2, 5, -1.900532),
	(10, 'Takila, zaborgunea eta markagailua', 2, 5, -1.906151),
	(11, 'Aldagela zaharrak orokorreak', 2, 6, -1.893966),
	(12, 'Aldagela zaharra 6', 2, 6, -1.903516),
	(13, 'Aldagela berriak orokorreak', 2, 7, -1.902665),
	(14, 'Fisio gela', 2, 7, -1.900518),
	(15, 'Taberna orokorrean', 2, 8, -1.901630),
	(16, 'Sarrera', 2, 8, -1.903731);

SET foreign_key_checks = 1;
