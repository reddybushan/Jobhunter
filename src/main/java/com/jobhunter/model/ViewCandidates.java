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
@Table(name="VIEWCANDIDATES")
public class ViewCandidates  implements Serializable{
	 
		private static final long serialVersionUID = 1L;
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		 @Column(name = "VIEW_ID")
		private int viewId;
		
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

		@Column(name="OPENEDDT")
		private Date openedDt;

		public int getViewId() {
			return viewId;
		}

		public void setViewId(int viewId) {
			this.viewId = viewId;
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

		public Date getOpenedDt() {
			return openedDt;
		}

		public void setOpenedDt(Date openedDt) {
			this.openedDt = openedDt;
		}

		public Jobs getJob() {
			return job;
		}

		public void setJob(Jobs job) {
			this.job = job;
		}

		public Candidate getCandidate() {
			return candidate;
		}

		public void setCandidate(Candidate candidate) {
			this.candidate = candidate;
		}
 
}
