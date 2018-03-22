package entities;

public class Activity_Users {
	private int id;
	private int id_user;
	private String firstname;
	private String lastname;
	private int id_activity;
	private String joined_at;
	private int pay;
	private String paid_at;
	public Activity_Users() {
		// TODO Auto-generated constructor stub
	}
	public Activity_Users(int id, int id_user,String firstname,String lastname, int id_activity, String joined_at,int pay, String paid_at) {
		super();
		this.id = id;
		this.id_user = id_user;
		this.firstname = firstname;
		this.lastname = lastname;
		this.id_activity = id_activity;
		this.joined_at = joined_at;
		this.pay = pay;
		this.paid_at = paid_at;
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
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public String getPaid_at() {
		return paid_at;
	}
	public void setPaid_at(String paid_at) {
		this.paid_at = paid_at;
	}
	public String getJoined_at() {
		return joined_at;
	}
	public void setJoined_at(String joined_at) {
		this.joined_at = joined_at;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
}
