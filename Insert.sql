INSERT INTO users (user_id, username, password, created_at, update_at) VALUES
	('803df736-a994-4c6f-92a8-66e1312e0f0d', 'boss112','boss123', current_timestamp, current_timestamp),
	('564e0c71-abb3-4e6c-a58d-24ce7240bd0f', 'manager112','manager123', current_timestamp, current_timestamp),
	('74d7ff9f-983d-48b5-8573-99c02c18f175', 'employee112','employee123', current_timestamp, current_timestamp);
INSERT INTO roles ( role_id, role_name, created_at, update_at) VALUES
	('da1974ec-01ad-4aa9-aed1-edbc494dd47a', 'boss', current_timestamp, current_timestamp),
	('686c46e7-cfd6-4684-a155-2f02a874472e', 'manager', current_timestamp, current_timestamp),
	('52a93493-9c22-4ee3-bcb1-f297130a27f0', 'employee', current_timestamp, current_timestamp);
INSERT INTO permissions (permission_id, permission_name, created_at, update_at) VALUES
	('3a0bc76a-8f6f-4b8a-86a5-061b7f7214a0', 'read', current_timestamp, current_timestamp),
	('387d4a3f-4557-4595-9327-d0d507a2f9ee', 'write', current_timestamp, current_timestamp),
	('48d79778-9ea5-4e60-8f96-d69c860ec174', 'delete', current_timestamp, current_timestamp);
INSERT INTO users_roles (user_id, role_id, created_at, update_at) VALUES
	('803df736-a994-4c6f-92a8-66e1312e0f0d', 'da1974ec-01ad-4aa9-aed1-edbc494dd47a', current_timestamp, current_timestamp),
	('564e0c71-abb3-4e6c-a58d-24ce7240bd0f', '686c46e7-cfd6-4684-a155-2f02a874472e', current_timestamp, current_timestamp),
	('74d7ff9f-983d-48b5-8573-99c02c18f175', '52a93493-9c22-4ee3-bcb1-f297130a27f0', current_timestamp, current_timestamp);
INSERT INTO role_permissions (role_id, permission_id, created_at, update_at) VALUES
	('da1974ec-01ad-4aa9-aed1-edbc494dd47a', '3a0bc76a-8f6f-4b8a-86a5-061b7f7214a0', current_timestamp, current_timestamp), 
	('da1974ec-01ad-4aa9-aed1-edbc494dd47a', '387d4a3f-4557-4595-9327-d0d507a2f9ee', current_timestamp, current_timestamp),	
	('da1974ec-01ad-4aa9-aed1-edbc494dd47a', '48d79778-9ea5-4e60-8f96-d69c860ec174', current_timestamp, current_timestamp),	
	('686c46e7-cfd6-4684-a155-2f02a874472e', '3a0bc76a-8f6f-4b8a-86a5-061b7f7214a0', current_timestamp, current_timestamp),
	('686c46e7-cfd6-4684-a155-2f02a874472e', '387d4a3f-4557-4595-9327-d0d507a2f9ee', current_timestamp, current_timestamp),
	('52a93493-9c22-4ee3-bcb1-f297130a27f0', '3a0bc76a-8f6f-4b8a-86a5-061b7f7214a0', current_timestamp, current_timestamp);
