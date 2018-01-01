package com.jobhunter.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="CANDIDATE")
public class Candidate  implements Serializable{
	 
		private static final long serialVersionUID = 1L;
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		 @Column(name = "CANDIDATE_ID")
		private int candidateId;
		
		@Column(name="CANDIDATE_NAME")
		private String candidaterName;
		
		@Column(name="EMAIL")
		private String email;
		
		@Column(name="PHONE")
		private String phone;
		
		@Column(name="PHONE2")
		private String phoneTwo;
		
		@Column(name="POSTING_DT")
		private Date postingDt;

		@Column(name="SAVED_DT")
		private Date savedDt;
	
		@Column(name="JOBTITLE")
		private String jobTitle;
		
		@Column(name="JOBID")
		private int jobId;
		
		@Column(name="EDUCATION")
		private String education;
		
		@Column(name="SALARY")
		private String salary;
		
		@Column(name="STATE")
		private String state;
		
		@Column(name="ZIPCODE")
		private String zipcode;
		
		@Column(name="RELOCATION")
		private String relocation;
		
		@Column(name="RELSTATES")
		private String candidaterId;
		
		@Column(name="WORKAUTH")
		private String workauth;
		
		@Column(name="EMPTYPE")
		private String emptype;
		
		@Column(name="SECURITYCLE")
		private String securityCle;
		
		@Column(name="UPDATED")
		private String updated;
		
		@Column(name="POSTINGDT_STR")
		private String postingdtStr;
		
		@Column(name="STATUS")
		private String status;
		
		@Column(name="VISA")
		private String visa;
		
		@Column(name="RATE")
		private String rate;
		
		@Column(name="RESUME")
		private String file;
		
		
		 @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL,mappedBy="candidate")
	//	@JoinTable(name = "viewcandidates", joinColumns = { @JoinColumn(name = "CANDIDATE_ID") }, inverseJoinColumns = { @JoinColumn(name = "VIEW_ID") })
		private List<ViewCandidates> viewCandidates; 
		 

		public int getCandidateId() {
			return candidateId;
		}

		public void setCandidateId(int candidateId) {
			this.candidateId = candidateId;
		}

		public String getCandidaterName() {
			return candidaterName;
		}

		public void setCandidaterName(String candidaterName) {
			this.candidaterName = candidaterName;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}

		public String getPhoneTwo() {
			return phoneTwo;
		}

		public void setPhoneTwo(String phoneTwo) {
			this.phoneTwo = phoneTwo;
		}

		public Date getPostingDt() {
			return postingDt;
		}

		public void setPostingDt(Date postingDt) {
			this.postingDt = postingDt;
		}
 
		public String getJobTitle() {
			return jobTitle;
		}

		public void setJobTitle(String jobTitle) {
			this.jobTitle = jobTitle;
		}

		public String getEducation() {
			return education;
		}

		public void setEducation(String education) {
			this.education = education;
		}

		public String getSalary() {
			return salary;
		}

		public void setSalary(String salary) {
			this.salary = salary;
		}

		public String getState() {
			return state;
		}

		public void setState(String state) {
			this.state = state;
		}

		public String getZipcode() {
			return zipcode;
		}

		public void setZipcode(String zipcode) {
			this.zipcode = zipcode;
		}

		public String getRelocation() {
			return relocation;
		}

		public void setRelocation(String relocation) {
			this.relocation = relocation;
		}

		public String getCandidaterId() {
			return candidaterId;
		}

		public void setCandidaterId(String candidaterId) {
			this.candidaterId = candidaterId;
		}

		public String getWorkauth() {
			return workauth;
		}

		public void setWorkauth(String workauth) {
			this.workauth = workauth;
		}

		public String getEmptype() {
			return emptype;
		}

		public void setEmptype(String emptype) {
			this.emptype = emptype;
		}

		public String getSecurityCle() {
			return securityCle;
		}

		public void setSecurityCle(String securityCle) {
			this.securityCle = securityCle;
		}

		public String getUpdated() {
			return updated;
		}

		public void setUpdated(String updated) {
			this.updated = updated;
		}

		public String getPostingdtStr() {
			return postingdtStr;
		}

		public void setPostingdtStr(String postingdtStr) {
			this.postingdtStr = postingdtStr;
		}
 
		public List<ViewCandidates> getViewCandidates() {
			return viewCandidates;
		}

		public void setViewCandidates(List<ViewCandidates> viewCandidates) {
			this.viewCandidates = viewCandidates;
		}
 
		public Date getSavedDt() {
			return savedDt;
		}

		public void setSavedDt(Date savedDt) {
			this.savedDt = savedDt;
		}

		public int getJobId() {
			return jobId;
		}

		public void setJobId(int jobId) {
			this.jobId = jobId;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public String getVisa() {
			return visa;
		}

		public void setVisa(String visa) {
			this.visa = visa;
		}

		public String getFile() {
			return file;
		}

		public void setFile(String file) {
			this.file = file;
		}

		public String getRate() {
			return rate;
		}

		public void setRate(String rate) {
			this.rate = rate;
		}

		
}