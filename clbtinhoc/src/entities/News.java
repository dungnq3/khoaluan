package entities;

import org.hibernate.validator.constraints.NotBlank;

public class News {
	private int id;
	@NotBlank(message="Tiêu đề không được trống")
	private String title;
	@NotBlank(message="Nội dung không được trống")
	private String content;
	private String created_at;
	private String updated_at;
	private int view;
	private int id_cat;
	private String name_cat;
	private int write_by;
	public News() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public News(int id, String title, String content, String created_at, String updated_at, int view, int write_by) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.view = view;
		this.write_by = write_by;
	}



	public News(int id, String title, String content, String created_at, String updated_at, int view, int id_cat,
			int write_by) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.view = view;
		this.id_cat = id_cat;
		this.write_by = write_by;
	}



	public News(int id, String title, String content, String created_at, String updated_at, int view, int id_cat, String name_cat
			,int write_by) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.view = view;
		this.id_cat = id_cat;
		this.name_cat = name_cat;
		this.write_by = write_by;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(String updated_at) {
		this.updated_at = updated_at;
	}
	public int getView() {
		return view;
	}
	public void setView(int view) {
		this.view = view;
	}
	
	

	public String getName_cat() {
		return name_cat;
	}

	public void setName_cat(String name_cat) {
		this.name_cat = name_cat;
	}

	public int getId_cat() {
		return id_cat;
	}

	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}

	public int getWrite_by() {
		return write_by;
	}
	public void setWrite_by(int write_by) {
		this.write_by = write_by;
	}
}
