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
<div>
<%@include file="authheader.jsp" %>	
	<div    align="right">
		 		<a>&nbsp;</a>
		 		<a href="<c:url value='/list' />"><strong>Back to List</strong></a>
	</div>
		 
</div>
		 
	<div class="generic-container">
		
		<div class="panel panel-default">
		  	<div class="panel-heading"><span class="lead">Job Details </span></div>
		  	
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Job Title : </th> <td>Java </td>
				         <th>Start Date :</th> <td>2017-05-20 </td>
				     </tr>   
		    	</thead>
	    	</table>
		</div>
		
   	</div>
   	
   	<div class="maingeneric-container" style= "margin-top: 120px;">
		<div class="panel panel-default">
		<table class="table table-hover">
	    	<tr>
				<td  width="10%" >
						<label>Date</label>
	    	   </td>
	    	<td  width="10%">
					 <label>Time</label>
	    	   </td>
	    	<td  width="20%">
	    	 <label>Consultant Name</label>
	    	   </td>
	    	<td width="20%"	>
	    	 <label>Email</label>
	    	   </td>

    		<td  width="10%">
					 <label>Phone1</label> 
	    	   </td>
	    	<td  width="10%">
	    	 <label>Phone2</label>
	    	   </td>
	    	 
	    	 <td  width="10%">
	    	  <label>Status</label>
	    	   </td>
	    	   
	    	   <td  width="10%">
	    	     <label>Visa</label>
	    	   </td>
	    	</tr> 
	    	
	    	<tr>
	    		<td > 2017-05-20</td>
	    		<td > 12:30 PM </td>
	    		<td > <a href="candidatedetails"><strong>Robert Green</strong></a></td>
	    		<td ><a href="candidatedetails"><strong>robert.green@gmail.com</strong></a></td>
	    		<td > 895678433</td>
	    		<td > 895678433</td>
	    		<td > Open  </td>
	    		<td > Green Card  </td>
	    	</tr>
	    	<tr>
	    		<td > 2017-01-08</td>
	    		<td > 02:30 PM </td>
	    		<td > <a href="candidates"><strong>David Blue</strong></a></td>
	    		<td ><a href="candidates"><strong>david.blue@gmail.com</strong></a></td>
	    		<td > 895678433</td>
	    		<td > 895678433</td>
	    		<td > Open  </td>
	    		<td > Green Card  </td>
	    	</tr>
	    	<tr>
	    			 <td > 2017-04-15</td>
	    		<td > 03:30 PM </td>
	    		<td > <a href="candidates"><strong>Yellow Matt</strong></a></td>
	    		<td ><a href="candidates"><strong>yellowmatt@gmail.com</strong></a></td>
	    		<td > 895678433</td>
	    		<td > 895678433</td>
	    		<td > Open  </td>
	    		<td > Green Card  </td>
	    	</tr>
	    		 
	    	</table>
		</div>
   	</div>
   	<div>
		 
</div>
   </div>
</body>
</html>