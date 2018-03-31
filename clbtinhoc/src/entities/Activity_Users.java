package entities;

public class Activity_Users {
	private int id;
	private int id_user;
	private int id_activity;
	private String lastname;
	private String firstname;
	private String klass;
	private String joined_at;
	public Activity_Users() {
		// TODO Auto-generated constructor stub
	}
	
	public Activity_Users(int id, int id_user, int id_activity, String lastname, String firstname, String klass,
			String joined_at) {
		super();
		this.id = id;
		this.id_user = id_user;
		this.id_activity = id_activity;
		this.lastname = lastname;
		this.firstname = firstname;
		this.klass = klass;
		this.joined_at = joined_at;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getKlass() {
		return klass;
	}

	public void setKlass(String klass) {
		this.klass = klass;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public int getId_activity() {
		return id_activity;
	}
	public void setId_activity(int id_activity) {
		this.id_activity = id_activity;
	}
	public String getJoined_at() {
		return joined_at;
	}
	public void setJoined_at(String joined_at) {
		this.joined_at = joined_at;
	}
}
	