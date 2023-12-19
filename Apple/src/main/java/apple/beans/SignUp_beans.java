package apple.beans;

public class SignUp_beans {
private String name, email, password;

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
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

public SignUp_beans(String name, String email, String password) {
	super();
	this.name = name;
	this.email = email;
	this.password = password;
}

public SignUp_beans() {
	super();
	// TODO Auto-generated constructor stub
}

}
