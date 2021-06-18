<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Trang chủ</title>

<script type="text/javascript">
	$( document ).ready(function() {
		let params = (new URL(document.location)).searchParams;
		let id = parseInt(params.get("id_p1"));
		return_id(id);
		
	});
</script>

<div class="content-wrapper bg-dark">
	<!-- Content Header (Page header) -->
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 id="title" class="m-0">
					
					</h1>
				</div>
				<!-- /.col -->
				<div class="col-sm-6"></div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- /.content-header -->

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid" id="detail_data">

<script>
	function return_id(id) {
		var title = document.getElementById('title');
	       var detail_data = document.getElementById("detail_data");
	      
	       $.getJSON('<c:url value="/assets/user/upload/data-new.json"/>', function(json) {
	           // console.log(json);
	           
	           json.forEach(item => {
	               if (item["STT"] == id) {
	            	   let row =  item["Dự án/Gói thầu"];
	            	   title.innerHTML += row;
	                   let row1 = '<div class="row">'
	                       +'<div class="col-md-6">'
	                           +'<div class="table-responsive-sm">'
	                               +'<table class="table table-hover table-dark table-bordered">'
	                                   
	                                   +'<tr>'
	                                       +'<th colspan="2">Dự án/Gói thầu</th>'
	                                       +'<td>'+format(item["Dự án/Gói thầu"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th colspan="2">Phạm vi cung cấp</th>'
	                                       +'<td>'+format(item["Phạm vi cung cấp"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th colspan="2">Tổng giá trị</th>'
	                                       +'<td>'+format(item["Tổng giá trị"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th rowspan="3">Kế hoạch nghiệm thu</th>'
	                                       +'<th>DAC</th>'
	                                       +'<td>'+format_date(item["DAC"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th>PAC</th>'
	                                       +'<td>'+format_date(item["PAC"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th>FAC</th>'
	                                       +'<td>'+format_date(item["FAC"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th rowspan="2">Thanh toán tạm ứng</th>'
	                                       +'<th>Số tiền</th>'
	                                       +'<td>'+format(item["Số tiền thanh toán tạm ưng"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th>Kế hoạch</th>'
	                                       +'<td>'+format_date(item["Kế hoạch tạm ứng"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th rowspan="2">Thanh toán DAC</th>'
	                                       +'<th>Số tiền</th>'
	                                       +'<td>'+format(item["Số tiền thanh toán DAC"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th>Kế hoạch</th>'
	                                       +'<td>'+format_date(item["Kế hoạch Thanh toán DAC"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th rowspan="2">Thanh toán PAC</th>'
	                                       +'<th>Số tiền</th>'
	                                       +'<td>'+format(item["Số tiền Thanh toán PAC"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'

	                                       +'<th>Kế hoạch</th>'
	                                       +'<td>'+format_date(item["Kế hoạch Thanh toán PAC"])+'</td>'
	                                   +'</tr>'
	                               +'</table>'
	                           +'</div>'
	                       +'</div>'
	                       +'<div class="col-md-6">'
	                           +'<div class="table-responsive-sm">'
	                               +'<table class="table table-hover table-dark table-bordered">'

	                                   +'<tr>'
	                                       +'<th rowspan="2">Thanh toán FAC</th>'
	                                       +'<th>Số tiền</th>'
	                                       +'<td>'+format(item["Số tiền Thanh toán FAC"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th>Kế hoạch</th>'
	                                       +'<td>'+format_date(item["Kế hoạch Thanh toán FAC"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th colspan="2">Tình trạng</th>'
	                                       +'<td>'+format(item["Tình trạng"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th colspan="2">Mức dộ ưu tiên</th>'
	                                       +'<td>'+format(item["Priority"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th colspan="2">Kết quả thực hiện kế hoạch</th>'
	                                       +'<td>'+format(item["Kết quả thực hiện kế hoạch"])+'</td>'
	                                   +'</tr>'
	                                   +'<tr>'
	                                       +'<th colspan="2">Phụ trách</th>'
	                                       +'<td>'+format(item["PIC"])+'</td>'
	                                   +'</tr>'

	                               +'</table>'
	                           +'</div>'
	                       +'</div>'
	                   +'</div>'
	                   ;
	                   detail_data.innerHTML += row1;
	               }
	           });
	       })
	}
</script>


		</div>
		<!-- /.container-fluid -->
	</section>
	<!-- /.content -->
</div>