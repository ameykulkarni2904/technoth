
window.onload=function abc(){
	//alert("count")
    // The easiest way is of course to delete all textboxes before adding new ones
    $("#holder").html("");

    var count = $("#count1").val();
    //alert("count"+count)
//alert(count);
  //  var requested = parseInt($("#pp1").val(),10);

//window.alert("hi");
    //if (requested > count) {
        for(i=0; i<count; i++) {
		 var $ctrl4 = $('<sf:form modelAttribute="milestone" action="milestone">').attr({method:'POST'}); 
        var $ctrl = $('<sf:input path="milestoneName"/><br>').attr({ type: 'text', name:'Milestone name', placeholder:'milestone_name'}); 
		var $ctrl1 = $('<sf:input path="noOfDays"/><br>').attr({ type: 'text', name:'no of days', placeholder:'no_of_days'}); 
		var $ctrl2 = $('<input/><br>').attr({ type: 'submit', name:'submit', value:'submit',id:'btnClick'});  
		var $ctrl5 = $('<sf:form/>'); 
			$ctrl4.append($ctrl,$ctrl1,$ctrl2);
			
            $("#holder").append($ctrl4);
			  //$("#holder").append($ctrl1);
			  
        }
//}
   /*  else if (requested < count) {
        var x = requested - 1;
        $("#holder input:gt(" + x + ")").remove();
    } */
};
