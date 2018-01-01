package com.jobhunter.model;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="JOBS")
public class Jobs implements Serializable{
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	 @Column(name = "JOB_ID")
	private int jobId;
 
	@NotEmpty
	@Column(name="JOB_TITLE")
	private String jobTitle;
		
	@NotEmpty
	@Column(name="LOCATION")
	private String location;

	@NotEmpty
	@Column(name="JOB_DESCRIPTION")
	private String jobDescription;

	
	@Column(name="PHONE")
	private String phone;

	
	@Column(name="PHONE2")
	private String phone2;
	
	@NotEmpty
	@Column(name="MANDATORY_SKILLS")
	private String mandatorySkills;
	
	public enum JobTypeEnum {
		open, hold, close;
	}
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATUS")
	private JobTypeEnum status = JobTypeEnum.open;
	
	public enum VisaStatusEnum {
		usg,gc,	gcad,tn,h1,opt,cpt,l1,l2,other;
	}
	
	@Enumerated(EnumType.STRING)
	@Column(name="VISA_STATUS")
	private VisaStatusEnum visaStatus = VisaStatusEnum.gc;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "RECRUITER_ID")
	private User recruiter;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "CLIENT_ID")
	private Client client;
	
	@Column(name="START_DT")
	private Date startDt;
	
	/*@Transient
	private int clientId;
	
	@Transient
	private int recruiterId;*/
	
	@Column(name="END_DT")
	private Date endDt;
	
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy="job")
	//@JoinTable(name = "SUBMITCANDIDATES")
	//, joinColumns = { @JoinColumn(name = "JOB_ID") }, inverseJoinColumns = { @JoinColumn(name = "SUBMIT_ID") })
	private Set<SubmitCandidates> submitCandidate;
	

	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL,mappedBy="job")
	//@JoinTable(name = "VIEWCANDIDATES", joinColumns = { @JoinColumn(name = "JOB_ID") }, inverseJoinColumns = { @JoinColumn(name = "VIEW_ID") })
	private Set<ViewCandidates> viewCandidate;
	
	
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy="jobId")
	//@JoinTable(name = "ASSIGNED_RECRUITER", joinColumns = { @JoinColumn(name = "JOB_ID") }, inverseJoinColumns = { @JoinColumn(name = "ASSIGNED_ID") })
	private Set<Assignedrecruiter> assignedRecruier;
	
	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getMandatorySkills() {
		return mandatorySkills;
	}

	public void setMandatorySkills(String mandatorySkills) {
		this.mandatorySkills = mandatorySkills;
	}
 

	public Date getStartDt() {
		return startDt;
	}

	public void setStartDt(Date startDt) {
		this.startDt = startDt;
	}

	public Date getEndDt() {
		return endDt;
	}

	public void setEndDt(Date endDt) {
		this.endDt = endDt;
	}

	public Set<ViewCandidates> getViewCandidate() {
		return viewCandidate;
	}

	public void setViewCandidate(Set<ViewCandidates> viewCandidate) {
		this.viewCandidate = viewCandidate;
	}

	
	
	public Set<Assignedrecruiter> getAssignedRecruier() {
		return assignedRecruier;
	}

	public void setAssignedRecruier(Set<Assignedrecruiter> assignedRecruier) {
		this.assignedRecruier = assignedRecruier;
	}

	public JobTypeEnum getStatus() {
		return status;
	}

	public void setStatus(JobTypeEnum status) {
		this.status = status;
	}

	public VisaStatusEnum getVisaStatus() {
		return visaStatus;
	}

	public void setVisaStatus(VisaStatusEnum visaStatus) {
		this.visaStatus = visaStatus;
	}

	public User getRecruiter() {
		return recruiter;
	}

	public void setRecruiter(User recruiter) {
		this.recruiter = recruiter;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Set<SubmitCandidates> getSubmitCandidate() {
		return submitCandidate;
	}

	public void setSubmitCandidate(Set<SubmitCandidates> submitCandidate) {
		this.submitCandidate = submitCandidate;
	}

	/*public int getClientId() {
		return clientId;
	}

	public void setClientId(int clientId) {
		this.clientId = clientId;
	}

	public int getRecruiterId() {
		return recruiterId;
	}

	public void setRecruiterId(int recruiterId) {
		this.recruiterId = recruiterId;
	}*/

	 
}