package com.jobhunter.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.jobhunter.model.Jobs.VisaStatusEnum;

 
@Entity
@Table(name="USER")
public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
 
	@NotEmpty
	@Column(name="PASSWORD", nullable=false)
	private String password;
		
	@NotEmpty
	@Column(name="NAME", nullable=false)
	private String firstName;

	@NotEmpty 
	@Email
	@Column(name="EMAIL", nullable=false)
	private String email;

	@Column(name="CREATEDDT")
	private Date createdDt;
	
	@Column(name="LOGINDT")
	private Date loginDt;
	 
	@Column(name="ACTIVE")
	private String active;
	
	
	
    @OneToOne
    @JoinTable(name = "USER_ROLE_PROFILE", 
             joinColumns = { @JoinColumn(name = "user")},
    		inverseJoinColumns = { @JoinColumn(name = "USER_PROFILE_ID")
    })
    private UserProfile userProfiles;

	  
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getCreatedDt() {
		return createdDt;
	}

	public void setCreatedDt(Date createdDt) {
		this.createdDt = createdDt;
	}

	public Date getLoginDt() {
		return loginDt;
	}

	public void setLoginDt(Date loginDt) {
		this.loginDt = loginDt;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}
 

	public UserProfile getUserProfiles() {
		return userProfiles;
	}

	public void setUserProfiles(UserProfile userProfiles) {
		this.userProfiles = userProfiles;
	}
	
	
	@Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        return result;
    }
 
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof User))
            return false;
        User other = (User) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
       
       
        return true;
    }
	

}
