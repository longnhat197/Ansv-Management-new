<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- ===== Menu ===== -->
<style>
	.btn-circle {
		width: 30px;
		height: 30px;
		text-align: center;
		padding: 6px 0;
		font-size: 12px;
		line-height: 1.428571429;
		border-radius: 15px;
	}
	
	span.btn-circle a {
		color: white;
	}
	
	.btn-circle.btn-lg {
		width: 40px;
		height: 40px;
		padding: 10px 16px;
		font-size: 18px;
		line-height: 1.33;
		border-radius: 25px;
	}
	
	.btn-circle.btn-xl {
		width: 50px;
		height: 50px;
		padding: 10px 16px;
		font-size: 24px;
		line-height: 1.33;
		border-radius: 35px;
	}
	
	a.nav-link d-flex {
		padding-left: 5px;
	}
	
	.fa-hand-point-right {
		font-size: 1rem;
		margin-left: 6%;
	}
	
	a.nav-link p {
		padding-left: 5px;
		font-size: 15px;
	}
</style>

<aside class="main-sidebar sidebar-dark-primary elevation-4">
	<!-- Brand Logo -->
	<a href="trang_chu" class="brand-link"> <img
		src="<c:url value="/assets/user/img/ANSV_logo.png" />" alt="ANSV Logo"
		class="brand-image"
		style="opacity: 0.8; width: 70px; height: 33px; margin-left: -5px;">
		<span class="brand-text font-weight-light">Company</span>
	</a>

	<!-- Sidebar -->
	<div class="sidebar">
		<!-- Sidebar user panel (optional) -->
		<div class="user-panel mt-3 pb-3 mb-3 d-flex">
			<div class="image">
				<img src="<c:url value="/assets/user/dist/img/user2-160x160.jpg" />"
					class="img-circle elevation-2" alt="User Image">
			</div>
			<div class="info">
				<a href="#" class="d-block">Alexander Pierce</a>
			</div>
		</div>

		<!-- SidebarSearch Form -->
		<div class="form-inline">
			<div class="input-group" data-widget="sidebar-search">
				<input class="form-control form-control-sidebar" type="search"
					placeholder="Search" aria-label="Search">
				<div class="input-group-append">
					<button class="btn btn-sidebar">
						<i class="fas fa-search fa-fw"></i>
					</button>
				</div>
			</div>

			<!-- ?????u: Upload file b??o c??o -->
			<style>
				.input-group a {
				  	color: #c2c7d0;
				  	fill: #c2c7d0;
				}
			
				.input-group a:hover {
				  	color: orange;
				  	fill: orange;
				  	text-decoration: solid;
				}
				
				svg {
			 		width: 20px;
			 		margin-top: -6px;
				  	/* height: 50px; */
				}
				/* svg:hover {
				  	fill: red;
				} */
			</style>
			<div class="input-group" style="width: auto; margin: auto;">
				<a href="${pageContext.request.contextPath}/uploadOneFile">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17" enable-background="new 0 0 512 512">
						<path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
					</svg> Upload One File
				</a>
			</div>
			<div class="input-group" style="width: auto; margin: auto;">
				<a href="${pageContext.request.contextPath}/uploadMultiFile">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="17" viewBox="0 0 20 17" enable-background="new 0 0 512 512">
						<path d="M10 0l-5.2 4.9h3.3v5.1h3.8v-5.1h3.3l-5.2-4.9zm9.3 11.5l-3.2-2.1h-2l3.4 2.6h-3.5c-.1 0-.2.1-.2.1l-.8 2.3h-6l-.8-2.2c-.1-.1-.1-.2-.2-.2h-3.6l3.4-2.6h-2l-3.2 2.1c-.4.3-.7 1-.6 1.5l.6 3.1c.1.5.7.9 1.2.9h16.3c.6 0 1.1-.4 1.3-.9l.6-3.1c.1-.5-.2-1.2-.7-1.5z"/>
					</svg> Upload Multi File
				</a>
			</div>
			<!-- Cu???i: Upload file b??o c??o -->
			
		</div>

		<!-- Sidebar Menu -->
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column"
				data-widget="treeview" id="ul_global" role="menu" data-accordion="false">
				<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
				<li class="nav-header">B??o c??o</li>
				<!-- <li class="nav-item menu-open"><a href="#"
					class="nav-link d-flex active"> <i class="nav-icon fas fa-table"></i> -->
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-table"></i>
						<p class="text-capitalize">
							B??o c??o t???n t???i v?????ng m???c c??c d??? ??n tri???n khai tu???n 4 - th??ng 4
							<i class="right fas fa-angle-left"></i> <span
								class="badge badge-info">23</span>
						</p>
				</a>
					<ul class="nav nav-treeview" id="data_sheet_1">
						<script>
						 var data_sheet_1 = document.getElementById('data_sheet_1');

						 $.getJSON('<c:url value="/assets/user/upload/data-test.json"/>', function(json) {
				                function groupArrayOfObjects(list, key) {
				                    return list.reduce(function(rv, x) {
				                        (rv[x[key]] = rv[x[key]] || []).push(x);
				                        return rv;
				                    }, {});
				                };
				                var groupedPeople = groupArrayOfObjects(json, "Kh??ch h??ng");
				               /*  console.log(groupedPeople); */ //will be the Males 
				                var dem = Object.keys(groupedPeople).length;
				                var item = Object.keys(groupedPeople);
				                /* console.log(item); */
				                for (i = 0; i < dem; i++) {
				                    let row = 	'<li class="nav-item">' + 
				                    				'<a href="vnpt_tinh_thanh_pho?kh_s1_id='+item[i]+'" class="nav-link d-flex"' + 
				                    					'id="sheet1-'+item[i]+'" data-toggle="tooltip"  data-html="true"' + 
				                    					'onclick = "return menu_link('+item[i]+') " title="<p>T???ng s??? d??? ??n: 2</p>' + 
				                    					'<p>S??? d??? ??n ch???m ti???n ?????: 0</p><p>S??? d??? ??n b??? h???y: 0</p>">' + 
				                    					'<i class="nav-icon far fa-hand-point-right" style="font-size: 1rem; margin-left: 6%;"></i>' + 
			                    						'<p style="font-size: 13px;">' + 
			                    							item[i] + 
			                    							' <span class="badge badge-pill badge-danger">0</span>' + 
				                    						' <span class="badge badge-pill badge-warning">0</span>' + 
				                    						' <span class="badge badge-pill badge-secondary">2</span> / ' + 
				                    						'<b>2</b>' + 
				                    					'</p>' + 
					                    			'</a>' + 
					                    		'</li>';
				                    data_sheet_1.innerHTML += row;
				                }
				            });
				            function menu_link(id) {
				        		//window.open("vnpt_tinh_thanh_pho?id="+id); //Link ?????n trang kh??c v???i tab m???i
				        		window.location.href = "vnpt_tinh_thanh_pho?kh_s1_id="+id; //Link ?????n trang kh??c ??? tab hi???n t???i
				        	  	//location.replace("https://www.w3schools.com"); //Link ?????n trang kh??c thay th??? trang hi???n t???i
				        	};
						</script>
						
						
						
					</ul></li>

				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-table"></i>
						<p class="text-capitalize">
							B??o c??o t??nh h??nh th???c hi???n c??c d??? ??n kinh doanh tu???n
							22.11(AM-BDC) <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info">34</span>
						</p>
				</a>
					<ul class="nav nav-treeview">
						<li class="nav-item"><a href="vnpt_tinh_thanh_pho_2"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT T???NH/TP <span class="badge badge-pill badge-danger">0</span>
									/ <b>3</b>
								</p>
						</a></li>
						<li class="nav-item"><a
							href="pages/layout/top-nav-sidebar.html" class="nav-link d-flex">
								<i class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT Net <span class="badge badge-pill badge-danger">4</span> /
									<b>10</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/layout/boxed.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									MOBIFONE <span class="badge badge-pill badge-danger">5</span> /
									<b>10</b>
								</p>
						</a></li>
						<li class="nav-item"><a
							href="pages/layout/fixed-sidebar.html" class="nav-link d-flex">
								<i class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT Media <span class="badge badge-pill badge-danger">3</span>
									/ <b>5</b>
								</p>
						</a></li>
						<li class="nav-item"><a
							href="pages/layout/fixed-sidebar-custom.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									VNPT IT <span class="badge badge-pill badge-danger">1</span> /
									<b>2</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/layout/fixed-topnav.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									CMC Telecom <span class="badge badge-pill badge-danger">2</span>
									/ <b>3</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/layout/fixed-footer.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									Thales <span class="badge badge-pill badge-danger">0</span> / <b>1</b>
								</p>
						</a></li>
						<li class="nav-item"><a
							href="pages/layout/collapsed-sidebar.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px;">
									TTX Vi???t Nam <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b>
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-table"></i>
						<p class="text-capitalize">
							B??o c??c t??nh h??nh th???c hi???n c??c d??? ??n kinh doanh tu???n 21.17
							(A.Khanh + A.T?? + A. ??o??n Tu???n) <i
								class="right fas fa-angle-left"></i> <span
								class="badge badge-info">31</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="pages/charts/chartjs.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p style="font-size: 13px; padding-left: 5%;">
									H??? CH?? MINH (A. T?? ph??? tr??ch) <span
										class="badge badge-pill badge-danger">1</span> / <b>4</b>
								</p>
						</a></li>
						<li class="nav-item" style="height: auto;"><a
							href="pages/charts/flot.html" class="nav-link d-flex d-flex"
							style="height: auto;"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i> <!-- <p>C??C D??? ??N ANH KHANH,</p> <br>
								<p style="margin-left: 21%;">A ??O??N TU???N PH??? TR??CH -</p> <br>
								<p style="margin-left: 21%;">
									VNPT IT <span class="badge badge-pill badge-danger">1</span> /
									<b>7</b>
								</p> --> <!-- <div style="width: 79%; float: right;">
									<p>
										C??C D??? ??N ANH KHANH, <br>A ??O??N TU???N PH??? TR??CH - VNPT IT <span
											class="badge badge-pill badge-danger">1</span> / <b>7</b>
									</p>
								</div><br><br><br> -->
								<p style="font-size: 13px; padding-left: 5%;">
									C??C D??? ??N ANH KHANH, A ??O??N TU???N PH??? TR??CH - VNPT IT <span
										class="badge badge-pill badge-danger">1</span> / <b>7</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/inline.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									VINAPHONE <span class="badge badge-pill badge-danger">1</span>
									/ <b>4</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									H??? Ch?? Minh <span class="badge badge-pill badge-danger">0</span>
									/ <b>4</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									B??? C??ng An <span class="badge badge-pill badge-danger">0</span>
									/ <b>4</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									B??? KH&CN <span class="badge badge-pill badge-danger">0</span> /
									<b>2</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									B??? KH&CN <span class="badge badge-pill badge-danger">0</span> /
									<b>4</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									B???O HI???M VI???T NAM <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b>
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/charts/uplot.html"
							class="nav-link d-flex"> <i
								class="nav-icon far fa-hand-point-right"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									ACB <span class="badge badge-pill badge-danger">0</span> / <b>1</b>
								</p>
						</a></li>
					</ul></li>
				<li class="nav-header">Ng?????i ph??? tr??ch (b??o c??o 1)</li>
				<ul id="ul_1" class="nav nav-pills nav-sidebar flex-column">
				
				</ul>
				<script type="text/javascript">
				var data_pci_sheet_1 = document.getElementById('ul_1');
				

	            $.getJSON('<c:url value="/assets/user/upload/data-test.json"/>', function(json) {
	                function groupArrayOfObjects(list, key) {
	                    return list.reduce(function(rv, x) {
	                        (rv[x[key]] = rv[x[key]] || []).push(x);
	                        return rv;
	                    }, {});
	                }; //L???y d??? li???u theo key t??y ch???n
	                var groupedPIC = groupArrayOfObjects(json, "PIC");
	                var dem1 = Object.keys(groupedPIC).length;
	                var item1 = Object.keys(groupedPIC); //L???c rheo key c???a object
	                /* console.log(groupedPIC); */ //will be the Males
	                
	                var project1 = Object.values(groupedPIC); // L???c theo value c???a object
	                
	                for (i = 0; i < dem1; i++) {
	                    let row ='<li class="nav-item"><a href="#" class="nav-link d-flex">'+
	                    		 	 '<i class="nav-icon fas fa-user"></i>'+
	                    		 	 '<p>' +item1[i] + 
		                    		 	 '<i class="fas fa-angle-left right"></i>'+
		                    		 	 '<span class="badge badge-info right">2</span>'+
		                    		 '</p>'+
		                    		 '</a>'+
		                    		 '<ul class="nav nav-treeview " id="pic1-'+i+'" style="font-size: 13px;">'+
		                    		 '</ul>'+
		                    	 '</li>';
	                    data_pci_sheet_1.innerHTML += row;
	                    var detai_pci1 = document.getElementById("pic1-" + i);
	                    for (j = 0; j < project1[i].length; j++) {
	                    	
	                        let row2 = '<li class="nav-item ">'+
	                        				'<a href="#-'+project1[i][j]["STT"]+'"'+ 
	                        					'target="_blank" onclick = "return project_link_sheet_1('+project1[i][j]["STT"]+') "'+
	                        					'class="nav-link d-flex" id="project1-'+project1[i][j]["STT"]+'">' +
	                        				'<i class="far fa-hand-point-right nav-icon" style="font-size: 1rem; margin-left: 6%;"></i>' +
	                        				'<p>'+
	                        					project1[i][j]["D??? ??n/G??i th???u"]+
					                        '</p>'+
					                        '</a>' +
					                     '</li>';
	                        detai_pci1.innerHTML += row2;
	                    }

	                }
	            });
	            function project_link_sheet_1(id) {
	        		window.open("bao_cao_sheet_1?id_p1="+id); //Link ?????n trang kh??c v???i tab m???i
	        		//window.location.href = "http://www.w3schools.com"; //Link ?????n trang kh??c ??? tab hi???n t???i
	        	  	//location.replace("https://www.w3schools.com"); //Link ?????n trang kh??c thay th??? trang hi???n t???i
	        	}
				</script>
				
				<li class="nav-header">Ng?????i ph??? tr??ch</li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							L?? Tu???n C???nh <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">2</span>
						</p>
				</a>
					<ul class="nav nav-treeview " style="font-size: 13px;">
						<li class="nav-item "><a href="pages/mailbox/mailbox.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									92.310 ONT240 (??TRR)
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>9</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/mailbox/compose.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									560k ONT 020-H
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>2</b> -->
								</p>
						</a></li>

					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Ho??ng Anh <i style="font-size: 1rem; margin-left: 6%;"
								class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">4</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="pages/examples/invoice.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									H?? 01-NET2
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/examples/profile.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									H??01 - Atenna v???i MLMN
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/examples/e-commerce.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									H??02 - Atenna v???i MLMN
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/examples/projects.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									H??05 - Atenna v???i MLMN (MSTT)
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>

					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Th??nh Nam <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">1</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									H?? 04-NET1
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Nguy???n Ng???c Minh <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">3</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									GPON - DOT 1
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="bao_cao_sheet_1"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									GPON - DOT 2
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									GPON 40 TR???M (??TRR)
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Nguy???n Anh Tu???n <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">1</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									GPON - DOT 3
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Ho??i Nam <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">2</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									D??? ??n CSDLQG
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									X??? l?? n?????c th???i ???? N???ng
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Tu???n Anh <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">7</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="detail_2"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									MSTT thi???t b??? ONT 040H
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									MSTT thi???t b??? STB AndroidTV
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									MSTT trang b??? thi???t b??? OLT-GPON n??m 2021 cho c??c VNPT
									T???nh,th??nh ph???
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									OLT ???ng c???u 2021 v??ng 62 TTP
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trang b??? b??? sung thi???t b??? ph???c v??? d???ch chuy???n node m???ng
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Mua s???m ONT theo h???p ?????ng khung ANSV-CMC PO02-PO05
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="pages/search/enhanced.html"
							class="nav-link d-flex"> <i
								class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Mua s???m ONT theo h???p ?????ng khung ANSV-CMC C??c PO t???i h???t 2021
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>

					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Tr???n Tu???n Anh <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">1</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Th??? nghi???m thi???t b??? Battery ReGeneration c???a GoldenPlus
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							L?? Tr?????ng Giang <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">6</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Backbone 2021
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Trang b??? OLT 4 PON
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									H??? th???ng Firewall cho m???ng ??HSXKD c???a VNPT-Net
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									MSTT m??? r???ng h??? th???ng Digital Cloud n??m 2021
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									MSTT m??? r???ng h??? th???ng CDN, MiddleWare VMP cung c???p d???ch v??? MyTV
									v?? DigiLife
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									M??? r???ng h??? th???ng truy???n d???n CVCS t???i T??n Thu???n
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Ho??ng B???o Trung <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">10</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									D??? ??n anten n??m 2021 c???a VNPT NET
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									OCS
									<!-- <span class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Mua s???m trang b??? anten twinbeam ph???c v??? tri???n khai b??? sung
									Sector cho c??c tr???m 4G l??u l?????ng cao
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Th???a thu???n khung MSTT Anten
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Mua s???m 50 b??? anten highgain ph???c v??? m???ng l?????i Mi???n Trung
									<!--  <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trang b??? 4 b??? Load Balancer
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Th??? nghi???m thi???t b??? Viba c???a h??ng SLAE
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="">
									Trang b??? thi???t b??? an to??n b???o m???t
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									IP to DVB -T2
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									N??ng cao ATBM h??? t???ng m???ng SXKD t???i IDC NTL
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Tr???n Xu??n Hi???u <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">8</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									M??? r???ng h??? th??ng NPB
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trang b??? h??? th???ng SBC
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									H??? tr??? k??? thu???t h??? th???ng IN(c??)
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									H??? th???ng b???o m???t cho h??? th???ng b??o hi???u qu???c t??? m???ng MobiFone
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									H??? th???ng International SMPPGW ph???c v??? kinh doanh SMS Qu???c
									t???(A2P, Transit )
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									X??y d???ng h??? th???ng qu???n l?? nh??n s??? HRM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Cung c???p l???p ?????t thi???t b??? b???o m???t
									<!--  <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									T??ng c?????ng n??ng l???c k???t n???i h??? t???ng m???ng IDC v?? ph???c v??? kh??ch
									h??ng
									<!-- <span class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									T??ch h???p t??nh n??ng Chat tr??n Zalo v???i h??? th???ng IPCC
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Phan Quang T??ng <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">1</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									H??? th???ng t???ng ????i,??i???n tho???i, switch cho d??? ??n ???????ng s???t tr??n
									cao tuy???n Nh???n- Ga H?? n???i
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							Nguy???n Qu???c B??nh <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">4</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									IOC VNPT V??nh Ph??c
									<!-- <span class="badge badge-pill badge-danger">0</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Danh m???c CNTT ???? ???????c duy???t c???a B??? KHCN
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									DA v??? to??n b??? l??nh v???c CNTT kh??ch h??ng b??? Khoa h???c v?? CN
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trung t??m b???o h??nh th??ng tin th??ng minh UBND t???nh V??nh Ph??c
									<!--  <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							Tr???n Phong ??i T?? <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">4</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									L???p ?????t h??? th???ng camera an ninh quan s??t c??c tuy???n c???a ng?? ra
									v??o Qu???n 4 v?? Trung t??m B???i d?????ng ch??nh tr??? qu???n
									<!-- <span
										class="badge badge-pill badge-danger">1</span>/<b>1</b> -->

								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Cung c???p thi???t b??? ?????u cu???i IAD
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									D??? ??n trang b??? IOC v?? camera gi??m s??t an ninh cho Q5 TPHCM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									D??? ??n trang b??? IOC v?? camera gi??m s??t an ninh cho Q7 TPHCM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon fas fa-user"></i>
						<p>
							??o??n Anh Tu???n <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">20</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Trung t??m Gi??m s??t v?? ch??? ?????o ??i???u h??nh t???p trung tr??n n???n t???ng
									d??? li???u d??n c??
									<!-- <span class="badge badge-pill badge-danger">1</span>
									/ <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									C?? s??? d??? li???u C??ng ch???c Vi??n ch???c B??? N???i v???
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									L??u tr??? t??i li???u ??i???n t??? Ph??ng l??u tr??? nh?? n?????c Vi???t Nam
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									X??y d???ng trung t??m ??i???u h??nh B??? khoa h???c c??ng ngh???
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									X??y d???ng c???ng d???ch v??? c??ng th??nh ph???, h??? th???ng th??ng tin m???t
									c???a ??i???n t??? th??nh ph??? v?? h??? th???ng ????nh gi?? s??? h??i l??ng c???a
									ng?????i d??n, doanh nghi???p
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									X??y d???ng trung t??m ??i???u h??nh th??ng minh v?? chuy???n ?????i kho l??u
									tr??? cho VP ????ng k?? ?????t ??ai TP
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b>-->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Thu?? d???ch v??? c??ng ngh??? th??ng tin th???c hi???n H???i quan s???
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trung t??m Gi??m s??t v?? ch??? ?????o ??i???u h??nh B??? Th??ng tin truy???n
									th??ng
									<!-- <span class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trung t??m Gi??m s??t v?? ch??? ?????o ??i???u h??nh B??? X??y d???ng
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									Thu?? d???ch v??? c??ng ngh??? th??ng tin hosting c??c h??? th???ng c???a C???ng
									th??ng tin ??i???n t??? Ch??nh ph???
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p class="text-danger">
									X??y d???ng n???n t???ng trao ?????i ?????nh danh v?? x??c th???c ??i???n t??? IDEx
									<!-- <span
										class="badge badge-pill badge-danger">1</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Tri???n khai m??? r???ng c??c l??nh v???c ti???p nh???n v?? x??? l?? th??ng tin
									c???a c??c l??nh v???c th??ng qua c???ng th??ng tin 1022; v?? k???t n???i,
									t??ch h???p c??c c???ng th??ng tin, c??c ???ng d???ng c???a s??? ng??nh
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Tri???n khai c??c th??? t???c ?????u t?? d??? ??n ???X??y d???ng Trung t??m ti???p
									nh???n v?? x??? l?? th??ng tin kh???n c???p c???a th??nh ph??? H??? Ch?? Minh
									th??ng qua m???t ?????u s??? vi???n th??ng duy nh???t giai ??o???n
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									X??y d???ng Trung t??m ??i???u h??nh ??TTM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									X??y d???ng Trung t??m d??? li???u d??ng chung, ph???c v??? cho vi???c k???t
									n???i, chia s??? d??? li???u camera
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									N??ng c???p trung t??m ch??? huy v?? l???p ?????t h??? th???ng camera gi??m s??t
									t???i ph??ng C???nh s??t giao th??ng, C??ng an th??nh ph??? H?? N???i
									<!--  <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									N??ng c???p trung t??m ch??? huy v?? l???p ?????t h??? th???ng camera gi??m s??t
									t???i ph??ng C???nh s??t giao th??ng ???????ng b??? - ???????ng s??t, C??ng an
									th??nh ph??? H??? Ch?? Minh
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									IDP B??? C??ng An (ch??a c?? t??n ch??nh x??c)
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									X??y d???ng trung t??m ??i???u h??nh th??ng minh c???a S??? TTTT
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Quan Tr???c m??i tr?????ng B??nh D????ng
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
				<li class="nav-item"><a href="#" class="nav-link d-flex"> <i
						class="nav-icon far fa-user"></i>
						<p>
							V?? Duy T??ng <i class="fas fa-angle-left right"></i> <span
								class="badge badge-info right">3</span>
						</p>
				</a>
					<ul class="nav nav-treeview" style="font-size: 13px;">
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									D??? ??n trang b??? Wi-Fi Qu???n 8, TP HCM
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trang b??? Camera cho VNPT Th??i Nguy??n
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
						<li class="nav-item"><a href="#" class="nav-link d-flex">
								<i class="far fa-hand-point-right nav-icon"
								style="font-size: 1rem; margin-left: 6%;"></i>
								<p>
									Trung t??m ??i???u h??nh B???o Hi???m XHVN
									<!-- <span
										class="badge badge-pill badge-danger">0</span> / <b>1</b> -->
								</p>
						</a></li>
					</ul></li>
			</ul>
		</nav>
		<!-- /.sidebar-menu -->
	</div>
	<!-- /.sidebar -->
</aside>
<!-- End menu -->