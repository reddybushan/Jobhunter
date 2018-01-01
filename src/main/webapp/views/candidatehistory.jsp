<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Candidate History</title>
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
    	 $grid = $("#candlist");
    	 var today = new Date();
    	 var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
    	 var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
    	 var lastsel = '';
    	 var myData = [];
    	 var sub_array = [];
    	 <c:forEach var="candidate" items="${candidateactivity}" varStatus="loop">
		 email = "${candidate.email}";
		 activity = "${candidate.activity}";
		 comments = "${candidate.comments}";
		 savedDt = "${candidate.activityDt}";	 
    	sub_array.push({Date: savedDt, Time: savedDt ,candidateId:'${candidatehistory.candidateId}',jobId:'${jobs.jobId}', candidaterName:'${candidatehistory.candidaterName}', email:email, activity: activity , comments: comments});
	</c:forEach>
	
	
    	   var newData =({Date: date, Time: time,candidateId:'${candidatehistory.candidateId}',jobId:'${jobs.jobId}', candidaterName:'${candidatehistory.candidaterName}', email: '${candidatehistory.email}'});
    	 var status = { 'IV': 'Interviewed', 'CL': 'Called' , 'SL': 'Short Listed', 'HR': 'High Rate' ,'RJ' :'Rejected','PL':'Pipeline','EM':'Email'};
    	    
        "use strict";
        $grid.jqGrid({
        	url:'saveCandidateHistory',
        	width : '1024px',
        	height : '20%',
        	datatype: "json",
			datatype : 'local',
			data : JSON.parse(JSON.stringify(sub_array)),
			colNames : ['Date','Time','candidateId','jobId','candidaterName','email', 'activity', 'comments'],
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
    				editable: false
                }, 
                {
                	name: "Time",
                	width : '20%',
                	formatter:'date', 
                	formatoptions: { srcformat: 'Y-m-d H:i:s', newformat: 'h:i:s A' },
    				sortable : false,
    				 editable: false
                },
                {
                	name: "candidateId",
                	width : '10%',
                	 hidden: true,
    				 editrules: { edithidden: false },
    				editable:true
                },
                {
                	name: "jobId",
                	width : '10%',
                	 hidden: true,
    				 editrules: { edithidden: false },
    				editable:true
                },
                {
                	name: "candidaterName",
                	width : '10%',
    				edittype:'text',
    				editoptions: {size:10,maxlength:7},
    				sortable : false,
    				editable: false
                },
                {
                	name: "email",
                	width : '30%',
    				edittype:'text',
    				editoptions: {size:40,maxlength:30},
    				sortable : false,
    				editable: false
                },
                {
                	name: "activity",
                	width : '20%',
    				edittype:'text',
    				editoptions: {size:40,maxlength:30},
    				 formatter: 'select',
    				 editable:true,
    				 edittype:"select",
    				 editoptions:{value:status}
                },
                {
                	name: "comments",
                	width : '30%',
                	edittype:'text',
    				sortable : false,
    				 editable:true
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
			editurl: "saveCandidateHistory",
			caption: "Candidates List History",
			sortorder : 'desc' ,
			ondblClickRow: function(id){
					if(id && id!==lastsel){
						$grid.jqGrid('restoreRow',lastsel);
						$grid.jqGrid('editRow',id,true);
						lastsel=id;
					}
				},
           
        });
        
     
       // $grid.addRowData(newData, 'last','after' );
        $grid.addRowData("recid", newData);
        
        $grid.jqGrid('navGrid',"#pager",{edit:false,add:false,del:false});
        $grid.jqGrid('inlineNav',"#pager");
    });
  
    //]]>
    </script>
</head>
<body>
<script>
$( document ).ready(function() {
$("#bedata").click(function(){
	alert("fdfgdfgd	");
	var gr = $grid.jqGrid('getGridParam','selrow');
	if( gr != null ) $grid.jqGrid('editGridRow',gr,{height:280,reloadAfterSubmit:false});
	else alert("Please Select Row");
});
});
</script>
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
		  	<div class="panel-heading"><span class="lead">Candidate Details </span></div>
			<table class="table table-hover">	    		<thead>
		      		<tr>
				        <th>Consultant Name : </th> <td><c:out value="${candidatehistory.candidaterName}"/> </td>
				         <th>Status  :</th> <td><c:out value="${candidatehistory.status}"/> </td>
				     </tr>   
		    	</thead>
	    	</table>
		</div>
		
   	</div>
   		<div class="maingeneric-container" style= "margin-top: 120px;">
		<div class="panel panel-default">
<table id="candlist">		
	</table>
<!-- <input type="button" id="bedata" name="bedata" value="Submit Selected Record" />	 -->
		 		<a>&nbsp;</a>
		 		<a href="<c:url value='/submission?candidateId=${candidatehistory.candidateId}'/>"><strong>Submission</strong></a>
</div>
   	</div>
   	<div>
		 
</div>
   </div>
</body>	
	<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
</body>
</html>