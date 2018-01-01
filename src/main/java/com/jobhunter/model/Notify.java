package com.jobhunter.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Notify")
public class Notify implements Serializable{
 
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	 @Column(name = "NOTIFY_ID")
	private Integer notifyId;
 
	@NotEmpty
	@Column(name="TASKS", columnDefinition="TINYTEXT", length = 255)
	private String tasks;
		
	@NotEmpty
	@Column(name="TASKS_EXPIRY_DATE", nullable=false)
	private String tasksExpiryDate;

	@NotEmpty
	@Column(name="NEWS", columnDefinition="TINYTEXT", length = 255)
	private String news;

	@NotEmpty
	@Column(name="NEWS_EXPIRY_DATE", nullable=false)
	private String newsExpiry_date;

	@NotEmpty
	@Column(name="CREATOR_ID", nullable=false)
	private int creatorId;
	
	@NotEmpty
	@Column(name="CREATE_DATE", nullable=false)
	private String createDate;
	
	@NotEmpty
	@Column(name="STATUS", nullable=false)
	private String status;

	public Integer getNotifyId() {
		return notifyId;
	}

	public void setNotifyId(Integer notifyId) {
		this.notifyId = notifyId;
	}

	public String getTasks() {
		return tasks;
	}

	public void setTasks(String tasks) {
		this.tasks = tasks;
	}

	public String getTasksExpiryDate() {
		return tasksExpiryDate;
	}

	public void setTasksExpiryDate(String tasksExpiryDate) {
		this.tasksExpiryDate = tasksExpiryDate;
	}

	public String getNews() {
		return news;
	}

	public void setNews(String news) {
		this.news = news;
	}

	public String getNewsExpiry_date() {
		return newsExpiry_date;
	}

	public void setNewsExpiry_date(String newsExpiry_date) {
		this.newsExpiry_date = newsExpiry_date;
	}

	public int getCreatorId() {
		return creatorId;
	}

	public void setCreatorId(int creatorId) {
		this.creatorId = creatorId;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
		 
}
