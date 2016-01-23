package com.psl;

public class Vehical {

	private int vehicalId;
	private String make;
	
	
	public int getVehicalId() {
		return vehicalId;
	}
	public void setVehicalId(int vehicalId) {
		this.vehicalId = vehicalId;
	}
	public String getMake() {
		return make;
	}
	public void setMake(String make) {
		this.make = make;
	}
	public Vehical() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Vehical [vehicalId=" + vehicalId + ", make=" + make + "]";
	}
	
}
