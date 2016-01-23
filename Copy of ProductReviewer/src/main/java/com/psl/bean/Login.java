package com.psl.bean;


//@Entity
//@Table(name = "LOGIN")
public class Login {
	
	private int loginId;
	public int getLoginId() {
		return loginId;
	}


	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}

	private String userName;
	private String password;
	//private String customerId;
    private Customer customer;
	
	public Login() {
	}

	
	/*public int getLoginNo() {
		return loginNo;
	}


	public void setLoginNo(int loginNo) {
		this.loginNo = loginNo;
	}
*/

	public Login(String username, String password,Customer customer ) {
		super();
		this.userName = username;
		this.password = password;
		this.customer=customer;
	}


	public String getUsername() {
		return userName;
	}

	public void setUsername(String username) {
		this.userName = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	

	
	
}
