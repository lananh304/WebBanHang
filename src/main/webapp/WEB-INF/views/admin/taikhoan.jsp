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
		<title>Quản lý danh mục</title>
		
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
	width: 80px;
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
				<h1><i class="fas fa-heartbeat" style="font-size: 17px"></i>  Quản lý tài khoản</h1>
				<div id = "sub-main">
					<div class = "row">
						<div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
							<ol class = "breadcrumb">
								<li>Hệ thống</li>
								<li class = "active">Quản lý tài khoản</li>
							</ol>
						</div>
						<div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
							<div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
						</div>
					</div>
					<div class = "row space-top">
						<div class = "col-xs-12 col-sm-5 col-md-7 col-lg-7"></div>
					<div class = "col-xs-12 col-sm-7 col-md-5 col-lg-5" style="float: right;margin-right: -30px">
							<form action="timkiemuser" method="get">
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
							<span><i>Tổng số khách hàng: </i><strong>${taikhoan.size()}</strong> |</span>
<!-- 							<span><i>Có </i><strong>21</strong> <i>chưa kích hoạt</i></span> -->
						</div>
					</div>
					<div class = "row margin0 space">
<!-- 						<div class = "col-xs-12 col-sm-5 col-md-4 col-lg-3 padding0"> -->
<!-- 							<div class = "form-inline"> -->
<!-- 								<select class = "form-control"> -->
<!-- 									<option>Lọc....</option> -->
<!-- 									<option>a -> z</option> -->
<!-- 									<option>a <- z</option> -->
<!-- 								</select> -->
<!-- 								<button type = "submit" class = "btn btn-danger">Lọc</button> -->
<!-- 							</div> -->
<!-- 						</div> -->
		<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3 padding0">
			<div class = "form-inline" style="margin-top: -60px;margin-left: -20px;margin-bottom: -20px" > 
							
						
							<form class="pricing" action="sortSex" method="get">
								<select class = "form-control" name="pricing" onchange='this.form.submit()'>
									<option
										<c:if test="${pricing eq 'default'}">
										selected="selected"
										</c:if>
										value="default">Sắp xếp theo giới tính</option>
									<option
										<c:if test="${pricing eq 'Nam'}">
										selected="selected"
										</c:if>
										value="Nam">Nam</option>
									<option
										<c:if test="${pricing eq 'Nu'}">
										selected="selected"
										</c:if>
										value="Nu">Nữ</option>
									
									
								
								</select>
							</form>
							</div>
							
							
							
							<div class = "form-inline" style="margin-top: -92px;margin-left: 160px;margin-bottom: -20px" > 
							
						
							<form class="pricing" action="sortVaiTro" method="get">
								<select class = "form-control" name="pricing" onchange='this.form.submit()'>
									<option
										<c:if test="${pricing eq 'default'}">
										selected="selected"
										</c:if>
										value="default">Sắp xếp theo vai trò</option>
									<option
										<c:if test="${pricing eq 'Admin'}">
										selected="selected"
										</c:if>
										value="Admin">Admin</option>
									<option
										<c:if test="${pricing eq 'Member'}">
										selected="selected"
										</c:if>
										value="Member">Member</option>
									
									
								
								</select>
							</form>
							</div>
						</div>

<!-- 						<div class = "col-xs-12 col-sm-2 col-md-4 col-lg-9 text-right padding0"> -->
<!-- 							<div class = "btn btn-danger btn-a"> -->
<!-- 								<a href = "#">Xóa tất cả</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>
					<div class = "row margin0">
						<div class = "table-responsive quantri">
							<table class = "table table-striped table-bordered">
								<thead>
									<tr>
										<th style="width: 20px">STT</th>
										<th>Họ tên</th>
										<th>Email</th>
										<th>Ngày sinh</th>
										<th>Giới tính</th>
										<th>Vai trò</th>
									<th style="width: 80px;">Phân quyền</th>
										<th>Thao tác</th>
									</tr>
								</thead>
								<c:forEach var="item" items="${taikhoan}" varStatus="index">
								<tr>
									<td>${item.id}</td>
									<td>${item.username}</td>
									<td>${item.email}</td>
										<td>${item.date}</td>
									<td>${item.sex}</td>
									<td>${item.type}</td>
								
                                     <td>
                                    <c:if test="${item.type eq 'Member'}">
                                      <div class = "btntrolai" style="text-align: center;background: #E44848">
									<a href = "<c:url value="/admin/${item.id}"/>" style="color: white">Admin</a>
								</div>
                                     </c:if>
                                       
								    <c:if test="${item.type eq 'Admin'}">
								 <div class = "btntrolai" style="text-align: center;margin-top: 10px">
									<a href = "<c:url value="/member/${item.id}"/>" style="color: white">Member</a>
								</div>
                                     </c:if>
                                     </td>
								
									<td>
<a  title="Xóa" href = "<c:url value="/deleteuser/${item.id}"/>"  onclick="return confirm('Bạn có chắc chắn muốn xóa tài khoản ${item.username}  ?');"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>
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