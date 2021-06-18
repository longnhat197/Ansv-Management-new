$(document).ready(function(){
	
    /*Active menu báo cáo 1 theo khách hàng*/
    let params = (new URL(document.location)).searchParams;
	let kh_s1_id = params.get("kh_s1_id");
	console.log(params);
	if (kh_s1_id) {
		var sheet1_id ="sheet1-"+kh_s1_id; 
		
		var target3 = document.getElementById(sheet1_id);
	
		target3.classList.add("active");
		target3.parentElement.parentElement.parentElement.classList.add("menu-open");
		target3.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
	}
	
	/*Active danh sách project theo người phụ trách báo cáo 1*/
  	
  	let id_p1 = parseInt(params.get("id_p1"));
  	if(id_p1){
  		var project1_id = "project1-"+id_p1;
  		var target_p1 = document.getElementById(project1_id);
  		console.log(target_p1.parentElement);
  		target_p1.classList.add("active");
  		target_p1.parentElement.parentElement.parentElement.classList.add("menu-open");
  		target_p1.parentElement.parentElement.parentElement.firstElementChild.classList.add("active");
  	}
    
    $(function () {
	  	$('[data-toggle="tooltip"]').tooltip()
	})
});