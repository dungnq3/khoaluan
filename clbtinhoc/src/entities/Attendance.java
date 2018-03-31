package entities;

public class Attendance {
	private int id;
	private int id_activity;
	private String created_at;
	private int times;
	
	public Attendance() {
		// TODO Auto-generated constructor stub
	}

	public Attendance(int id, int id_activity, String created_at, int times) {
		super();
		this.id = id;
		this.id_activity = id_activity;
		this.created_at = created_at;
		this.times = times;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_activity() {
		return id_activity;
	}

	public void setId_activity(int id_activity) {
		this.id_activity = id_activity;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public int getTimes() {
		return times;
	}

	public void setTimes(int times) {
		this.times = times;
	}
}
