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
		<span class="lead"> Account List</span>
		<h4 align="right">
			Create Account <a class="newancho" href="account">here</a>
		</h4>
		<table class="table table-hover">

			<th>Name</th>
			<th>Email</th>
			<th>POC</th>
			<th>Phone</th>
			<th>Account Holder Name</th>
			<th>Pseudoname</th>
			<th>Action</th>
			<c:forEach var="client" items="${listClients}">
				<tr>

					<td>${client.name}</td>
					<td>${client.email}</td>
					<td>${client.poc}</td>
					<td>${client.phone}</td>
					
					<td>${client.accountHolderName}</td>
					<td>${client.pseudoName}</td>
					<td><a  class="newancho" href="account?id=${client.clientId}">Edit</a>
						&nbsp;&nbsp;&nbsp;</td>

				</tr>
			</c:forEach>
		</table>
		
	</div>
	</div>
	
	
</body>

</html>