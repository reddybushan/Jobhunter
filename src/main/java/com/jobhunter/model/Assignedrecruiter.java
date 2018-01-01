package com.jobhunter.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ASSIGNED_RECRUITER")
public class Assignedrecruiter implements Serializable{
	 
		private static final long serialVersionUID = 1L;
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		 @Column(name = "ASSIGNED_ID")
		private int assignedId;
		
		@Column(name="USER_ID")
		private String userId;
		
		@Column(name="RECRUITER_NAME")
		private String recruiterName;
		
		@Column(name="CLIENTID")
		private String clientId;
		
		@Column(name="JOB_ID")
		private String jobId;
		
		@Column(name="START_DT")
		private Date startDt;
		
		@Column(name="END_DT")
		private Date endDt;
		
		@Column(name="STATUS")
		private String status;

		public int getAssignedId() {
			return assignedId;
		}

		public void setAssignedId(int assignedId) {
			this.assignedId = assignedId;
		}

		public String getUserId() {
			return userId;
		}

		public void setUserId(String userId) {
			this.userId = userId;
		}

		public String getRecruiterName() {
			return recruiterName;
		}

		public void setRecruiterName(String recruiterName) {
			this.recruiterName = recruiterName;
		}

		public String getClientId() {
			return clientId;
		}

		public void setClientId(String clientId) {
			this.clientId = clientId;
		}

		public String getJobId() {
			return jobId;
		}

		public void setJobId(String jobId) {
			this.jobId = jobId;
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

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}
		

}
