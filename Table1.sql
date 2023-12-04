CREATE TABLE IF NOT EXISTS users (
	user_id UUID default uuid_generate_v4() primary key,
	username varchar(100) unique not null,
	password varchar(100) not null,
	created_at TIMESTAMP default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP default CURRENT_TIMESTAMP);
	
CREATE TABLE IF NOT EXISTS roles(
	role_id UUID default uuid_generate_v4() primary key,
	role_name varchar(100) unique not null,
	created_at TIMESTAMP default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP default CURRENT_TIMESTAMP);
	
CREATE TABLE IF NOT EXISTS permissions(
	permission_id UUID default uuid_generate_v4()primary key,
	permission_name varchar(100) unique not null,
	created_at TIMESTAMP default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP default CURRENT_TIMESTAMP);
	
CREATE TABLE IF NOT EXISTS users_roles(
	user_id UUID REFERENCES users(user_id),
	role_id UUID REFERENCES roles(role_id),
	primary key(user_id, role_id),
	created_at TIMESTAMP default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP default CURRENT_TIMESTAMP);

CREATE TABLE if not exists role_permissions (
	role_id UUID REFERENCES roles(role_id),
	permission_id UUID REFERENCES permissions(permission_id),
	primary key (role_id, permission_id),
	created_at TIMESTAMP default CURRENT_TIMESTAMP,
	updated_at TIMESTAMP default CURRENT_TIMESTAMP);