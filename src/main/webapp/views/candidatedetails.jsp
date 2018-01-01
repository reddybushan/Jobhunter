<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Candidate Details</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
<div id="mainWrapper">
<div>
<%@include file="authheader.jsp" %>	
	<div    align="right">
		 		<a>&nbsp;</a>
		 		<a href="<c:url value='/candidates' />"><strong>Back to List</strong></a>
	</div>
		 
</div>
		 
	<div class="generic-container">
		
		<div class="panel panel-default">
		  	<div class="panel-heading"><span class="lead">Candidate Details </span></div>
		  	
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Consultant Name : </th> <td>Robert Green </td>
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
	    	<td  width="25%">
					 <label>Recruiter</label>
	    	   </td>
	    	<td  width="25%">
	    	 <label>email</label>
	    	   </td>
	    	 
	    	 <td  width="10%">
	    	  <label>Status</label>
	    	   </td>
	    	 
	    	 <td  width="20%">
	    	  <label>Comments</label>
	    	   </td>
	    	 <td  width="10%"> Action </td>  
	    	</tr> 
	    	
	    	<tr>
	    		<td > 2017-05-20</td>
	    		<td > <strong>Narayana </strong></td>
	    		<td ><strong>narayan@gmail.com</strong></td>
	    		<td > Interviewed  </td>
	    		 <td align="left"><textarea rows="2" cols="55"> Candidate High rate</textarea>  </td>
	    		 <td><a href="#" class="btn btn-success custom-width">Save</a></td>
	    	</tr>
	    	<tr>
	    		<td > 2017-05-05</td>
	    		<td ><strong>Ramesh</strong></td>
	    		<td ><strong>ramesh@gmail.com</strong></td>
	    		<td > Called  </td>
	    		 <td align="left"><textarea rows="2" cols="55">Interview scheduled on 20Oct </textarea>  </td>
	    		  <td>&nbsp;</td>
	    	</tr>
	    	<tr>
	    		 <td > 2017-04-15</td>
	    		<td > <strong>sinu</strong></td>
	    		<td ><strong>sinu@gmail.com</strong></td>
	    		<td > Called  </td>
	    		  <td align="left"><textarea rows="2" cols="55"> Not picked call</textarea>  </td>
	    		   <td>&nbsp;</td>
	    	</tr>
	    		 
	    	</table>
		</div>
   	</div>
   	<div>
		 
</div>
   </div>
</body>
</html>