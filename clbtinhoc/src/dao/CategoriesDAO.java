package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entities.Category;

@Repository
public class CategoriesDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Category> getItems(){
		String sql = "SELECT * FROM categories";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<Category>(Category.class));
	}

	public int checkName(String name_cat) {
		String sql = "SELECT COUNT(*) FROM categories WHERE name_cat = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{name_cat},Integer.class);
	}

	public int addItem(Category objCat) {
		String sql = "INSERT INTO categories(name_cat) VALUES(?)";
		return jdbcTemplate.update(sql,new Object[]{objCat.getName_cat()});
	}
	public int editItem(Category objCat) {
		String sql = "UPDATE categories SET name_cat = ? WHERE id = ?";
		return jdbcTemplate.update(sql,new Object[]{objCat.getName_cat(),objCat.getId()});
	}
	public int delItem(int id) {
		String sql = "DELETE FROM categories WHERE id = ?";
		return jdbcTemplate.update(sql,new Object[]{id});
	}

	public Category getItem(int id) {
		String sql = "SELECT * FROM categories WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Category>(Category.class));
	}

	public int getTotal() {
		String sql = "SELECT COUNT(id) FROM categories";
		return jdbcTemplate.queryForObject(sql,Integer.class);
	}
}
