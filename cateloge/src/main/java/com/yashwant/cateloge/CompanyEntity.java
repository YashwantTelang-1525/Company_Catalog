package com.yashwant.cateloge;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="apicompanies")
public class CompanyEntity {
	
	@Id
	@Column(name="id")
	private String id;
	@Column(name="companynm")
	private String companynm;
	@Column(name="category")
	private String category;
	@Column(name="employees")
	private int employees;
	@Column(name="country")
	private String country;
	@Column(name="ceo")
	private String ceo;
	@Column(name="year")	
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
