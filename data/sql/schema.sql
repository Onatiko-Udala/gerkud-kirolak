CREATE TABLE arloa_translation (id BIGINT, izena VARCHAR(255) NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE arloa (id BIGINT AUTO_INCREMENT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE auzoa (id BIGINT AUTO_INCREMENT, barrutia_id BIGINT, izena VARCHAR(255) NOT NULL UNIQUE, INDEX barrutia_id_idx (barrutia_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE azpimota_translation (id BIGINT, izena VARCHAR(255) NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE azpimota (id BIGINT AUTO_INCREMENT, mota_id BIGINT NOT NULL, INDEX mota_id_idx (mota_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE barrutia (id BIGINT AUTO_INCREMENT, izena VARCHAR(255) NOT NULL UNIQUE, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE egoera_translation (id BIGINT, izena VARCHAR(255) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE egoera (id BIGINT AUTO_INCREMENT, kolorea VARCHAR(50) NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE egun_tarteak (id BIGINT AUTO_INCREMENT, minimoa BIGINT UNIQUE NOT NULL, maximoa BIGINT UNIQUE NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ekintza_translation (id BIGINT, mota VARCHAR(255), lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE ekintza (id BIGINT AUTO_INCREMENT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE eraikina (id BIGINT AUTO_INCREMENT, izena VARCHAR(255) NOT NULL, barrutia_id BIGINT, auzoa_id BIGINT, longitudea DOUBLE(18, 6) NOT NULL, latitudea DOUBLE(18, 6) NOT NULL, INDEX barrutia_id_idx (barrutia_id), INDEX auzoa_id_idx (auzoa_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE erlazio_mota_translation (id BIGINT, izena VARCHAR(255) NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE erlazio_mota (id BIGINT AUTO_INCREMENT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE erlazioak (id BIGINT AUTO_INCREMENT, hasiera_id BIGINT NOT NULL, amaiera_id BIGINT NOT NULL, erlazio_mota_id BIGINT, INDEX erlazio_mota_id_idx (erlazio_mota_id), INDEX amaiera_id_idx (amaiera_id), INDEX hasiera_id_idx (hasiera_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE fitxategia (id BIGINT AUTO_INCREMENT, gertakaria_id BIGINT NOT NULL, langilea_id BIGINT, fitxategia VARCHAR(255), deskribapena VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX gertakaria_id_idx (gertakaria_id), INDEX langilea_id_idx (langilea_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE geo (id BIGINT AUTO_INCREMENT, gertakaria_id BIGINT NOT NULL, longitudea DOUBLE(18, 6) NOT NULL, latitudea DOUBLE(18, 6) NOT NULL, zehaztasuna DOUBLE(18, 6), testua VARCHAR(50), geometria_id BIGINT NOT NULL, INDEX gertakaria_id_idx (gertakaria_id), INDEX geometria_id_idx (geometria_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE geometria (id BIGINT AUTO_INCREMENT, mota VARCHAR(50), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE gertakaria (id BIGINT AUTO_INCREMENT, laburpena VARCHAR(255), klasea_id BIGINT, arloa_id BIGINT, mota_id BIGINT, azpimota_id BIGINT, abisuanork TEXT, egoera_id BIGINT DEFAULT 1 NOT NULL, saila_id BIGINT, langilea_id BIGINT, barrutia_id BIGINT, auzoa_id BIGINT, kalea_id BIGINT, kale_zbkia VARCHAR(50), deskribapena TEXT, ixte_data DATETIME, hasiera_aurreikusia DATE, amaiera_aurreikusia DATE, lehentasuna_id BIGINT, jatorrizkosaila_id BIGINT, eraikina_id BIGINT, herritarrena BIGINT, kontaktua_id BIGINT, espedientea VARCHAR(12), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX klasea_id_idx (klasea_id), INDEX arloa_id_idx (arloa_id), INDEX mota_id_idx (mota_id), INDEX azpimota_id_idx (azpimota_id), INDEX barrutia_id_idx (barrutia_id), INDEX auzoa_id_idx (auzoa_id), INDEX kalea_id_idx (kalea_id), INDEX saila_id_idx (saila_id), INDEX langilea_id_idx (langilea_id), INDEX egoera_id_idx (egoera_id), INDEX lehentasuna_id_idx (lehentasuna_id), INDEX jatorrizkosaila_id_idx (jatorrizkosaila_id), INDEX eraikina_id_idx (eraikina_id), INDEX kontaktua_id_idx (kontaktua_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE iruzkina (id BIGINT AUTO_INCREMENT, gertakaria_id BIGINT NOT NULL, langilea_id BIGINT, ekintza_id BIGINT, testua TEXT, publikoa TINYINT(1), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX gertakaria_id_idx (gertakaria_id), INDEX langilea_id_idx (langilea_id), INDEX ekintza_id_idx (ekintza_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE jatorrizko_saila_translation (id BIGINT, izena VARCHAR(255) NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE jatorrizko_saila (id BIGINT AUTO_INCREMENT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE kalea (id BIGINT AUTO_INCREMENT, barrutia_id BIGINT, auzoa_id BIGINT, izena VARCHAR(255) NOT NULL UNIQUE, google VARCHAR(255), INDEX barrutia_id_idx (barrutia_id), INDEX auzoa_id_idx (auzoa_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE klasea_translation (id BIGINT, izena VARCHAR(255) NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE klasea (id BIGINT AUTO_INCREMENT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE kontaktua (id BIGINT AUTO_INCREMENT, izena VARCHAR(255), abizenak VARCHAR(255), nan VARCHAR(9), posta VARCHAR(100), telefonoa VARCHAR(30), ohartarazi BIGINT, hizkuntza VARCHAR(2), pasahitza VARCHAR(255), INDEX ohartarazi_idx (ohartarazi), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE kontaktua_ohartaraztea_translation (id BIGINT, modua VARCHAR(100) NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE kontaktua_ohartaraztea (id BIGINT AUTO_INCREMENT, ordena BIGINT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user (id BIGINT AUTO_INCREMENT, first_name VARCHAR(255), last_name VARCHAR(255), email_address VARCHAR(255) NOT NULL UNIQUE, username VARCHAR(128) NOT NULL UNIQUE, algorithm VARCHAR(128) DEFAULT 'sha1' NOT NULL, salt VARCHAR(128), password VARCHAR(128), is_active TINYINT(1) DEFAULT '1', is_super_admin TINYINT(1) DEFAULT '0', last_login DATETIME, ohartaraztea_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX is_active_idx_idx (is_active), INDEX ohartaraztea_id_idx (ohartaraztea_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE lehentasuna_translation (id BIGINT, izena VARCHAR(255) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE lehentasuna (id BIGINT AUTO_INCREMENT, kolorea VARCHAR(50), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE mota_translation (id BIGINT, izena VARCHAR(255) NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE mota (id BIGINT AUTO_INCREMENT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE ohartaraztea_translation (id BIGINT, mota VARCHAR(255) NOT NULL, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE ohartaraztea (id BIGINT AUTO_INCREMENT, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE planifikazioa (id BIGINT AUTO_INCREMENT, gertakaria_id BIGINT NOT NULL, langilea_id BIGINT NOT NULL, hasiera_data DATE NOT NULL, hasiera_ordua_noiztik TIME NOT NULL, hasiera_ordua_noizarte TIME NOT NULL, amaiera_data DATE NOT NULL, amaiera_ordua_noiztik TIME NOT NULL, amaiera_ordua_noizarte TIME NOT NULL, INDEX gertakaria_id_idx (gertakaria_id), INDEX langilea_id_idx (langilea_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group_translation (id BIGINT, name VARCHAR(255) NOT NULL UNIQUE, lang CHAR(2), PRIMARY KEY(id, lang)) ENGINE = INNODB;
CREATE TABLE sf_guard_group (id BIGINT AUTO_INCREMENT, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE saila_mota (id BIGINT AUTO_INCREMENT, saila_id BIGINT NOT NULL, mota_id BIGINT NOT NULL, INDEX saila_id_idx (saila_id), INDEX mota_id_idx (mota_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_group (user_id BIGINT, group_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, group_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_forgot_password (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, unique_key VARCHAR(255), expires_at DATETIME NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group_permission (group_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(group_id, permission_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_permission (id BIGINT AUTO_INCREMENT, name VARCHAR(255) NOT NULL UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_remember_key (id BIGINT AUTO_INCREMENT, user_id BIGINT, remember_key VARCHAR(32), ip_address VARCHAR(50), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user (id BIGINT AUTO_INCREMENT, first_name VARCHAR(255), last_name VARCHAR(255), email_address VARCHAR(255) NOT NULL UNIQUE, username VARCHAR(128) NOT NULL UNIQUE, algorithm VARCHAR(128) DEFAULT 'sha1' NOT NULL, salt VARCHAR(128), password VARCHAR(128), is_active TINYINT(1) DEFAULT '1', is_super_admin TINYINT(1) DEFAULT '0', last_login DATETIME, ohartaraztea_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX is_active_idx_idx (is_active), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_permission (user_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, permission_id)) ENGINE = INNODB;
ALTER TABLE arloa_translation ADD CONSTRAINT arloa_translation_id_arloa_id FOREIGN KEY (id) REFERENCES arloa(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE auzoa ADD CONSTRAINT auzoa_barrutia_id_barrutia_id FOREIGN KEY (barrutia_id) REFERENCES barrutia(id) ON DELETE RESTRICT;
ALTER TABLE azpimota_translation ADD CONSTRAINT azpimota_translation_id_azpimota_id FOREIGN KEY (id) REFERENCES azpimota(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE azpimota ADD CONSTRAINT azpimota_mota_id_mota_id FOREIGN KEY (mota_id) REFERENCES mota(id) ON DELETE RESTRICT;
ALTER TABLE egoera_translation ADD CONSTRAINT egoera_translation_id_egoera_id FOREIGN KEY (id) REFERENCES egoera(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ekintza_translation ADD CONSTRAINT ekintza_translation_id_ekintza_id FOREIGN KEY (id) REFERENCES ekintza(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE eraikina ADD CONSTRAINT eraikina_barrutia_id_barrutia_id FOREIGN KEY (barrutia_id) REFERENCES barrutia(id) ON DELETE RESTRICT;
ALTER TABLE eraikina ADD CONSTRAINT eraikina_auzoa_id_auzoa_id FOREIGN KEY (auzoa_id) REFERENCES auzoa(id) ON DELETE RESTRICT;
ALTER TABLE erlazio_mota_translation ADD CONSTRAINT erlazio_mota_translation_id_erlazio_mota_id FOREIGN KEY (id) REFERENCES erlazio_mota(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE erlazioak ADD CONSTRAINT erlazioak_hasiera_id_gertakaria_id FOREIGN KEY (hasiera_id) REFERENCES gertakaria(id) ON DELETE RESTRICT;
ALTER TABLE erlazioak ADD CONSTRAINT erlazioak_erlazio_mota_id_erlazio_mota_id FOREIGN KEY (erlazio_mota_id) REFERENCES erlazio_mota(id) ON DELETE RESTRICT;
ALTER TABLE erlazioak ADD CONSTRAINT erlazioak_amaiera_id_gertakaria_id FOREIGN KEY (amaiera_id) REFERENCES gertakaria(id) ON DELETE RESTRICT;
ALTER TABLE fitxategia ADD CONSTRAINT fitxategia_langilea_id_sf_guard_user_id FOREIGN KEY (langilea_id) REFERENCES sf_guard_user(id) ON DELETE RESTRICT;
ALTER TABLE fitxategia ADD CONSTRAINT fitxategia_gertakaria_id_gertakaria_id FOREIGN KEY (gertakaria_id) REFERENCES gertakaria(id) ON DELETE RESTRICT;
ALTER TABLE geo ADD CONSTRAINT geo_gertakaria_id_gertakaria_id FOREIGN KEY (gertakaria_id) REFERENCES gertakaria(id) ON DELETE RESTRICT;
ALTER TABLE geo ADD CONSTRAINT geo_geometria_id_geometria_id FOREIGN KEY (geometria_id) REFERENCES geometria(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_saila_id_sf_guard_group_id FOREIGN KEY (saila_id) REFERENCES sf_guard_group(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_mota_id_mota_id FOREIGN KEY (mota_id) REFERENCES mota(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_lehentasuna_id_lehentasuna_id FOREIGN KEY (lehentasuna_id) REFERENCES lehentasuna(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_langilea_id_sf_guard_user_id FOREIGN KEY (langilea_id) REFERENCES sf_guard_user(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_kontaktua_id_kontaktua_id FOREIGN KEY (kontaktua_id) REFERENCES kontaktua(id);
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_klasea_id_klasea_id FOREIGN KEY (klasea_id) REFERENCES klasea(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_kalea_id_kalea_id FOREIGN KEY (kalea_id) REFERENCES kalea(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_jatorrizkosaila_id_jatorrizko_saila_id FOREIGN KEY (jatorrizkosaila_id) REFERENCES jatorrizko_saila(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_eraikina_id_eraikina_id FOREIGN KEY (eraikina_id) REFERENCES eraikina(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_egoera_id_egoera_id FOREIGN KEY (egoera_id) REFERENCES egoera(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_barrutia_id_barrutia_id FOREIGN KEY (barrutia_id) REFERENCES barrutia(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_azpimota_id_azpimota_id FOREIGN KEY (azpimota_id) REFERENCES azpimota(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_auzoa_id_auzoa_id FOREIGN KEY (auzoa_id) REFERENCES auzoa(id) ON DELETE RESTRICT;
ALTER TABLE gertakaria ADD CONSTRAINT gertakaria_arloa_id_arloa_id FOREIGN KEY (arloa_id) REFERENCES arloa(id) ON DELETE RESTRICT;
ALTER TABLE iruzkina ADD CONSTRAINT iruzkina_langilea_id_sf_guard_user_id FOREIGN KEY (langilea_id) REFERENCES sf_guard_user(id) ON DELETE RESTRICT;
ALTER TABLE iruzkina ADD CONSTRAINT iruzkina_gertakaria_id_gertakaria_id FOREIGN KEY (gertakaria_id) REFERENCES gertakaria(id) ON DELETE RESTRICT;
ALTER TABLE iruzkina ADD CONSTRAINT iruzkina_ekintza_id_ekintza_id FOREIGN KEY (ekintza_id) REFERENCES ekintza(id) ON DELETE RESTRICT;
ALTER TABLE jatorrizko_saila_translation ADD CONSTRAINT jatorrizko_saila_translation_id_jatorrizko_saila_id FOREIGN KEY (id) REFERENCES jatorrizko_saila(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE kalea ADD CONSTRAINT kalea_barrutia_id_barrutia_id FOREIGN KEY (barrutia_id) REFERENCES barrutia(id) ON DELETE RESTRICT;
ALTER TABLE kalea ADD CONSTRAINT kalea_auzoa_id_auzoa_id FOREIGN KEY (auzoa_id) REFERENCES auzoa(id) ON DELETE RESTRICT;
ALTER TABLE klasea_translation ADD CONSTRAINT klasea_translation_id_klasea_id FOREIGN KEY (id) REFERENCES klasea(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE kontaktua ADD CONSTRAINT kontaktua_ohartarazi_kontaktua_ohartaraztea_id FOREIGN KEY (ohartarazi) REFERENCES kontaktua_ohartaraztea(id);
ALTER TABLE kontaktua_ohartaraztea_translation ADD CONSTRAINT kontaktua_ohartaraztea_translation_id_kontaktua_ohartaraztea_id FOREIGN KEY (id) REFERENCES kontaktua_ohartaraztea(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE sf_guard_user ADD CONSTRAINT sf_guard_user_ohartaraztea_id_ohartaraztea_id FOREIGN KEY (ohartaraztea_id) REFERENCES ohartaraztea(id) ON DELETE RESTRICT;
ALTER TABLE lehentasuna_translation ADD CONSTRAINT lehentasuna_translation_id_lehentasuna_id FOREIGN KEY (id) REFERENCES lehentasuna(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE mota_translation ADD CONSTRAINT mota_translation_id_mota_id FOREIGN KEY (id) REFERENCES mota(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ohartaraztea_translation ADD CONSTRAINT ohartaraztea_translation_id_ohartaraztea_id FOREIGN KEY (id) REFERENCES ohartaraztea(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE planifikazioa ADD CONSTRAINT planifikazioa_langilea_id_sf_guard_user_id FOREIGN KEY (langilea_id) REFERENCES sf_guard_user(id) ON DELETE RESTRICT;
ALTER TABLE planifikazioa ADD CONSTRAINT planifikazioa_gertakaria_id_gertakaria_id FOREIGN KEY (gertakaria_id) REFERENCES gertakaria(id) ON DELETE RESTRICT;
ALTER TABLE sf_guard_group_translation ADD CONSTRAINT sf_guard_group_translation_id_sf_guard_group_id FOREIGN KEY (id) REFERENCES sf_guard_group(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE saila_mota ADD CONSTRAINT saila_mota_saila_id_sf_guard_group_id FOREIGN KEY (saila_id) REFERENCES sf_guard_group(id) ON DELETE RESTRICT;
ALTER TABLE saila_mota ADD CONSTRAINT saila_mota_mota_id_mota_id FOREIGN KEY (mota_id) REFERENCES mota(id) ON DELETE RESTRICT;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_forgot_password ADD CONSTRAINT sf_guard_forgot_password_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_remember_key ADD CONSTRAINT sf_guard_remember_key_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
