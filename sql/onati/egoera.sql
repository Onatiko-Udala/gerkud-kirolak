SET foreign_key_checks = 0;

TRUNCATE TABLE egoera;
INSERT INTO `egoera` (`id`, `kolorea`) VALUES
  (1, '#FFFFFF'),
  (2, '#55ff00'),
  (3, '#FF8002'),
  (4, '#ff0000'),
  (5, '#00FFFF');

TRUNCATE TABLE egoera_translation;
INSERT INTO `egoera_translation` (`id`, `izena`, `lang`) VALUES
  (2, 'Asignada', 'es'),
  (5, 'Baztertua', 'eu'),
  (5, 'Descartada', 'es'),
  (4, 'Eginda', 'eu'),
  (3, 'En proceso', 'es'),
  (4, 'Terminada', 'es'),
  (1, 'Onartu gabe', 'eu'),
  (2, 'Esleitua', 'eu'),
  (3, 'Prozesuan', 'eu'),
  (1, 'Sin aceptar', 'es');

SET foreign_key_checks = 1;
