INSERT INTO users (username, password) VALUES
	('boss111','boss123'),
	('manager222','manager123'),
	('employee333','employee123');
INSERT INTO roles ( role_name) VALUES
	('boss'),
	('manager'),
	('pegawai');
INSERT INTO permissions (permission_name) VALUES
	('izin_membaca'),
	('izin_menulis'),
	('izin_menghapus');
INSERT INTO users_roles VALUES
	(1, 1),
	(2, 2),
	(3, 3);
INSERT INTO role_permissions VALUES
	(1, 1), 
	(1, 2),	
	(1, 3),	
	(2, 1),
	(2, 2),
	(3, 1);
