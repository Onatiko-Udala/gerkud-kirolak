SET foreign_key_checks = 0;

TRUNCATE TABLE mota;
INSERT INTO `mota` (`id`) VALUES
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7);

TRUNCATE TABLE mota_translation;
INSERT INTO `mota_translation` (`id`, `izena`, `lang`) VALUES
	(1, 'Mantenu inzidentzia', 'es'),
	(1, 'Mantenu inzidentzia', 'eu'),
	(2, 'Lan aginduak (OT)', 'es'),
	(2, 'Lan aginduak (OT)', 'eu'),
	(3, 'Hornitzaileak eta zerbitzuak', 'es'),
	(3, 'Hornitzaileak eta zerbitzuak', 'eu'),
	(4, 'Garbiketa (Igerileku eta igerilekuko aldageletan)', 'es'),
	(4, 'Garbiketa (Igerileku eta igerilekuko aldageletan)', 'eu'),
	(5, 'Uraren tratamendua (Igerilekuan)', 'es'),
	(5, 'Uraren tratamendua (Igerilekuan)', 'eu'),
	(6, 'Uraren kalitatea (Igerilekuan)', 'es'),
	(6, 'Uraren kalitatea (Igerilekuan)', 'eu'),
	(7, 'Airearen kalitatea (Igerilekuan)', 'es'),
	(7, 'Airearen kalitatea (Igerilekuan)', 'eu');

SET foreign_key_checks = 1;
