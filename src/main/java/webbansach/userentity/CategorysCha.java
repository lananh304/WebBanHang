package webbansach.userentity;

public class CategorysCha {
	private int id;
	private String active;

	public CategorysCha() {
		super();
	}

	public CategorysCha(int id, String active) {
		super();
		this.id = id;
		this.active = active;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

}
