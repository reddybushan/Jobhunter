<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html ng-app="mymodule">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Users List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
	<script type="text/javascript">
	
	
	</script>
</head>

<body>
<div id="mainWrapper">
<div>
<%@include file="authheader.jsp" %>	
	<div    align="right">
	<a>&nbsp;</a>
		 		<a href="<c:url value='/dashboard'/>"><strong>DashBoard</strong></a>
				<a>&nbsp;</a>
				<a href="jobentry?clientId=${client.clientId}"><strong>Add Spec</strong></a>
				<a>&nbsp;</a>
				<c:if test="${userObj.userProfiles.type =='ADMIN'}">
		 		<a href="<c:url value='/listAccounts' />"><strong>Account Details</strong></a>
		 		</c:if>
		 		<a>&nbsp;</a>
		 		<a href="<c:url value='/switch' />"><strong>Switch Account</strong></a>
		 		<a>&nbsp;</a>
		 		<c:if test="${userObj.userProfiles.type =='ADMIN'}">
		 			<a href="<c:url value='/listUsers' />"><strong>ManageUsers</strong></a>
		 		</c:if>
	</div>
		 
</div>
		 
	<div class="generic-container">
		
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Account Holder Details </span></div>
		  	
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Account Name : </th> <td><c:out value="${client.name}"/></td>
				         <th>Pseudo Name :</th> <td><c:out value = "${client.poc}"/>  </td>
				     </tr>   
				      <tr> 
				        <th>Alloted Number :</th> <td><c:out value = "${client.clientId}"/></td>
				        <th>&nbsp;</th> <td>&nbsp; </td>
					</tr>
		    	</thead>
	    		<tbody>
				
	    		</tbody>
	    	</table>
		</div>
		
   	</div>
   		
   	<div class="joblist-generic-container" >
		<%-- <%@include file="authheader.jsp" %>	 --%>
		<div class="panel panel-default">
			 
		  	 <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Client Details </span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th> POC</th> <td><c:out value = "${client.poc}"/> </td>
				        <th> Email</th> <td><c:out value = "${client.email}"/> </td>
				    </tr>
				    <tr>    
				        <th> Phone</th> <td><c:out value = "${client.phone}"/> </td>
				         <th>&nbsp;</th> <td>&nbsp; </td>
				       
					</tr>
		    	</thead>
	    		<tbody>
				
	    		</tbody>
	    	</table>
		</div>
   	</div>
   	
   	<div class="maingeneric-container" ng-controller='myController'>
		<%-- <%@include file="authheader.jsp" %>	 --%>
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	
		<table class="table table-hover" width="100%">
	    	<tr>
				<td width="10%" >
					<select class="form-control" id="date" name="date">
						<option>-Date-</option>
					</select>
	    	   </td>
	    	<td  width="30%">
					<select class="form-control" id="date" name="date">
						<option>-JobTitle-</option>
					</select>
	    	   </td>
	    	<td  width="10%">
					<input class="form-control" type="text" id="tresumes" name="tresumes" readonly="readonly" value="Total Resumes"/>
						 
	    	   </td>
	    	<td width="10%"	>
					<input class="form-control" type="text" id="tsubmission" name="tsubmission" readonly="readonly" value="Submissions"/>
	    	   </td>

    		<td  width="10%">
					<select class="form-control" id="date" name="date">
						<option>-Status-</option>
					</select>
	    	   </td>
	    	<td  width="30%">
					<input class="form-control" type="text" id="arecruiter" name="arecruiter" readonly="readonly" value="Assigned Recruiters"/>
	    	   </td>
	    	</tr> 
	    	<c:forEach var="job" items="${jobs}">
	    	<tr>
	    		<td > ${job.startDt}</td>
	    		<td ><a class="newancho" href="addkeywords"><strong>${job.jobTitle} </strong></a> &nbsp; ( <a class="newancho" href="jobentry?jobId=${job.jobId}"><strong> Edit </strong></a> / <a class="newancho" href="#"><strong> Keywords </strong></a> )</td>
	    		<td > <a class="newancho" href="viewcandidates?jobId=${job.jobId}"><strong>${job.viewCandidate.size()}</strong></a> </td>
	    		<td ><a class="newancho" href="submitcandidates?jobId=${job.jobId}"><strong>${job.submitCandidate.size()}</strong></a></td>
	    		<td > ${job.status}</td>
	    		<td > 
	    		<select class="form-control" id="date" name="date">
						<option selected>${job.recruiter.firstName}</option>
				</select>
				 </td>
	    	</tr>
	    	</c:forEach>
	    
	    	</table>
		</div>
   	</div>
   	<div>
		 
</div>
   </div>
</body>
</html>