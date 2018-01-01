<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Account</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
<div id="mainWrapper">
<%@include file="authheader.jsp" %>	

		
<div class="panel panel-default">
<div    align="right">
		 		<a>&nbsp;</a>
		 		<a class="newancho" href="<c:url value='/list'/>"><strong>Back to Jobs Page</strong></a>
		</div>
		<span class="lead"> User List</span>

		<h4 align="right">
			New User Register <a class="newancho" href="addUser">here</a>
		</h4>
		<table class="table table-hover">

			<th>Name</th>
			<th>Email</th>
			<th>LoginDt</th>
			<th>UserType</th>
			<th>Action</th>
			<c:forEach var="user" items="${listUsers}">
				<tr>

					<td>${user.firstName}</td>
					<td>${user.email}</td>
					<td>${user.loginDt}</td>
					<td>${user.userProfiles.type}</td>
					<td><a  class="newancho" href="addUser?userId=${user.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;</td>

				</tr>
			</c:forEach>
		</table>
		
	</div>
	</div>
	
</body>
</html>