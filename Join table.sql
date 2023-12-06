select
    u.username,
    r.role_name,
    p.permission_name,
	u.created_at
from 
	users u
join 
	users_roles ur on u.user_id = ur.user_id 
join 
	roles r on ur.role_id = r.role_id 
join 
	role_permissions rp on r.role_id = rp.role_id
join 
	permissions p on rp.permission_id = p.permission_id
order by 
	u.created_at desc;