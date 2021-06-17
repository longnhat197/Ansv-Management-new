$(document).ready(function(){
	
    
    let params = (new URL(document.location)).searchParams;
		let id = parseInt(params.get("id"));
	
	var sheet1_id ="sheet1-"+id; 
	console.log(sheet1_id);
	var target3 = document.getElementById(sheet1_id);

	target3.classList.add("active");
	target3.parentElement.parentElement.parentElement.classList.add("menu-open");
	target3.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
    
  
    
    $(function () {
    	  $('[data-toggle="tooltip"]').tooltip()
    	})
});