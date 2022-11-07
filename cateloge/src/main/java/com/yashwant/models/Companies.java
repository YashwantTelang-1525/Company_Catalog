package com.yashwant.models;

import org.springframework.stereotype.Service;

@Service
public class Companies {
	
	private String id;
	private String companynm;
	private String category;
	private int employees;
	private String country;
	private String ceo;
	private String year;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCompanynm() {
		return companynm;
	}
	public void setCompanynm(String companynm) {
		this.companynm = companynm;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getEmployees() {
		return employees;
	}
	public void setEmployees(int employees) {
		this.employees = employees;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCeo() {
		return ceo;
	}
	public void setCeo(String ceo) {
		this.ceo = ceo;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
		
}
