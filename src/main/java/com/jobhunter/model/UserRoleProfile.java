package com.jobhunter.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "USER_ROLE_PROFILE")
public class UserRoleProfile implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	@OneToOne( fetch = FetchType.EAGER)
	@JoinColumn(name="user")
	private User user;

	
	@OneToOne( fetch = FetchType.EAGER)
	@JoinColumn(name="USER_PROFILE_ID")
	private UserProfile role;


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public UserProfile getRole() {
		return role;
	}


	public void setRole(UserProfile role) {
		this.role = role;
	}

	 
	 
}
