SET foreign_key_checks = 0;

TRUNCATE TABLE sf_guard_group;
INSERT INTO `sf_guard_group` (`id`, `description`, `created_at`, `updated_at`) VALUES
  (1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (3, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (4, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (6, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (7, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (8, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (9, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (10, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (11, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (12, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (13, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (14, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
  (15, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

TRUNCATE TABLE sf_guard_group_translation;
INSERT INTO `sf_guard_group_translation` (`id`, `name`, `lang`) VALUES
  (1, 'Informática', 'es'),
  (1, 'Informatika', 'eu'),
  (2, 'Man-Actividades', 'es'),
  (2, 'Man-Ekintzak', 'eu'),
  (3, 'Man-Agua', 'es'),
  (3, 'Man-Ura', 'eu'),
  (4, 'Man-Asfaltado', 'es'),
  (4, 'Man-Asfaltatzea', 'eu'),
  (5, 'Man-Carpintería', 'es'),
  (5, 'Man-Arotzeria', 'eu'),
  (6, 'Man-Electricidad', 'es'),
  (6, 'Man-Elektrizitatea', 'eu'),
  (7, 'Man-Genérico', 'es'),
  (7, 'Man-Orokorra', 'eu'),
  (8, 'Man-Herrería', 'es'),
  (8, 'Man-Errementeritza', 'eu'),
  (9, 'Man-Jardinería', 'es'),
  (9, 'Man-Lorezaintza', 'eu'),
  (10, 'Man-Oarsoaldea', 'es'),
  (10, 'Man-Oarsoaldea', 'eu'),
  (11, 'Man-Obras', 'es'),
  (11, 'Man-Herrilanak', 'eu'),
  (12, 'Man-Obras varias', 'es'),
  (12, 'Man-Bestelako obrak', 'eu'),
  (13, 'Man-Pintura', 'es'),
  (13, 'Man-Margolaritza', 'eu'),
  (14, 'Man-Volante', 'es'),
  (14, 'Man-Ibiltari', 'eu'),
  (15, 'Udaltzaingoa-Policía Local', 'es'),
  (15, 'Udaltzaingoa', 'eu');

SET foreign_key_checks = 1;
