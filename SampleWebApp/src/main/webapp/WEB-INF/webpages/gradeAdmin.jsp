<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<!-- Bootstrap Core CSS -->
      <link rel="stylesheet" href="<c:url value="/resources/cssteam/bootstrap.min.css" />">
		
    <!-- Custom CSS -->
    <link href="<c:url value="/resources/cssteam/sb-admin.css"/>" rel="stylesheet">

   
    <!-- Custom Fonts -->
    <link href="<c:url value="/resources/font-awesometeam/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">

   

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
                <a class="navbar-brand" href="index.html">SB Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                    
                    <a href="<c:url value="uploadFileXls"/>"><i class="fa fa-fw fa-edit"></i>Upload Participant List</a>
                    
                        
                    </li>
                   
                    
                    <li>
                    <a href="<c:url value="claimTeam"/>"><i class="fa fa-fw fa-edit"></i> Claim Teams</a>
                        
                    </li>
                    
                    <li>
                    <a href="<c:url value="schedule1/add"/>"><i class="fa fa-fw fa-edit"></i>Schedule Generation</a>
                        
                    </li>
                    
                    <li>
                    <a href="<c:url value="displayproblem"/>"><i class="fa fa-fw fa-edit"></i>Problem Statement Status</a>
                        
                    </li>
                    
                    <li>
                    <a href="<c:url value="/uploadFileXls"/>"><i class="fa fa-fw fa-edit"></i>Upload Participant List</a>
                        
                    </li>
                    
					<li>
					<a href="<c:url value="displayreport"/>"><i class="fa fa-fw fa-edit"></i>Report Generation</a>
                       
                    </li>
                    
					<li>
					<a href="<c:url value="sendEmail"/>"><i class="fa fa-fw fa-edit"></i>Send Emails</a>
                        
                    </li>
					
					<%-- <li>
					<a href="<c:url value="/uploadFileXls"/>"><i class="fa fa-fw fa-edit"></i>Upload Participant List</a>
                        <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i>Rss Feeds</a>
                    </li> --%>
                    
                    
					<li>
					<a href="<c:url value="grade"/>"><i class="fa fa-fw fa-edit"></i>Feedback</a>
                       
                    </li>
                    
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
                           Team Feedback 
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Home</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Team Feedback :
                            </li>
							<br><br>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div >
						<form name="frm" action="grade" class="Grade">
							
							<div >
                                <label>Team Name :</label>
                                <input type="text"  id="team_name"/>
                            </div>
							
							 <div >
						
                               <SELECT id="milestone_id" name="milestone_id" >
									<option value="0" >Milestone Name</option>
									<option value="1" >design</option>
									<option value="2" >documentation</option>
									<option value="3" >abc</option>
									<option value="4" >xyz</option>
									
								</SELECT>
                            </div> 
                            
                            
                            
                        
							<br>
							<div >
                                <label>Grade :</label>
                                <input type="text" id="grades"/>
                            </div>
							<div >
                                <label>Feedback:</label>
                                <input type="textarea"  rows="3" id="feedback"/>
								
                            </div>
							
                        
                           <br><br><br><br><br><br>
                            
                          <input type="submit" value="Claim"/>
                            <input type="reset"  value="Reset"/> 
							
							<!--  <button type="submit" class="btn btn-default">Submit </button>
                            <button type="reset" class="btn btn-default">Reset </button> -->
                            
                            
							<br><br><br><br><br><br>
                            
							
                        </form>
						
						 
						
                    </div>
                    
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="<c:url value="jsteam/jquery.js"/>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="jsteam/bootstrap.min.js"/>"></script>


</body>
</html>