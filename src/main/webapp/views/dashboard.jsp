<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Dashboard</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
<div id="mainWrapper">
<div>
<%@include file="authheader.jsp" %>	
	<div    align="right">
				<a href="<c:url value='/switch' />"><strong>Switch Account</strong></a>
		 		<a href="#">&nbsp;</a>
		 		<a>&nbsp;</a>
		 		
	</div>
		
		<c:out value="${userObj.firstName}"/>
</div>
	
		 
	<div class="task-container">
		
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Tasks </span></div>
		  	
			<table class="table table-hover">
	    		<thead>
	    		
		      		<tr>
				         <td>
				         
				         	<marquee behavior="scroll" scrollamount="1" direction="up" style="height:190px;">
				         	<c:forEach var="task" items="${tasks}">
				         	- ${task.tasks}<br>				         	
				         	</c:forEach>
				         	</marquee>
						 </td>
					</tr>
					
		    	</thead>
	    	</table>
		</div>
		
   	</div>
   		
   	<div class="news-container" >
		<%-- <%@include file="authheader.jsp" %>	 --%>
		<div class="panel panel-default">
			 
		  	 <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">News </span></div>
			<table class="table table-hover">
	    		<thead>
	    		
		      		<tr>
				         <td>
				        
				         	<marquee behavior="scroll" height=20 scrollamount="1" direction="up" style="height:150px;">
				         	 <c:forEach var="task" items="${tasks}">
				         	- ${task.news}<br>	 
				         	</c:forEach>
				         	</marquee>
						 </td>
					</tr>
					
		    	</thead>
	    		<tbody>
				
	    		</tbody>
	    	</table>
		</div>
   	</div>
    
   </div>
</body>
</html>