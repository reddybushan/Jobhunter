package com.jobhunter.model;

public class TokenUtil {
	
	public static String userName;
	
	public static Integer userId;

	public static String getUserName() {
		return userName;
	}

	public static void setUserName(String userName) {
		TokenUtil.userName = userName;
	}

	public static Integer getUserId() {
		return userId;
	}

	public static void setUserId(Integer integer) {
		TokenUtil.userId = integer;
	}
	

}
