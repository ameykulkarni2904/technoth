<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Bootstrap Admin Template</title>

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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
                <a class="navbar-brand" href="index.html">Technothon Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    
                        
                        <li class="message-footer">
                            <a href="<c:url value="/logout"/>">Logout</a>
                        </li>
                    </ul>
                </li>
                </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active"><a href="uploadFileXls"><i
							class="fa fa-fw fa-edit"></i>Upload Participant List</a></li>


					<li><a href="claimTeam"><i class="fa fa-fw fa-edit"></i>
							Claim Teams</a></li>

					<li><a href="add"><i class="fa fa-fw fa-edit"></i>Schedule
							Generation</a></li>

					<li><a href="displayproblem"><i class="fa fa-fw fa-edit"></i>Problem
							Statement Status</a></li>


					<li><a href="displayreport"><i class="fa fa-fw fa-edit"></i>Report
							Generation</a></li>
							
					<li><a href="team"><i class="fa fa-fw fa-edit"></i>Team
							Formation</a></li>
							

					<li><a href="<c:url value="sendEmail"/>"><i
							class="fa fa-fw fa-edit"></i>Send Emails</a></li>

                    
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
                            Problem Statement
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Home</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-wrench"></i>Problem Statement status
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                 <div class="row">
                    <div class="col-lg-6">
						
                       <%--  <sf:form role="form" modelAttribute="soft_req">

                            <div class="form-group">
                                <label>Team Name</label>
                                <sf:input path="team_name" name="team_name" class="form-control" placeholder="Team Name"/>
                              
                            </div> 
                            <input type="submit" class="btn btn-default">Submit Button</button>
                        </sf:form> --%>
                        
                        
                        <!-- new code -->
	<br>
	<div class="col-lg-4" style="width: 780px ">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-money fa-fw"></i>Problem Statement</h3>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                               <th>Team Name</th>
        <th>Problem Statement</th>
        <th>Description</th> 
                                            </tr>
                                        </thead>
                                        <tbody>
                                             <c:forEach items="${list}" var="ps">
    <tr>
        <td>
           
            <a href="checkstatus/<c:out value="${ps.getTeam_name()}" />"> <c:out value="${ps.getTeam_name()}" /></a>
        </td>
        <td>
            <c:out value="${ps.getStatement()}" />
        </td>
        <td>
            <c:out value="${ps.getDescription()}" />
        </td>
       <td>
           
            <a href="checkstatus/${ps.getTeam_name()}/YES" > Accept/</a>
        </td>
        <td>
           
            <a href="checkstatus/${ps.getTeam_name()}/NO "> Reject</a>
        </td>
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
                        
                          <br><br><br><br><br><br><br><br><br><br><br><br><br>
                        
                        
                        <%-- <table>
    <!-- here should go some titles... -->
    <tr>
        <th>Team Name</th>
        <th>Problem Statement</th>
        <th>Description</th>       
    </tr>
    <c:forEach items="${list}" var="ps">
    <tr>
        <td>
           
            <a href="checkstatus/<c:out value="${ps.getTeam_name()}" />"> <c:out value="${ps.getTeam_name()}" /></a>
        </td>
        <td>
            <c:out value="${ps.getStatement()}" />
        </td>
        <td>
            <c:out value="${ps.getDescription()}" />
        </td>
       <td>
           
            <a href="checkstatus/${ps.getTeam_name()}/YES" > Accept/</a>
        </td>
        <td>
           
            <a href="checkstatus/${ps.getTeam_name()}/NO "> Reject</a>
        </td>
    </tr>
    </c:forEach>
</table> --%>
                        
                        

                    </div>
                    </div>
                    
                
                <!-- /.row -->

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