

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
    
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Bootstrap Core CSS -->
    <!-- Bootstrap Core CSS -->
      <link rel="stylesheet" href="<c:url value="/resources/cssteam/bootstrap.min.css" />">
		
    <!-- Custom CSS -->
    <link href="<c:url value="/resources/cssteam/sb-admin.css"/>" rel="stylesheet">

   
    <!-- Custom Fonts -->
    <link href="<c:url value="/resources/font-awesometeam/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">

   
    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Team :</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    
                        
                        <li class="message-footer">
                            <a href="<c:url value="/logout"/>">Logout</a>
                        </li>
                    </ul>
                </li>
                
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                   <li class="active">
                       
                        <a href="<c:url value="/pss"/>"><i class="fa fa-fw fa-edit"></i> Problem Statment</a>
                    </li>
                   <li>
                        <a href="<c:url value="/softreq"/>"  ><i class="fa fa-fw fa-edit"></i> Software Requirements</a>
                    </li>
                  <li>
                        <a href="<c:url value="/uploadDoc"/>"  ><i class="fa fa-fw fa-edit"></i> Upload Documents</a>
                    </li>
                   <li><a href="<c:url value="/viewSchedule"/>"><i class="fa fa-fw fa-edit"></i>Schedule
							</a></li>
                 
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Generate Schedule
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="admin.html">Home</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i>Generate Schedule
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

          <%--       <div class="row">
                    <div class="col-lg-8">

                        <sf:form role="form" modelAttribute="schedule" action="add">
						<div class="row">
							<div class="col-lg-4">
                            <div class="form-group">
                                <label>Start Date</label>
							</div>
								</div>
							<div class="col-lg-4">
								<div class="form-group">
                                <sf:input class="form-control" type="date" id="start_date" path="startDate"/>
								</div>
								</div>
                                
                        </div>
						
						<div class="row">
							<div class="col-lg-4">
                            <div class="form-group">
                                <label>End Date</label>
							</div>
								</div>
							<div class="col-lg-4">
								<div class="form-group">
                                <sf:input class="form-control" type="date" id="end_date" path="endDate" />
								</div>
								</div>
                                <input type="submit" class="btn btn-default" value="submit">
                        </div>
                        
                         </sf:form>
							<sf:form action="milestone" modelAttribute="milestone1">
							 <div class="row">
							 <div class="col-lg-3">	
								<div class="form-group"> 
								<%=session.getAttribute("count") %>
								 </div>
								 </div>
								<div class="col-lg-3">	
								<div class="form-group"> 
									<sf:input type="text" class="form-control"  placeholder="Milestone Name"  path="milestoneName" />
								 </div>
								</div> 
							 	<div class="col-lg-3">	
								<div class="form-group"> 
									<sf:input type="text" class="form-control"  placeholder="No of days" path="noOfDays"/>
							 	</div>
								</div> 
								 <div class="col-lg-2">	
								<div class="form-group"> 
									<input type="submit" class="btn btn-default" >
						 		</div>
								</div>
							</div> 
							</sf:form>
							
                            
                            <input type="reset" class="btn btn-default" value="reset"/>

                       

                    </div> --%>
                    
                    
                    
                    	<!--new code  -->
				<br>
	<div class="col-lg-4" style="width: 780px ">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-money fa-fw"></i> Schedule</h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>Milestone No</th>
								<th>Milestone Name</th>
								<th>Start Date</th>
								<th>End Date</th>
								<th>No of Days</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${list}" var="sr">
								<tr>
									<td>
										
											<c:out value="${sr.getMilestoneId()}" />
								</td>
									<td><c:out value="${sr.getMilestoneName()}" /></td>
									<td><c:out value="${sr.getStartDateTime()}" /></td>
									<td><c:out value="${sr.getEndDateTime()}" /></td>
									<td><c:out value="${sr.getNoOfDays()}" /></td>
									
								</tr>
							</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="text-right">
                                    
                                </div>
                            </div>
                        </div>
	
				<!--  -->
                    
						
                     
                   
               
                <!-- /.row -->
						<div class="row">
                    <div class="col-lg-6">

                       
                        
                        <table>
							<!-- here should go some titles... -->
							<tr>

								<th>Start Date</th>
								<th>End Date</th>
							</tr>
						
								<tr>
									
									
									<td><c:out value="${schedule.getStartDate()}" /></td>
								
									<td><c:out value="${schedule.getEndDate()}" /></td>
									
									
								</tr>
						
						</table>
                        <br> <br> <br>
                    </div>
                    
                </div>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
 <script src="<c:url value="jsteam/jquery.js"/>"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value="jsteam/bootstrap.min.js"/>"></script>

	<!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
	<script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/morris-data.js"></script>


</body>

</html>
