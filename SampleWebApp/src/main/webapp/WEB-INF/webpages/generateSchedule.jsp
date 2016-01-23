<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Bootstrap Admin Template</title>

    <!-- Bootstrap Core CSS -->
    
	<link rel="stylesheet" href="<c:url value="resources/css/bootstrap.min.css"/>">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
	<link rel="stylesheet" href="<c:url value="resources/css/sb-admin.css"/>">
    <!-- Custom Fonts -->
    <link rel="stylesheet" href="<c:url value="resources/css/font-awesome/css/font-awesome.min.css"/>">
    

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
                        <a href="uploadParticipantList.html"><i class="fa fa-fw fa-dashboard"></i>Upload Participant List</a>
                    </li>
                    <li>
                        <a href="charts.html"><i class="fa fa-fw fa-bar-chart-o"></i>Team Details</a>
                    </li>
                    <li>
                        <a href="claimTeam.html"><i class="fa fa-fw fa-table"></i>Claim Teams</a>
                    </li>
                    <li>
                        <a href="forms.html"><i class="fa fa-fw fa-edit"></i>Schedule Generation</a>
                    </li>
                    <li>
                        <a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i>Problem Statement Status</a>
                    </li>
                    <li>
                        <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i>Software Requirement Status</a>
                    </li>
					<li>
                        <a href="displayReport.html"><i class="fa fa-fw fa-wrench"></i>Report Generation</a>
                    </li>
					<li>
                        <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i>Send Emails</a>
                    </li>
					
					<li>
                        <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i>Rss Feeds</a>
                    </li>
					<li>
                        <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i>Feedback</a>
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
                            Generate Schedule
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="admin.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i>Generate Schedule
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-8">

                        <form role="form">
						<div class="row">
							<div class="col-lg-4">
                            <div class="form-group">
                                <label>Start Date</label>
							</div>
								</div>
							<div class="col-lg-4">
								<div class="form-group">
                                <input class="form-control" type="date" id="start_date" >
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
                                <input class="form-control" type="date" id="end_date" >
								</div>
								</div>
                                
                        </div>
							
							<div class="row">
								<div class="col-lg-3">	
								<div class="form-group">
									<input class="form-control" placeholder="Milestone Name">
								</div>
								</div>
								<div class="col-lg-3">	
								<div class="form-group">
									<input class="form-control" placeholder="No of days">
								</div>
								</div>
								<div class="col-lg-2">	
								<div class="form-group">
									<button type="submit" class="btn btn-default">Submit Button</button>
								</div>
								</div>
							</div>
							<div class="row">
								<div class="col-lg-3">	
								<div class="form-group">
									<input class="form-control" placeholder="Milestone Name">
								</div>
								</div>
								<div class="col-lg-3">	
								<div class="form-group">
									<input class="form-control" placeholder="No of days">
								</div>
								</div>
								<div class="col-lg-2">	
								<div class="form-group">
									<button type="submit" class="btn btn-default">Submit Button</button>
								</div>
								</div>
							</div>
							
							<div class="row">
								<div class="col-lg-3">	
								<div class="form-group">
									<input class="form-control" placeholder="Milestone Name">
								</div>
								</div>
								<div class="col-lg-3">	
								<div class="form-group">
									<input class="form-control" placeholder="No of days">
								</div>
								</div>
								<div class="col-lg-2">	
								<div class="form-group">
									<button type="submit" class="btn btn-default">Submit Button</button>
								</div>
								</div>
							</div>

                            <button type="submit" class="btn btn-default">Submit Button</button>
                            <button type="reset" class="btn btn-default">Reset Button</button>

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
    
    <script src="<c:url value="resources/js/jquery.js"/>"></script>
	
    <!-- Bootstrap Core JavaScript -->
    
  <script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>

</body>

</html>
