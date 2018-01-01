<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Candidate Details</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/themes/redmond/jquery-ui.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.2/css/ui.jqgrid.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.2/jquery.jqgrid.min.js"></script>
    <script>
    //<![CDATA[
    $(function () {
    	 $grid = $("#list");
    	 var today = new Date();
    	 var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
    	 var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    	 var jobTitle = "${jobs.jobTitle}";
    	 var jobId = "${jobs.jobId}";
    	 var lastsel;
    	 var vc = "${scandidate.size()}";
    		var myData = [];
    		var sub_array = [];
    	  
    		
    		<c:forEach var="candidate" items="${scandidate}" varStatus="loop">
    		 id = "${candidate.candidate.candidateId}";
    		 candName = "${candidate.candidate.candidaterName}";
    		 email = "${candidate.candidate.email}";
    		 phone = "${candidate.candidate.phone}";
    		 phone2 = "${candidate.candidate.phoneTwo}";
    		 status = "${candidate.candidate.status}";
    		 visa = "${candidate.candidate.visa}";	 
    		 
        	sub_array.push({Date: "2017-05-20", Time: "12:30 PM" ,jobTitle:jobTitle,jobId:jobId ,candidateId:id, candidaterName: candName, email: email, Phone: phone , phoneTwo: phone2 , Status: status, Visa: visa});
    	</c:forEach>
    	
    	
    	
    	   var newData =({Date: date, Time: time,jobTitle:jobTitle,jobId:jobId,candidateId:0});
    	 var Status = { 'NI': 'Not Interested', 'VM': 'Voice Mail' , 'HR': 'High rate', 'NR': 'No relocation' ,'OR' :'Only remote','PL':'Pipeline','EM':'Email'};
    	var Visa = { 'USC': 'USC', 'GC': 'GC' , 'GC-EAD': 'GC-EAD', 'TN': 'TN' ,'H1' :'H1','OPT':'OPT','CPT':'CPT','L1':'L1','L2':'L2','other':'other'};
    	    
        "use strict";
        $grid.jqGrid({
        	width : '1024px',
        	height : '20%',
        	datatype: "json",
			datatype : 'local',
			data : JSON.parse(JSON.stringify(sub_array)),
			colNames : ['Date', 'Time','jobTitle','jobId','candidateId','candidaterName', 'email', 'phone',
							'phoneTwo', 'Status', 'Visa'],
            colModel: [
                   
                {
                	name: "Date" ,
               		width : '20%',
       				align : 'center',
       				sorttype : 'date',
       				editrules : {
    					required : true
    				},
    				formatter : 'date',
    				formatoptions : {
    					newformat : 'd-M-Y'
    				},
    				datefmt : 'd-M-Y',
    				 editable: true
                },
                {
                	name: "Time",
                	width : '20%',
    				sortable : false,
    				 editable: true
                },
                {
                	name: "jobTitle",
                	width : '20%',
    				sortable : false,
    				 editable: true
                },
                {
                	name: "jobId",
                	width : '20%',
    				sortable : false,
    				 editable: true
                },
                {
                	name: "candidateId",
                	width : '10%',
    				edittype:'text',
    				editoptions: {size:10,maxlength:7},
    				sortable : false,
    				editable:true
                },
                {
                	name: "candidaterName",
                	width : '30%',
    				edittype:'text',
    				editoptions: {size:10,maxlength:7},
    				 formatter: function (cellvalue, options, rowObject) {
    					 if(cellvalue === undefined) return '';
    				        return '<a href="candidatehistory?candidateId=' + rowObject.candidateId + '">' +
    				            cellvalue + "</a>";
    				    },
    				 
    				sortable : false,
    				editable:true 
                },
                
                {
                	name: "email",
                	width : '20%',
                	edittype:'text',
    				sortable : false,
    				 editable:true
                },
                {
                	name: "Phone",
                	width : '20%',
    				sortable : false,
    				 editable:true
    			},
                {
    				name: "phoneTwo",
                	width : '20%',
    				sortable : false ,
    				 editable:true
    				
                },
                { 
                	name: "Status",
                	width : '20%',
    				edittype:'text',
    				editoptions: {size:40,maxlength:30},
    				 formatter: 'select',
    				 editable:true,
    				 edittype:"select",
    				 editoptions:{value:Status}
                },
                { 
                	name: "Visa",
                	width : '30%',
                	index: 'visa',
    				sortable : false,
    				 formatter: 'select',
    				 editable:true,
    				 edittype:"select",
    				 editoptions:{value:Visa}
        		}
            ],
            rowNum : 10,
			rowList : [ 5, 10, 20 ],
			pager : '#pager',
			gridview : true,
			ignoreCase : true,
			rownumbers : true,
			sortname : 'Date',
			viewrecords : true,
			editurl: "saveCandidate",
			caption: "Submitted Candidates List",
			sortorder : 'desc' ,
				onSelectRow: function(id){
				/* 	if(id && id!==lastsel){
						$grid.jqGrid('restoreRow',lastsel);
						$grid.jqGrid('editRow',id,true);
						lastsel=id;
					} */
				},
           
        });
        
     
       // $grid.addRowData(newData, 'last','after' );
      //  $grid.addRowData("recid", newData);
        
        $grid.jqGrid('navGrid',"#pager",{edit:false,add:false,del:false});
        $grid.jqGrid('inlineNav',"#pager");
    });
    //]]>
    </script>
</head>
<body>
<div id="mainWrapper">
<div>
<%@include file="authheader.jsp" %>	
	<div    align="right">
		 		<a>&nbsp;</a>
		 		<a href="<c:url value='/list?clientId=${jobs.client.clientId}'/>"><strong>Back to List</strong></a>
	</div>
		 
</div>
<div class="generic-container">
		
		<div class="panel panel-default">
		  	<div class="panel-heading"><span class="lead">Job Details </span></div>
			<table class="table table-hover">	    		<thead>
		      		<tr>
				        <th>Job Title : </th> <td><c:out value="${jobs.jobTitle}"/> </td>
				         <th>Start Date :</th> <td><c:out value="${jobs.startDt}"/> </td>
				     </tr>   
		    	</thead>
	    	</table>
		</div>
		
   	</div>
   		<div class="maingeneric-container" style= "margin-top: 120px;">
		<div class="panel panel-default">
<table id="list">		
	</table>
</div>
   	</div>
   	<div>
		 
</div>
   </div>
</body>	
	<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
</body>
</html>