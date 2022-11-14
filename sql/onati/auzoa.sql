SET foreign_key_checks = 0;

TRUNCATE TABLE auzoa;
INSERT INTO `auzoa` (`id`, `barrutia_id`, `izena`) VALUES
	(1, 1, 'Eraikin berria (0 solairua)'),
	(2, 1, 'Eraikin berria (1 solairua eta solariuma)'),
	(3, 1, 'Kantxa urdiña (pasilloa eta aldagelak, garbiketa gela)'),
	(4, 1, 'Kanpo instalazioak (igogailuak, eskailerak, tenis, Fitbike eta Rooftop)'),
	(5, 2, 'Instalazioaren eremu orokorra'),
	(6, 2, 'Aldagela zaharrak'),
	(7, 2, 'Aldagela berriak'),
	(8, 2, 'Taberna');

SET foreign_key_checks = 1;
