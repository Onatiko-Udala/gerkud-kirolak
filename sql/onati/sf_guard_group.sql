SET foreign_key_checks = 0;

TRUNCATE TABLE sf_guard_group;
INSERT INTO `sf_guard_group` (`id`, `description`, `created_at`, `updated_at`) VALUES
	(1, NULL, '2022-11-14 00:00:00', '2022-11-14 00:00:00'),
	(2, NULL, '2022-11-14 00:00:00', '2022-11-14 00:00:00');

TRUNCATE TABLE sf_guard_group_translation;
INSERT INTO `sf_guard_group_translation` (`id`, `name`, `lang`) VALUES
	(1, 'Zubikoa', 'es'),
	(1, 'Zubikoa', 'eu'),
	(2, 'Besteak', 'es'),
	(2, 'Besteak', 'eu');

SET foreign_key_checks = 1;