package com.yashwant.cateloge;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ccfeedback")
public class FeedbackEntity {
	
	@Id
	@Column(name="usernm")
	private String usernm;
	@Column(name="email")
	private String email;
	@Column(name="suggestions")
	private String suggestions;
	
	
	public String getUsernm() {
		return usernm;
	}
	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSuggestions() {
		return suggestions;
	}
	public void setSuggestions(String suggestions) {
		this.suggestions = suggestions;
	}
	
	
}
