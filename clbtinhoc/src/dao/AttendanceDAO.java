package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entities.Attendance;
import entities.Attendance_Detail;

@Repository
public class AttendanceDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int addAttendance(Attendance attendance) {
		String sql = " INSERT INTO attendance(id_activity,created_at,times) VALUES(?,?,?)";
		return jdbcTemplate.update(sql,new Object[]{attendance.getId_activity(),attendance.getCreated_at(),attendance.getTimes()});
	}

	public int getAttendanceTimes(int id) {
		String sql = "SELECT COUNT(*) FROM attendance WHERE id_activity = ?";
		return jdbcTemplate.queryForObject(sql,new Object[]{id}, Integer.class);
	}

	public List<Attendance> getListAttendance(int id) {
		String sql = "SELECT * FROM attendance WHERE id_activity = ?";
		return jdbcTemplate.query(sql, new Object[]{id}, new BeanPropertyRowMapper<Attendance>(Attendance.class));
	}
	
	public List<Attendance_Detail> getAttDetail(int id_att){
		String sql = "SELECT attendance_detail.*, firstname, lastname FROM attendance_detail JOIN users ON attendance.id_user = users.id WHERE attendance_detail.id = ?";
		return jdbcTemplate.query(sql, new Object[]{id_att},new BeanPropertyRowMapper<Attendance_Detail>(Attendance_Detail.class));
	}
	public Attendance getItem(String created_at){
		String sql = "SELECT * FROM attendance WHERE created_at = ?";
		return jdbcTemplate.queryForObject(sql,new Object[]{created_at},new BeanPropertyRowMapper<Attendance>(Attendance.class));
	}
}
