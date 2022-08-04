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
		<title>Quản lý sản phẩm</title>
		
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
		
		
		
			<style>
			body {
    overflow-x:hidden;
}
			
			
.pagination {

margin: auto;
  

}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
}

.pagination a.active {
  background-color:  #44aaee;
  color: white;
  border: 1px solid  #44aaee;
}

.pagination a:hover:not(.active) {background-color: #ddd;}
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
				<h1><span class = "glyphicon glyphicon-gift addtop" aria-hidden = "true"></span>&nbsp;&nbsp;Sản phẩm</h1>	
				<div id = "sub-main">
					<div class = "row">
						<div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
							<ol class = "breadcrumb">
								<li>Hệ thống</li>
								<li class="active">Sản phẩm</li>
							</ol>
						</div>
						<div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
							<div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
						</div>
					</div>
					<div class = "row space-top">
						<div class = "col-xs-12 col-sm-5 col-md-7 col-lg-7">
							<div class = "btn btn-danger btn-lg">
								<a href = "<c:url value="/themsanpham"/>">Thêm mới</a>
							</div>
						</div>
						
						<div class = "col-xs-12 col-sm-7 col-md-5 col-lg-5" style="float: right;margin-right: -30px">
							<form action="http://localhost:8080/WebBanSach/timkiemsp" method="get">
							<div class = "input-group text-right">
						
								<input type = "text" class = "form-control" placeholder = "Bạn cần tìm gì?" name="text"  value="">
								<span class = "input-group-btn">
									<button class = "btn btn-danger" type = "submit" style="margin-top: -10px">Tìm kiếm</button>
								</span>
								
							</div>
							</form>
							
						</div>
					</div>
					<div class = "row space-top box-total" style="margin-top: -30px">
						<div class = "col-xs-12 col-sm-8 col-md-7 col-lg-6">
							<span><i>Tổng số sản phẩm: </i><strong>${sanpham.size()}</strong> </span>
							
						</div>
					</div>
			<div class = "row margin0 space">
				<div class="col-xs-12 col-sm-5 col-md-4 col-lg-3 padding0">
			<div class = "form-inline" style="margin-top: -30px;margin-left: -20px;margin-bottom: -20px" > 
							
						
							<form class="pricing" action="sortCategory" method="get">
								<select class = "form-control" name="pricing" onchange='this.form.submit()'>
									<option
										<c:if test="${pricing eq 'default'}">
										selected="selected"
										</c:if>
										value="default">Sắp xếp theo danh mục</option>
									<option
										<c:if test="${pricing eq 'Sách Mới Phát Hành'}">
										selected="selected"
										</c:if>
										value="Sách Mới Phát Hành">Sách Mới Phát Hành</option>
									<option
										<c:if test="${pricing eq 'Sách Bán Chạy'}">
										selected="selected"
										</c:if>
										value="Sách Bán Chạy">Sách Bán Chạy</option>
											<option
										<c:if test="${pricing eq 'Sách Giảm Giá'}">
										selected="selected"
										</c:if>
										value="Sách Giảm Giá">Sách Giảm Giá</option>
											<option
										<c:if test="${pricing eq 'Văn Học-Teen'}">
										selected="selected"
										</c:if>
										value="Văn Học-Teen">Văn Học-Teen</option>
											<option
										<c:if test="${pricing eq 'Hướng Nghiệp-Kĩ Năng'}">
										selected="selected"
										</c:if>
										value="Hướng Nghiệp-Kĩ Năng">Hướng Nghiệp-Kĩ Năng</option>
											<option
										<c:if test="${pricing eq 'Tiểu thuyết'}">
										selected="selected"
										</c:if>
										value="Tiểu thuyết">Tiểu thuyết</option>
											<option
										<c:if test="${pricing eq 'Truyện Tranh'}">
										selected="selected"
										</c:if>
										value="Truyện Tranh">Truyện Tranh</option>
											<option
										<c:if test="${pricing eq 'Sức Khỏe'}">
										selected="selected"
										</c:if>
										value="Sức Khỏe">Sức Khỏe</option>
											<option
										<c:if test="${pricing eq 'Truyện Cổ Tích-Thần Thoại'}">
										selected="selected"
										</c:if>
										value="Truyện Cổ Tích-Thần Thoại">Truyện Cổ Tích-Thần Thoại</option>
											<option
										<c:if test="${pricing eq 'Vừa Hoc Vừa Chơi'}">
										selected="selected"
										</c:if>
										value="Vừa Hoc Vừa Chơi">Vừa Hoc Vừa Chơi</option>
											<option
										<c:if test="${pricing eq 'Kiến Thức-Kĩ Năng'}">
										selected="selected"
										</c:if>
										value="Kiến Thức-Kĩ Năng">Kiến Thức-Kĩ Năng</option>
											<option
										<c:if test="${pricing eq 'Văn Học'}">
										selected="selected"
										</c:if>
										value="Văn Học">Văn Học</option>
											<option
										<c:if test="${pricing eq 'Truyện Kể Cho Bé'}">
										selected="selected"
										</c:if>
										value="Truyện Kể Cho Bé">Truyện Kể Cho Bé</option>
									
									
								
								</select>
							</form>
							</div>
							
							
							
							<div class = "form-inline" style="margin-top: -92px;margin-left: 180px;margin-bottom: -20px" > 
							
						
							<form class="pricing" action="http://localhost:8080/WebBanSach/sortGia" method="get">
								<select class = "form-control" name="pricing" onchange='this.form.submit()'>
									<option
										<c:if test="${pricing eq 'default'}">
										selected="selected"
										</c:if>
										value="default">Sắp xếp theo giá</option>
									<option
										<c:if test="${pricing eq 'Desc'}">
										selected="selected"
										</c:if>
										value="Desc">Giảm dần</option>
									<option
										<c:if test="${pricing eq 'ASC'}">
										selected="selected"
										</c:if>
										value="ASC">Tăng dần</option>
									
											
								
								</select>
							</form>
							</div>
						</div>
					</div>
					<div class = "row margin0">
						<div class = "table-responsive table-sanpham">
							<table class = "table table-striped table-bordered">
								<thead>
									<tr>
										<th>STT</th>
										<th>Hình ảnh</th>
										<th>Tên sản phẩm</th>
										<th>Tác giả</th>
										<th>Thể loại</th>
										<th>Giá</th>
										<th>Mô tả</th>
										<th style="width: 130px">Thao tác</th>
								
									</tr>
								</thead>
								<c:if test="${sanpham.size() > 0}">
								<c:forEach var="item" items="${sanpham}" varStatus="index">
								<tr>
									<td>${item.id}</td>
									<td><img class="img-responsive" src="<c:url value="/assets/user/images/truyentranh/${item.img}"/>" alt=""/></td>
									<td>${item.name}</td>
									<td>${item.tacgia}</td>
									<td>${item.type}
									</td>
									<td>${item.price}00 ₫</td>
								
									<td>${item.des}
									</td>
									
	<td><a title="Xem chi tiết" href = "<c:url value="/xemsanpham/${item.id}"/>"><i class="fas fa-eye" style="font-size: 20px; color: #03A9F4 "></i>   </a>
					
								<a  title="Sửa" href = "<c:url value="/sanpham-update/${item.id}"/>"><i class="far fa-edit" style="font-size: 20px; color: #03A9F4;margin-left: 5px "></i>   </a>
							
								<a  title="Xóa" href = "<c:url value="/deletesanpham/${item.id}"/>"  onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm ${item.name}  ?');"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4;margin-left: 5px"></i></a>
							</td>
								</tr>
					
						
					</c:forEach>
					</c:if>
							</table>
						</div>
												<div class="pagination ">
								<c:forEach var="item" begin="1" end="${paginateInfo.totalPage}" varStatus="loop">
								<c:if test="${(loop.index) == paginateInfo.currentPage }">
								 <a href="<c:url value="/plsanpham/${loop.index }"/>" class="active">${(loop.index)}</a>
								
								
								</c:if>
								
									<c:if test="${(loop.index) != paginateInfo.currentPage }">
								 <a href="<c:url value="/plsanpham/${loop.index }"/>" >${(loop.index)}</a>
								
								
								</c:if>
								</c:forEach>

</div>
					</div>
				</div>
			</div>
		<%@include file="layouts/footer.jsp"%>
</div>
</body>
</html>