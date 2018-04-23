package dao;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entities.Roles;
@Repository
public class RolesDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Roles> getSortedItems(int offset, int row_count){
		String sql = "SELECT * FROM roles ORDER BY id LIMIT ?,?";
		return jdbcTemplate.query(sql, new Object[]{offset, row_count}, new BeanPropertyRowMapper<Roles>(Roles.class));
	}
	public List<Roles> getItems(){
		String sql = "SELECT * FROM roles";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Roles>(Roles.class));
	}
	public int addItem(Roles role){
		String sql = "INSERT INTO roles(role) VALUES(?)";
		return jdbcTemplate.update(sql,new Object[]{role.getRole()});
	}
	public int editItem(Roles role){
		String sql = "UPDATE roles SET role = ? WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[]{role.getRole(),role.getId()});
	}
	public int delItem(int id){
		String sql = "DELETE FROM roles WHERE id = ?";
		return jdbcTemplate.update(sql,new Object[]{id});
	}
	public int checkExistByName(String name){
		String sql = "SELECT COUNT(*) FROM roles WHERE role = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{name},Integer.class);
	}
	public int countItems(){
		String sql = "SELECT COUNT(id) FROM roles";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
	public Roles getItem(int id){
		String sql = "SELECT * FROM roles WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Roles>(Roles.class));
	}
	public int addPermission(int id, int i) {
		String sql = "INSERT INTO role_permissions(id_role,id_permission) VALUES(?,?)";
		return jdbcTemplate.update(sql,new Object[]{id,i});
	}
	public int delPermission(int id,int i){
		String sql = "DELETE FROM role_permissions WHERE id_role = ? AND id_permission = ?";
		return jdbcTemplate.update(sql,new Object[]{id,i});
	}
	
}
