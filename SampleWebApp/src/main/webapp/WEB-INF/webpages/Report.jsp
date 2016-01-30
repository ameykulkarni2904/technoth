<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <title>SB Admin - Bootstrap Admin Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
                    
                        
                        <li class="message-footer">
                            <a href="<c:url value="/logout"/>">Logout</a>
                        </li>
                    </ul>
                </li>
                </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="charts.html"><i class="fa fa-fw fa-bar-chart-o"></i> Charts</a>
                    </li>
                    <li>
                        <a href="tables.html"><i class="fa fa-fw fa-table"></i> Tables</a>
                    </li>
                    <li class="active">
                        <a href="forms.html"><i class="fa fa-fw fa-edit"></i> Forms</a>
                    </li>
                    <li>
                        <a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i> Bootstrap Elements</a>
                    </li>
                    <li>
                        <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i> Bootstrap Grid</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                            <li>
                                <a href="#">Dropdown Item</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="blank-page.html"><i class="fa fa-fw fa-file"></i> Blank Page</a>
                    </li>
                    <li>
                        <a href="index-rtl.html"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
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
                            Generate Reports
                        </h1>
                     
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
                    <sf:form modelAttribute="report" method="POST" class="cd-form" role="form">

                        

                            <div class="form-group">
                                <label>Team Name</label>
                                <sf:input class="form-control" placeholder="Team Name" path="team_name"/>
                            </div>
							<div class="form-group">
							<div class="row">
							<div class="col-lg-6">
                                <label>Design</label>
								</div>
								</div>
								<div class="row">
								<div class="col-lg-4">
                                <sf:input class="form-control" placeholder="Percentage" path="design"/>
								</div>
								<div class="col-lg-8">
								 <sf:textarea class="form-control" rows="2" placeholder="Description" path="design_desc"/>
								 </div>
								 </div>
                            </div>
							<div class="form-group">
							<div class="row">
							<div class="col-lg-6">
                                <label>Database</label>
								</div>
								</div>
								<div class="row">
								<div class="col-lg-4">
                                <sf:input class="form-control" placeholder="Percentage" path="database"/>
								</div>
								<div class="col-lg-8">
								 <sf:textarea class="form-control" rows="2" placeholder="Description" path="database_desc"/>
								 </div>
								 </div>
                            </div>

							<div class="form-group">
							<div class="row">
							<div class="col-lg-6">
                                <label>Coding</label>
								</div>
								</div>
								<div class="row">
								<div class="col-lg-4">
                                <sf:input class="form-control" placeholder="Percentage" path="coding"/>
								</div>
								<div class="col-lg-8">
								 <sf:textarea class="form-control" rows="2" placeholder="Description" path="coding_desc"/>
								 </div>
								 </div>
                            </div>


                            <input type="submit" class="btn btn-default"/>Generate Report
                            <button type="reset" class="btn btn-default">Reset Values</button>

                        </sf:form>

                    </div>
                    <div class="col-lg-6">
                        <h1>Generated Report </h1>
						<h3> reports should be displayed in this div</h3>

                          <sf:form modelAttribute="report" method="POST" class="cd-form" role="form">

                        

                            <div class="form-group">
                               <label>Team Name</label>
                                <sf:input class="form-control" placeholder="Team Name" path="team_name"/>
                                 <input type="submit" class="btn btn-default"/>Generate Report
                            </div>
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

    <script src="<c:url value="jsteam/jquery.js"/>"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value="jsteam/bootstrap.min.js"/>"></script>

	<!-- Morris Charts JavaScript -->
	<script src="js/plugins/morris/raphael.min.js"></script>
	<script src="js/plugins/morris/morris.min.js"></script>
	<script src="js/plugins/morris/morris-data.js"></script>



</body>
</html>