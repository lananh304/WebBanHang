package webbansach.userentity;

public class Categorys {
private int id;
private String type;
private String active;

public Categorys() {
	super();
}

public Categorys(String type, String active) {
    this.type = type;
    this.active = active;
  }
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}

public String getActive() {
	return active;
}

public void setActive(String active) {
	this.active = active;
}








}
