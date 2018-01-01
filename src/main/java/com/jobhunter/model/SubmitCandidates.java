package com.jobhunter.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="SUBMITCANDIDATES")
public class SubmitCandidates  implements Serializable{
	 
		private static final long serialVersionUID = 1L;
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		 @Column(name = "SUBMIT_ID")
		private int submitId;
		
		@ManyToOne(fetch = FetchType.EAGER)
		@JoinColumn(name = "CANDIDATE_ID")
		private Candidate candidate;
		
		@ManyToOne(fetch = FetchType.EAGER)
		@JoinColumn(name = "JOB_ID")
		private Jobs job;
		
		@Column(name="JOBTITLE")
		private String jobTitle;
		
		@Column(name="USERID")
		private String userId;
		
		@Column(name="STATUS")
		private String status;

		@Column(name="SUBMITTEDDT")
		private Date submittedDt;
		
		@Column(name="RATE")
		private String rate;
		
		@Column(name="VISA")
		private String visa;

		public int getSubmitId() {
			return submitId;
		}

		public void setSubmitId(int submitId) {
			this.submitId = submitId;
		}

		public Candidate getCandidate() {
			return candidate;
		}

		public void setCandidate(Candidate candidate) {
			this.candidate = candidate;
		}

		public Jobs getJob() {
			return job;
		}

		public void setJob(Jobs job) {
			this.job = job;
		}

		public String getJobTitle() {
			return jobTitle;
		}

		public void setJobTitle(String jobTitle) {
			this.jobTitle = jobTitle;
		}

		public String getUserId() {
			return userId;
		}

		public void setUserId(String userId) {
			this.userId = userId;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public Date getSubmittedDt() {
			return submittedDt;
		}

		public void setSubmittedDt(Date submittedDt) {
			this.submittedDt = submittedDt;
		}

		public String getRate() {
			return rate;
		}

		public void setRate(String rate) {
			this.rate = rate;
		}

		public String getVisa() {
			return visa;
		}

		public void setVisa(String visa) {
			this.visa = visa;
		}
 
}
