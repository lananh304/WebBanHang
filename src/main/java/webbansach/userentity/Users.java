package webbansach.userentity;





public class Users {
	private int id;
	private String id1;
	private String username;

	private String email;

	private String password;
	private String date;
	private String sex;
	private String type;

	public Users() {

	}

	public Users( String username, String email, String password, String date, String sex,
			String type) {
	
        this.username = username;
        this.email = email;
        this.email = password;
        this.date = date;
        this.sex = sex;
        this.type = type;
	}
	
	public Users(String id1, String username, String email, String password, String date, String sex,
			String type) {
		this.id1 = id1;
        this.username = username;
        this.email = email;
        this.email = password;
        this.date = date;
        this.sex = sex;
        this.type = type;
	}



	public int getId() {
		return id;
	}

	public String getId1() {
		return id1;
	}

	public void setId1(String id1) {
		this.id1 = id1;
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




	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}



}
