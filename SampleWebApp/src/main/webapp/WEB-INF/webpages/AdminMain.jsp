<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Admin For technothonX</title>

<title>Team home Page</title>

<!-- Bootstrap Core CSS -->
      <link rel="stylesheet" href="<c:url value="/resources/cssteam/bootstrap.min.css" />">
		
    <!-- Custom CSS -->
    <link href="<c:url value="/resources/cssteam/sb-admin.css"/>" rel="stylesheet">

   
    <!-- Custom Fonts -->
    <link href="<c:url value="/resources/font-awesometeam/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" >

   

<!-- Morris Charts CSS -->

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/cssteam/plugins/morris.css"/>">


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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">${cookie.userName.value}
				</a>
			</div>
			
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

					<%-- <li>
					<a href="<c:url value="/uploadFileXls"/>"><i class="fa fa-fw fa-edit"></i>Upload Participant List</a>
                        <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i>Rss Feeds</a>
                    </li> --%>


					<li><a href="<c:url value="grade"/>"><i
							class="fa fa-fw fa-edit"></i>Feedback</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>

		<div id="page-wrapper">

			<div class="container-fluid">

				

				
				
				

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

	<!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
	<script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>
