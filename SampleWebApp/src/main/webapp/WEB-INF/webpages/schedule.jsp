<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 <!-- <script src="js/jquery-1.11.0.min.js"></script> -->
<script src="js/bootstrap.min.js"></script>

<script src="<c:url value="/resources/js/new.js"/>"></script>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 
    <!-- <script>
        var generateTextBoxes = function( qty, container ) {
            if (container) {
                for (var i = 1; i <= qty; i++ ) {
                    $('<label for="box-'+i+'">Box '+i+'</label>&nbsp;<input id="box-'+i+'" name="box-'+i+'" type="text" /><br>').appendTo( container );
                }
            }
        }
        var init = function() {
            $('#btnGenBoxes').on('click', function() {
                generateTextBoxes( $('#box-0').val(), $('#putThemHere') );
            });
        }
        window.onload = init;
    </script>
 
-->
<script>


//Friday, January 22, 2016 12:04 PM
//$(document).ready(function(){
/*function abc(){
	alert("count")
    // The easiest way is of course to delete all textboxes before adding new ones
    $("#holder").html("");

    var count = $("#count1").val();
    alert("count"+count)
//alert(count);
  //  var requested = parseInt($("#pp1").val(),10);

//window.alert("hi");
    //if (requested > count) {
        for(i=0; i<count; i++) {
		 var $ctrl4 = $('<form>').attr({ id:'schedule',method:'POST'}); 
        var $ctrl = $('<input/>').attr({ type: 'text', name:'Milestone name', placeholder:'milestone_name'}); 
		var $ctrl1 = $('<input/>').attr({ type: 'text', name:'no of days', placeholder:'no_of_days'}); 
		var $ctrl2 = $('<input/><br>').attr({ type: 'button', name:'submit', value:'submit',id:'btnClick'});  
		var $ctrl5 = $('<form/>'); 
			$ctrl4.append($ctrl,$ctrl1,$ctrl2);
			
            $("#holder").append($ctrl4);
			  //$("#holder").append($ctrl1);
			  
        }
//}
   /*  else if (requested < count) {
        var x = requested - 1;
        $("#holder input:gt(" + x + ")").remove();
    } */
//};*/

</script>




</head>

<body>

<div class="container">
        <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        <div class="panel panel-default">
        <div class="panel-heading">
    <h3 class="panel-title">Schedule Generator </h3>
</div>
<div class="panel-body">
    <sf:form role="form" modelAttribute="schedule" action="add" method="post" >
    <div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6">
    <div class="-group">
                <label class="control-label"  for="start_date">Start Date</label>
    </div>
    </div>
    <div class="col-xs-6 col-sm-6 col-md-6">
    <div class="form-group">
     <%-- value="<fmt:formatDate type='date' value='${start_date}' pattern='dd-MM-yyyy'  var='theFormattedDate' />"--%>
    
    <sf:input path="startDate" type="date" name="start_date" id="start_date" class="form-control input-sm" placeholder="start Date" /> 
    </div>
    </div>
    </div>
<div class="row">
    <div class="col-xs-6 col-sm-6 col-md-6">
    <div class="form-group">
                <label class="control-label"  for="end_date">End date</label>
    </div>
    </div>
    <div class="col-xs-6 col-sm-6 col-md-6">
    <div class="form-group">
    <%-- value="<fmt:formatDate type='date' value='${end_date}' pattern='dd-MM-yyyy' var='theFormattedDate' />" name="end_date" id="end_date --%>
    <sf:input path="endDate" type="date" name="end_date" id="end_date" class="form-control input-sm" placeholder="End Date" />
    </div>
    </div>
    </div>
    
<sf:input path="noOfMilestones"  id="count1" type="text"/>
<!-- <form:SELECT path="noOfMilestones" id="pp1">
            <option value="0">no of milestones</option>
   <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
</form:SELECT>  -->
    <!-- <div class="dropdown">
  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" id="pp2" >no of milestones
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li ><a href="#">1</a></li>
    <li ><a href="#">2</a></li>
    <li  ><a href="#">3</a></li>
  </ul>
 -->
</div> <br>
  

    <input type="submit" id="pp1" value="submit"  class="btn btn-info btn-block">
   
    </sf:form>
      <div id="holder">
       
     
      </div>
    </div>
    </div>
    </div>
    </div>
    </div>
</body>
</html>