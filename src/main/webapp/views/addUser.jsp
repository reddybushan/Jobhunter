<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>User</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div id="mainWrapper">
		 	<%@include file="authheader.jsp" %>	
		 
		 <div    align="right">
		 		<a>&nbsp;</a>
		 		<a href="<c:url value='/listUsers'/>"><strong>Back to List</strong></a>
		</div>
	
	<div class="generic-container">
		
		<c:url var="accountUrl" value="/account" />
	<form:form action="" method="post" class="form-horizontal" modelAttribute="user">	
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Add/Edit User</span></div>
		  	
			<table class="table table-hover">
	    		<thead>
	    		<form:hidden path="id"/>
		      		<tr>
				        <th>Name </th> <td> <form:input path="firstName" /> </td>
				        <td><form:errors path="firstName" cssClass="has-error" /></td>
				    </tr>
				    <tr>
				        <th>Password</th> <td><form:password path="password" /></td>
				    </tr>
				    <tr>
				        <th>Email</th> <td><form:input path="email" /></td>
				        <td><form:errors path="email" cssClass="has-error" /></td>
				    </tr>
				    	
				    	<tr>
				        <th>User Role</th> <td>
				        
 <form:select path="userProfiles" >
 
 <form:options items="${userProfiles}" itemLabel="type"
                                        itemValue="id" />
 </form:select>
				        
			
								</td>
				    </tr>
				    </thead>
	    		<tbody>
				<tr><td colspan="2" align="right"><input type="submit" class="btn btn-block btn-primary btn-default" value="Save"></td></tr>
	    		</tbody>
	    	</table>
		</div>
		</form:form>
   	</div>
   		
 </div> 
    
   
</body>
</html>