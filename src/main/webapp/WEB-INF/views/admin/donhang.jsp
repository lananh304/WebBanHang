<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--     <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<base href="" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<meta name="copyright" content="" />
		<title>Quản lý đơn hàng</title>
		
<!--		<link rel="shortcut icon" type="image/x-icon" href="images/icon-logo.png" />-->
		<link href="<c:url value="/assets/admin/css/bootstrap.min.css"/>" rel="stylesheet" />
		<link href="<c:url value="/assets/admin/css/layout.css"/>" rel="stylesheet" />

		<script src="<c:url value="/assets/admin/js/jquery.min.js"/>"></script>
		<script src="	<c:url value="/assets/admin/js/bootstrap.min.js"/>"></script>
		<script src="	<c:url value="/assets/admin/js/chart.min.js"/>"></script>

		<script src="https://kit.fontawesome.com/c25baca2b9.js" crossorigin="anonymous"></script>
		
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
		
		
				<style >
				
				
			body {
    overflow-x:hidden;
}

		
		.btntrolai{

	background:#5bc0de;
	width: 130px;
	height: 30px;
	padding: 8px;
	border-radius: 3px;
	margin-left: 0px;
}
		</style>
	</head>
	<body>
		<div class = "container-fluid padding0">
		<%@include file="layouts/header.jsp"%>
				<div id = "main">
				<nav class = "navbar navbar-default">
					<ul class = "nav navbar-nav navbar-right">

						<li class = "dropdown active">
													<c:if test="${ not empty LoginInfo }">
													
							                   

							<a href = "#" class = "dropdown-toggle" data-toggle = "dropdown" role = "button" aria-haspopup = "true" aria-expanded = "false">Chào! ${LoginInfo.username }<span class = "caret caret-fix"></span></a>
							<ul class = "dropdown-menu">
								<li><a href = "homthu.html"><i class="far fa-envelope" style="font-size: 17px"></i>  Hòm thư</a></li>
								<li><a href = "<c:url value="/xnmatkhau"/>"><i class="fas fa-tools" style="font-size: 17px"></i>  Đổi mật khẩu</a></li>
								<li role = "separator" class = "divider"></li>
								<li><a href = "<c:url value="/dangxuatad"/>"><i class="far fa-times-circle"></i>&nbsp;</span>  Thoát</a></li>
							</ul>
								</c:if>
						</li>
					</ul>
				</nav>
		<h1><i class="fas fa-copy" style="font-size: 17px"></i> Quản lý đơn hàng</h1>
		<div id = "sub-main">
			<div class = "row">
				<div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
					<ol class = "breadcrumb">
						<li>Hệ thống</li>
						<li class = "active">Quản lý đơn hàng</li>
					</ol>
				</div>
				<div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
					<div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
				</div>
			</div>
			<div class = "row space-top">
				<div class = "col-xs-12 col-sm-5 col-md-7 col-lg-7"></div>
			<div class = "col-xs-12 col-sm-7 col-md-5 col-lg-5" style="float: right;margin-right: -30px">
							<form action="timkiemdh" method="get">
					<div class = "input-group text-right">
						<input type = "text" class = "form-control" placeholder = "Bạn cần tìm gì?" name="text"  value="">
						<span class = "input-group-btn">
									<button class = "btn btn-danger" type = "submit" style="margin-top: -10px">Tìm kiếm</button>
								</span>
					</div>
					</form>
				</div>
			</div>
					<div class = "row space-top box-total" style="margin-top: -70px">
						<div class = "col-xs-12 col-sm-8 col-md-7 col-lg-6">
							<span><i>Tổng số đơn hàng: </i><strong>${donhang.size()}</strong> </span>
							
						</div>
					</div>
					<div class = "row margin0 space">
				<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3 padding0">
			<div class = "form-inline" style="margin-top: -60px;margin-left: -20px;margin-bottom: -20px" > 
							
						
							<form class="pricing" action="sortVanChuyen" method="get">
								<select class = "form-control" name="pricing" onchange='this.form.submit()'>
									<option
										<c:if test="${pricing eq 'default'}">
										selected="selected"
										</c:if>
										value="default">Sắp xếp theo hình thức vận chuyển</option>
									<option
										<c:if test="${pricing eq 'Chuyen khoan ngan hang'}">
										selected="selected"
										</c:if>
										value="Chuyen khoan ngan hang">Chuyển khoản ngân hàng</option>
									<option
										<c:if test="${pricing eq 'Thanh toan tien mat khi nhan hang'}">
										selected="selected"
										</c:if>
										value="Thanh toan tien mat khi nhan hang">Thanh toán tiền mặt khi nhận hàng</option>
									
									
								
								</select>
							</form>
							</div>
							
							
							
							<div class = "form-inline" style="margin-top: -92px;margin-left: 230px;margin-bottom: -20px" > 
							
						
							<form class="pricing" action="sortTrangThai" method="get">
								<select class = "form-control" name="pricing" onchange='this.form.submit()'>
									<option
										<c:if test="${pricing eq 'default'}">
										selected="selected"
										</c:if>
										value="default">Sắp xếp theo trạng thái đơn hàng</option>
									<option
										<c:if test="${pricing eq 'Chờ xác nhận'}">
										selected="selected"
										</c:if>
										value="Chờ xác nhận">Chờ xác nhận</option>
									<option
										<c:if test="${pricing eq 'Đang giao hàng'}">
										selected="selected"
										</c:if>
										value="Đang giao hàng">Đang giao hàng</option>
									
											<option
										<c:if test="${pricing eq 'Đã giao hàng'}">
										selected="selected"
										</c:if>
										value="Đã giao hàng">Đã giao hàng</option>
								
								</select>
							</form>
							</div>
						</div>
					</div>
			<div class = "row margin0" >
				<div class = "table-responsive quantri">
					<table class = "table table-striped table-bordered">
						<thead>
						<tr>
							<th style="width: 20px">STT</th>
							<th>Tên khách hàng</th>
					
							<th>Địa chỉ</th>
							<th>Số điện thoại</th>
							<th>Ngày đặt</th>
							<th>Tổng tiền</th>
							<th>Hình thức thanh toán</th>
								<th style="width: 130px">Tình trạng</th>
							<th style="width: 130px">Trạng thái</th>
							<th>Thao tác</th>
							
						</tr>
						</thead>
						<c:forEach var="item" items="${donhang}" varStatus="index">
						<tr>
							<td>${item.id}</td>
							<td>${item.name}</td>
							
							<td>${item.address}</td>
							
							<td>${item.phone}</td>
							<td>${item.date}</td>
							<td>${item.total}00 đ</td>
							<td>${item.vanchuyen}</td>
							<td>${item.trangthai}</td>
						<td>
						

							
								<c:if test="${item.trangthai eq 'Chờ xác nhận'}">
								 <div class = "btntrolai" style="text-align: center;margin-top: 10px;background: #4BDA46">
									<a href = "<c:url value="/danggiaohang/${item.id}"/>" style="color: white">Đang giao hàng</a>
								</div>
									 <div class = "btntrolai" style="text-align: center;margin-top: 10px;background: #E44848">
									<a href = "<c:url value="/huydonhang/${item.id}"/>" style="color: white">Hủy đơn hàng</a>
								</div>
								</c:if>
									<c:if test="${item.trangthai eq 'Đang giao hàng'}">
						 <div class = "btntrolai" style="text-align: center;margin-top: 10px;background: #03A9F4">
									<a href = "<c:url value="/dagiaohang/${item.id}"/>" style="color: white">Đã giao hàng</a>
								</div>
								</c:if>
								
								
									<c:if test="${item.trangthai eq 'Đã giao hàng'}">
						<p>Đơn hàng đã hoàn thành</p>
								</c:if>
								
								
								<c:if test="${item.trangthai eq 'Hủy đơn hàng'}">
												    <div class = "btntrolai" style="text-align: center;background: #CEBB0D">
									<a href = "<c:url value="/choxacnhan/${item.id}"/>" style="color: white">Chờ xác nhận</a>
								</div>
								</c:if>
						</td>
							
								<td><a title="Xem chi tiết" href = "<c:url value="/xemdonhang/${item.id}"/>"><i class="fas fa-eye" style="font-size: 20px; color: #03A9F4"></i>   </a>
					

<%-- 								<a title="Xóa" href = "<c:url value="/deletedonhang/${item.id}"/>" onclick="return confirm('Bạn có chắc chắn muốn xóa đơn hàng của ${item.name} ?');"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4;margin-left: 5px"></i></a> --%>
							</td>
						</tr>
						</c:forEach>
						
				
					</table>
				</div>
				<nav>
					<ul class="pagination">
						<li>
							<a href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<li class = "active"><a href="#">1</a></li>

						<li>
							<a href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
				<%@include file="layouts/footer.jsp"%>
		</div>
	</body>
</html>