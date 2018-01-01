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
@Table(name="CANDIDATE_ACTIVITY")
public class CandidateActivity  implements Serializable{
	 
		private static final long serialVersionUID = 1L;
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		 @Column(name = "ACTIVITY_ID")
		private int activityId;
		
		@Column(name="CANDIDATE_ID")
		private String candidateId;
		
		@Column(name="ACTIVITY")
		private String activity;
		
		@Column(name="EMAIL")
		private String email;
		
		@Column(name="COMMENTS")
		private String comments;
		
		@Column(name="ACTIVITY_DATE")
		private Date activityDt;

		@Column(name="USER_ID")
		private String userId;
		
		@Column(name="JOBID")
		private int jobId;

		public int getActivityId() {
			return activityId;
		}

		public void setActivityId(int activityId) {
			this.activityId = activityId;
		}

		public String getActivity() {
			return activity;
		}

		public void setActivity(String activity) {
			this.activity = activity;
		}

		public String getComments() {
			return comments;
		}

		public void setComments(String comments) {
			this.comments = comments;
		}

		public Date getActivityDt() {
			return activityDt;
		}

		public void setActivityDt(Date activityDt) {
			this.activityDt = activityDt;
		}

		public String getUserId() {
			return userId;
		}

		public void setUserId(String userId) {
			this.userId = userId;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public int getJobId() {
			return jobId;
		}

		public void setJobId(int jobId) {
			this.jobId = jobId;
		}

		public String getCandidateId() {
			return candidateId;
		}

		public void setCandidateId(String candidateId) {
			this.candidateId = candidateId;
		}
	 
}
