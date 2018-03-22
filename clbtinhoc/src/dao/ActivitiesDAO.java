package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entities.Activity;
import entities.Activity_Users;

@Repository
public class ActivitiesDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int addItem(Activity objActivity) {
		String sql = "INSERT INTO activities(title,content,start_at,end_at,fee,limited,status)"
				+ " VALUES(?,?,?,?,?,?,?)";
		int result = jdbcTemplate.update(sql,
				new Object[] { objActivity.getTitle(), objActivity.getContent(), objActivity.getStart_at(), objActivity.getEnd_at(),
						 objActivity.getFee(), objActivity.getLimited(),
						objActivity.getStatus() });
		return result;
	}

	public List<Activity> getItems(int offset, int row_count) {
		String sql = "SELECT * FROM activities ORDER BY id LIMIT ?,?";
		return jdbcTemplate.query(sql, new Object[] { offset, row_count }, new BeanPropertyRowMapper<Activity>(Activity.class));
	}

	public int countItems() {
		String sql = " SELECT COUNT(id) FROM activities";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}

	public Activity getItem(int id) {
		String sql = " SELECT * FROM activities WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Activity>(Activity.class));
	}

	public int delItem(int id){
		String sql = " DELETE FROM activities WHERE id = ?";
		return jdbcTemplate.update(sql, new Object[]{id});
	}

	public int editItem(Activity objActi) {
		String sql = " UPDATE activities SET title = ?, content = ?, start_at = ?, end_at = ?, fee = ?, limited = ?, status = ? WHERE id = ?";
		return jdbcTemplate.update(sql,new Object[]{objActi.getTitle(),objActi.getContent(),objActi.getStart_at(),objActi.getEnd_at(),objActi.getFee(),objActi.getLimited(),objActi.getStatus(),objActi.getId()});
	}
	
	public List<Activity_Users> getItems(int id_activity){
		String sql = "SELECT user_activities.*,firstname,lastname FROM user_activities JOIN users ON user_activities.id_user = users.id  WHERE id_activity = ?";
		return jdbcTemplate.query(sql, new Object[] {id_activity},new BeanPropertyRowMapper<Activity_Users>(Activity_Users.class));
	}

	public int getTotal() {
		String sql = "SELECT COUNT(*) FROM activities";
		return jdbcTemplate.queryForObject(sql, Integer.class);
	}
}
