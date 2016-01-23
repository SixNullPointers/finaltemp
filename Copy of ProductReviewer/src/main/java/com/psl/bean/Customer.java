package com.psl.bean;


//@Entity
//@Table(name = "CUSTOMER")
public class Customer {

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", firstName="
				+ firstName + ", lastName=" + lastName + ", email=" + email
				+ ", contactNo=" + contactNo + ", status=" + status + "]";
	}
	// @Id 
	// @GeneratedValue
	private int customerId;
	private String firstName;
	private String lastName;
	private String email;
	
	private Login login;
	private String contactNo;
	private CustomerStatus status;
	
	public Customer() {
	}
	public Customer( String firstName, String lastName,
			String email, String contactNo ,Login login) {
		super();
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.contactNo = contactNo;
		this.login=login;
	}
	public Login getLogin() {
		return login;
	}
	public void setLogin(Login login) {
		this.login = login;
	}
	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactNo() {
		return contactNo;
	}
	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}
	public CustomerStatus getStatus() {
		return status;
	}
	public void setStatus(CustomerStatus status) {
		this.status = status;
	}
	
	
	
}
