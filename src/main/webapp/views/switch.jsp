<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Switch Account</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	
	<div id="mainWrapper">
	<%@include file="authheader.jsp" %>	
	
	<br><br>
	<div    align="right">
		 		<a>&nbsp;</a>
		 		<a href="<c:url value='/dashboard'/>"><strong>DashBoard</strong></a>
	</div>
	<c:url var="listUrl" value="/list" />
	<form action="" method="post" class="form-horizontal">	 
	<div class="generic-container">
		
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Switch Account</span></div>
		  	
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Account Name </th> <td> 
				        <div class="input-group input-sm">
								<label class="input-group-addon" for="account"><i class="fa fa-user"></i></label>
							 
								 <select id="clientId" name="clientId">
								<c:forEach var="client" items="${clients}">
									<option value="${client.clientId}">${client.name}</option>
								</c:forEach>
							</select>

						</div>
				        </td>
				    </tr>
		    	</thead>
	    		<tbody>
				<tr><td colspan="2" align="right">
				<input type="submit" class="btn btn-success custom-width" value="Submit">
				</td></tr>
	    		</tbody>
	    	</table>
		</div>
		
   	</div>
   		
  
    </form>
   </div>
</body>
</html>