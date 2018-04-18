package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="EMS_Company")
public class Companybean {

	private String Status;
	private String Company_ID;
	@Column(name="Company_name",nullable=false)
	
	private String Company_name;
	@Column(name="Company_code",nullable=false)
	private String Company_code;
	private String Address;
	private String Country;
	private String State;
	private String City;
	@Column(name="Pincode",length=6)
	private String Pincode;
	@Column(name="Email",nullable=false)
	private String Email;
	@Column(name="phone",nullable=false)
	private String phone; 
	@Column(name="Contact_person",nullable=false)
	private String Contact_person;
	@Column(name="Person_phone",nullable=false)
	private String Person_phone;
	@Column(name="Person_email",nullable=false)
	private String Person_email;
	
			public Companybean() {
			
			}
	public Companybean(String company_ID, String company_name,
			String company_code, String address, String country, String state,
			String city, String pincode, String email, String phone,
			String contact_person, String person_phone, String person_email) {
		Company_ID = company_ID;
		Company_name = company_name;
		Company_code = company_code;
		Address = address;
		Country = country;
		State = state;
		City = city;
		Pincode = pincode;
		Email = email;
		this.phone = phone;
		Contact_person = contact_person;
		Person_phone = person_phone;
		Person_email = person_email;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getPincode() {
		return Pincode;
	}
	public void setPincode(String pincode) {
		Pincode = pincode;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPerson_email() {
		return Person_email;
	}
	public void setPerson_email(String person_email) {
		Person_email = person_email;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getCompany_ID() {
		return Company_ID;
	}
	public void setCompany_ID(String company_ID) {
		Company_ID = company_ID;
	}
	public String getCompany_code() {
		return Company_code;
	}
	public void setCompany_code(String company_code) {
		Company_code = company_code;
	}
	public String getCompany_name() {
		return Company_name;
	}
	public void setCompany_name(String company_name) {
		Company_name = company_name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getContact_person() {
		return Contact_person;
	}
	public void setContact_person(String contact_person) {
		Contact_person = contact_person;
	}
	public String getPerson_phone() {
		return Person_phone;
	}
	public void setPerson_phone(String person_phone) {
		Person_phone = person_phone;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	
	
}
