<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Users List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div id="mainWrapper">
		<%@include file="authheader.jsp" %>	
	
		 
	<div class="generic-container">
		
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Add Keywords</span></div>
		  	
			<table class="table table-hover">
	    		<thead>
				    <tr>
				        <th>Keywords</th> <td><textarea id="result" rows="10" cols="55"></textarea> </td>
				    </tr>
				    
				   
		    	</thead>
	    		<tbody>
				<tr>
				<td colspan="2" align="left"> <input id=key type="text" size=65   />
				  <a href="#" onclick="document.getElementById('result').value = document.getElementById('key').value;document.getElementById('key').value='';" class="btn btn-success custom-width">Add</a></td></tr>
	    		</tbody>
	    	</table>
		</div>
		
   	</div>
   		
  </div>
    
   
</body>
</html>