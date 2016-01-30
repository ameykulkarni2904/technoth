<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Team home Page</title>

<!-- Bootstrap Core CSS -->
      <link rel="stylesheet" href="<c:url value="/resources/cssteam/bootstrap.min.css" />">
		
    <!-- Custom CSS -->
    <link href="<c:url value="/resources/cssteam/sb-admin.css"/>" rel="stylesheet">

   
    <!-- Custom Fonts -->
    <link href="<c:url value="/resources/font-awesometeam/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css">

   
<!-- Morris Charts CSS -->

<link rel="stylesheet" type="text/css" href="<c:url value="/resources/cssteam/plugins/morris.css"/>">


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
		<!-- /.navbar-collapse --> </nav>

		<div id="page-wrapper">

			<div class="container-fluid">

				<!-- Page Heading -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">Claim Your Team!!</h1>
						<ol class="breadcrumb">
							<li><i class="fa fa-dashboard"></i> <a href="index.html">Home</a>
							</li>
							<li class="active"><i class="fa fa-edit"></i> Team Login
								Details:</li>
							<br>
							<br>
						</ol>
					</div>
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-lg-6">
						${msg}
						<sf:form role="form" modelAttribute="team">

							<div class="form-group">
								<sf:select path="team_id">
									<sf:option value="-1" label="--- Select ---" />
									<sf:options items="${teamlist}" />
								</sf:select>

							</div>



							<div class="form-group">
								<label>Team Name:</label>
								<sf:input class="form-control" path="team_name" />
							</div>

							<div class="form-group">
								<label>Password:</label>
								<sf:input class="form-control" path="password" />
							</div>
							<div class="form-group">
								<label>Team Leader:</label>
								<sf:input class="form-control" path="leader_id" />
							</div>


							<input type="submit" value="Claim" class="btn btn-default">
							<input type="reset" class="btn btn-default" value="Reset">

							<br><br><br><br><br><br><br><br><br>


						</sf:form>



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