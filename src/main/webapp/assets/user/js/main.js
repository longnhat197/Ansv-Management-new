$(document).ready(function(){
	//Get current path and find target link
    var path = window.location.pathname.split("/").pop();
  
    // Account for home page with empty path
    if ( path == '' ) {
      path = 'trang-chu';         
    }
  
    var target = $('nav a[href="'+path+'"]');
    // Add active class to target link
    target.addClass('active');
    target.parent().parent().parent().addClass('menu-open')
    var target2 = $('nav a[href="'+path+'"]').parent().parent().parent().first().find("a").first();
    target2.addClass('active');
    
    let params = (new URL(document.location)).searchParams;
		let id = parseInt(params.get("id"));
	
	var sheet1_id ="sheet1-"+id; 
	 var target3 = document.getElementById(sheet1_id);
	  
	 target3.classList.add("active");
	 target3.parentElement.parentElement.parentElement.classList.add("menu-open");
	 target3.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
    
    
    $(function () {
    	  $('[data-toggle="tooltip"]').tooltip()
    	})
});