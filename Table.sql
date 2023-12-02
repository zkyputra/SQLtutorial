CREATE TABLE IF NOT EXISTS users (
	user_id UUID DEFAULT uuid_generate_v4() primary key,
	username varchar(50) unique not null,
	password varchar(100) not null);
	
CREATE TABLE IF NOT EXISTS roles(
	role_id uuid default uuid_generate_v4() primary key,
	role_name varchar(50) unique not null);
	
CREATE TABLE IF NOT EXISTS permissions(
	permission_id uuid default uuid_generate_v4()primary key,
	permission_name varchar(50) unique not null);
	
CREATE TABLE IF NOT EXISTS users_roles(
	user_id int REFERENCES users(user_id),
	role_id int REFERENCES roles(role_id),
	primary key(user_id, role_id));

CREATE TABLE if not exists role_permissions (
	role_id int REFERENCES roles(role_id),
	permission_id int REFERENCES permissions(permission_id),
	primary key (role_id, permission_id));