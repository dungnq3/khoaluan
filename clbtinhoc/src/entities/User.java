package entities;

import java.sql.Timestamp;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class User {
	private int id;
	
	@NotEmpty(message="Tên bỏ trống")
	private String firstname;
	
	@NotEmpty(message="Họ bỏ trống")
	private String lastname;
	
	@NotEmpty(message="Tên tài khoản bỏ trống")
	private String username;
	
	@NotNull
	@Pattern(regexp="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$", message="Email không hợp lệ")
	private String email;
	
	@NotNull
	@Size(min = 6, max = 16, message="Mật khẩu có ít nhất 6 ký tự và không dài quá 16 ký tự")
	private String password;
	
	@NotEmpty(message="Số điện thoại bỏ trống")
	private String phone;
	
	@NotEmpty(message="Lớp bỏ trống")
	private String klass;
	
	private String role;
	
	private String birthday;
	
	private Timestamp created_at;
	
	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(int id,String username, String firstname, String lastname, String email, String password, String phone, String klass,
			 String role, String birthday, Timestamp created_at) {
		super();
		this.id = id;
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.klass = klass;
		this.role = role;
		this.birthday = birthday;
		this.created_at = created_at;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getKlass() {
		return klass;
	}

	public void setKlass(String klass) {
		this.klass = klass;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public Timestamp getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}
	
}