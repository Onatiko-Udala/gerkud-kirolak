SET foreign_key_checks = 0;

TRUNCATE TABLE barrutia;
INSERT INTO `barrutia` (`id`, `izena`) VALUES
	(1, 'Zubikoa'),
	(2, 'Azkoagain'),
	(3, 'Larraña'),
	(4, 'Ur uhinen parkea');

SET foreign_key_checks = 1;
