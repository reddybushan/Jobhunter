<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

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
	
		<div    align="right">
		 		<a>&nbsp;</a>
		 		<a href="<c:url value='/candidatehistory?candidateId=${candidatehistory.candidateId}'/>"><strong>Back to List</strong></a>
	</div>
	<div class="generic-container">
		
		<c:url var="candUrl" value="/saveCandidate" />
	<form action="${candUrl}"  method="post" class="form-horizontal"  >	
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Submission Details</span></div>
		  	
			<table class="table table-hover">
	    		<thead>
	    		<tr>
				        <th>Candidate Id</th> <td> <input id="candidateId" name="candidateId" type="text" size="20" value="${candidatehistory.candidateId}"/> </td>
				    </tr>
				    <tr>
				        <th>Candidate Id</th> <td> <input id="jobId" name="jobId" type="text" size="20" value="${candidatehistory.jobId}"/> </td>
				    </tr>
				    <tr>
				        <th>Candidate Id</th> <td> <input id="jobTitle" name="jobTitle" type="text" size="20" value="${candidatehistory.jobTitle}"/> </td>
				    </tr>
		      		<tr>
				        <th>Candidate Name</th> <td> <input id="candidaterName" name="candidaterName" type="text" size="20" value="${candidatehistory.candidaterName}"/> </td>
				    </tr>
				    <tr>
				        <th>Phone</th> <td><input id="phone" name="phone"  type="text" size="20"  value="${candidatehistory.phone}"/> </td>
				    </tr>
				    <tr>
				        <th>Email</th> <td><input id="email" name="email"  type="text" size="20"  value="${candidatehistory.email}"/></td>
				    </tr>
				    <tr>
				        <th>Education</th> <td><input id="education" name="education"  type="text" size="20"  value="${candidatehistory.education}" /> </td>
				    </tr>
				     <tr>
				        <th>Salary</th> <td><input id="salary" name="salary"  type="text" size="20"  value="${candidatehistory.salary}" /> </td>
				    </tr>
				     <tr>
				        <th>State</th> <td><input id="state" name="state"  type="text" size="20"  value="${candidatehistory.state}"/> </td>
				    </tr>
				     <tr>
				        <th>Zipcode</th> <td><input id="zipcode" name="zipcode"  type="text" size="20"  value="${candidatehistory.zipcode}"/> </td>
				    </tr>
				     <tr>
				        <th>Relocation</th> <td><input id="relocation" name="relocation"  type="text" size="20"  value="${candidatehistory.relocation}" /> </td>
				    </tr>
				     <tr>
				        <th>Emp Type</th> <td><input id="emptype" name="emptype"  type="text" size="20"  value="${candidatehistory.emptype}"/> </td>
				    </tr>
				     <tr>
				        <th>Resume</th> <td><input id="file" name="file"  type="file" size="20"  /> </td>
				    </tr>
				     <tr>
				        <th>Rate</th> <td><input id="status" name="rate"  type="text" size="20"  value="${candidatehistory.status}"/> </td>
				    </tr>
				     <tr>
				        <th>Location </th> <td><input id="rate" name="rate"  type="text" size="20"  value="${candidatehistory.rate}" /> </td>
				    </tr>
				      <tr>
				        <th>Visa </th> <td><input id="visa" name="visa"  type="text" size="20"  value="${candidatehistory.visa}" /> </td>
				    </tr>
		    	</thead>
	    		<tbody>
				<tr><td colspan="2" align="right"><input type="submit" class="btn btn-block btn-primary btn-default" value="Save"></td></tr>
	    		</tbody>
	    	</table>
		</div>
		</form>
   	</div>
   		
 </div> 
    
   
</body>
</html>