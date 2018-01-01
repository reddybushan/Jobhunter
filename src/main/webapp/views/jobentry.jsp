<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
	
	<div    align="right">
		 		<a>&nbsp;</a>
		 		<a href="list"><strong>Back to List</strong></a>
	</div>
		 
	<div class="generic-container">
		
		<c:url var="jobUrl" value="/jobentry" />
		<c:set var="readOnlyProp" value="${userObj.userProfiles.type !='ADMIN'}"/>'
		
		<form:form action="jobentry" method="post" class="form-horizontal" modelAttribute="job">	
	 
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">Create/Edit Job </span></div>
		  	
			<table class="table table-hover">
			<form:hidden path="jobId"/>
	    		<thead>
		      		<tr>
				        <th>Job Title</th> <td>  <form:input path="jobTitle" /> </td>
				        <td><form:errors path="jobTitle" cssClass="has-error" /></td>
				    </tr>
				    <tr>
				        <th>Location</th> <td><form:input path="location" /> </td>
				        <td><form:errors path="location" cssClass="has-error" /></td>
				    </tr>
				    <tr>
				        <th>Job description</th> <td><form:textarea  path="jobDescription"  rows="3" cols="55"/>  </td>
				        <td><form:errors path="jobDescription" cssClass="has-error" /></td>
				    </tr>
				    <tr>
				        <th>Mandatory Skills</th> <td><form:textarea path="mandatorySkills"  rows="3" cols="55"/> </td>
				        <td><form:errors path="mandatorySkills" cssClass="has-error" /></td>
				     </tr>
				   
				      <tr>
				      				      
				      
				        <th>Status
				        </th> <td>
				         
						<form:select path="status" disabled="${readOnlyProp}" items="${JobTypeEnum}"  />
				         </td>
				         					
				         
				    </tr>
				      <tr>
				        <th>Visa Status</th> <td>
				        <form:select path="visaStatus"  items="${VisaStatusEnum}" />
			

								</td>
				    </tr>
				     <tr>
				        <th>Client</th> 
				        <td>
				        <form:select path="client" disabled="${readOnlyProp}">
 
 <form:options  items="${clients}" itemLabel="name"
                                        itemValue="clientId" />
 </form:select>
				        
				         </td>
				    </tr>
				    <tr>
				        <th>User</th> 
				        <td>
				        <form:select path="recruiter" disabled="${readOnlyProp}">
				        <form:options items="${users}" itemLabel="firstName"
                                        itemValue="id" />
 </form:select>
				       
				         </td>
				         
				    </tr>
		    	</thead>
	    		<tbody>
				<tr><td colspan="2" align="right"><input type="submit" class="btn btn-success custom-width" value="Submit"></td></tr>
	    		</tbody>
	    	</table>
		</div>
		<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
		</form:form>
   	</div>
   		
  
    </div>
   
</body>
</html>