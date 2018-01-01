<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account</title>
<link href="<c:url value='/static/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div id="mainWrapper">
	<%@include file="authheader.jsp" %>	
	

		<div align="right">
			<a>&nbsp;</a> <a href="<c:url value='listAccounts'/>"><strong>Back
					to List</strong></a>
		</div>

		<div class="generic-container">

			<c:url var="accountUrl" value="/account" />
			<form:form action="account" method="post" class="form-horizontal"
				modelAttribute="client">
				<div class="panel panel-default">
					<!-- Default panel contents -->
					<div class="panel-heading">
						<span class="lead">Account Details</span>
					</div>

					<table class="table table-hover">
						<thead>
							<form:hidden path="clientId" />
							<tr>
								<th>Account Name Title</th>
								<td><form:input path="name" /></td>
								<td><form:errors path="name" cssClass="has-error" /></td>

							</tr>
							<tr>
								<th>POC</th>
								<td><form:input path="poc" /></td>
								<td><form:errors path="poc" cssClass="has-error" /></td>
							</tr>
							<tr>
								<th>Email</th>
								<td><form:input path="email" /></td>
								<td><form:errors path="email" cssClass="has-error" /></td>
								
							</tr>
							<tr>
								<th>Phone</th>
								<td><form:input path="phone" /></td>
								<td><form:errors path="phone" cssClass="has-error" /></td>
								
							</tr>
							<tr>
								<th>Account Holder Name</th>
								<td><form:input path="accountHolderName" /></td>
								<td><form:errors path="accountHolderName" cssClass="has-error" /></td>
								
							</tr>
							<tr>
								<th>Pseudoname</th>
								<td><form:input path="pseudoName" /></td>
								<td><form:errors path="pseudoName" cssClass="has-error" /></td>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2" align="right"><input type="submit"
									class="btn btn-block btn-primary btn-default" value="Save"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</form:form>
		</div>

	</div>


</body>
</html>