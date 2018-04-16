package entities;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class Roles {
	private int id;
	@NotBlank(message="Chức vụ không được trống")
	@Size(max=20,message="Chức vụ không vượt quá 20 ký tự")
	private String role;
	
	public Roles() {
		// TODO Auto-generated constructor stub
	}

	public Roles(int id, String role) {
		super();
		this.id = id;
		this.role = role;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
}
