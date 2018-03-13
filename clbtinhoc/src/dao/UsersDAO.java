package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entities.User;
import utils.StringUtils;

@Repository
public class UsersDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private StringUtils stringUtils;

	public int addItem(User objUser) {
		String sql = "INSERT INTO users(firstname,lastname,username,email,password,klass,birthday,phone,role,created_at)"
				+ " VALUES(?,?,?,?,?,?,?,?,?,?)";
		int result = jdbcTemplate.update(sql,
				new Object[] { objUser.getFirstname(), objUser.getLastname(), objUser.getUsername(), objUser.getEmail(),
						stringUtils.md5(objUser.getPassword()), objUser.getKlass(), objUser.getBirthday(),
						objUser.getPhone(), objUser.getRole(), objUser.getCreated_at() });
		return result;
	}

	public Integer checkUserExist(String username) {
		String sql = "SELECT COUNT(username) FROM users WHERE username = ?";
		return jdbcTemplate.queryForObject(sql, new Object[] { username }, Integer.class);
	}

	public List<User> getItems(int offset, int row_count) {
		String sql = "SELECT * FROM users ORDER BY id LIMIT ?,?";
		return jdbcTemplate.query(sql, new Object[] { offset, row_count }, new BeanPropertyRowMapper<User>(User.class));
	}

	public int countItems() {
		String sql = " SELECT COUNT(id) FROM users";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public User getItem(int id) {
		String sql = " SELECT * FROM users WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<User>(User.class));
	}

	public int delItem(int id){
		String sql = " DELETE FROM users WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[]{id});
	}

	public int editItem(int id, String role, String password) {
		String sql = " UPDATE users SET role = ?, password = ? WHERE id = ?";
		return jdbcTemplate.update(sql,new Object[]{role,password,id});
	}

	public User getItem(String name) {
		String sql = " SELECT * FROM users WHERE username = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{name},new BeanPropertyRowMapper<User>(User.class));
	}
}
