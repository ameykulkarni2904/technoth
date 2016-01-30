<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Team home Page</title>

    <!-- Bootstrap Core CSS -->
   <!--  <link href="css/bootstrap.min.css" rel="stylesheet">

    Custom CSS
    <link href="css/sb-admin.css" rel="stylesheet">

    Custom Fonts
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    -->
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
                          Upload Design Documents Here..!!
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Home</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Upload Design Documents :
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
						
						<!-- 
						 <label>A few important things for Judges round # 1:</label>
						<label>1. Technothon2015_RequirementGathering 
						<label>2. Technothon2015_DesignDocTemplate -->
						<label>Before uploading, please rename these docs like this: </label>
						 <form role="form" method="POST" action="uploadDoc" enctype="multipart/form-data">

						
							

							<div class="form-group">
								
                                <label>Upload File</label>
                                <input type="file" name="file1">
                                <label>Name</label>
                                <input type="text" name="name1">
                                <br /> <br /> 
                            </div>

							<br>
                           
   
                           <br>
                           <div class="form-group">
                           		
                                <label>Upload File</label>
                                <input type="file" name="file2">
                                <label>Name</label>
                                <input type="text" name="name2">
                            </div>

                            <button type="submit" class="btn btn-default">Upload</button>
                         <br><br><br><br><br><br><br>
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
<!--     <script src="js/jquery.js"></script>
 -->
    <!-- Bootstrap Core JavaScript -->
<!--     <script src="js/bootstrap.min.js"></script>
 -->
  <script src="<c:url value="jsteam/jquery.js"/>"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value="jsteam/bootstrap.min.js"/>"></script>

	<!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
	<script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/morris-data.js"></script>

 
</body>

</html>
