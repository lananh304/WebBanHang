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
		
		
		
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

		
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
		<h1><i class="fas fa-folder-open"></i> Danh mục sản phẩm</a></h1>
		<div id = "sub-main">
			<div class = "row">
				<div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
					<ol class = "breadcrumb">
						<li>Hệ thống</li>
						<li class="active">Danh mục sản phẩm</li>
					</ol>
				</div>
				<div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
					<div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
				</div>
			</div>
			<div class = "row space-top">
				<div class = "col-xs-12 col-sm-5 col-md-7 col-lg-7">
					<div class = "btn btn-danger btn-lg">
						<a href = "<c:url value="/themdanhmuc"/>">Thêm mới</a>
					</div>
				</div>
				<div class = "col-xs-12 col-sm-7 col-md-5 col-lg-5" style="float: right;margin-right: -30px;margin-bottom: -20px">
				<form action="timkiemdm" method="get">
					<div class = "input-group text-right">
						<input type = "text" class = "form-control" id="search" placeholder = "Bạn cần tìm gì?" name="text"  value="">
						<span class = "input-group-btn">
									<button class = "btn btn-danger" style="margin-top: -10px"  type="submit">Tìm kiếm</button>
								</span>
					</div>
					</form>
				</div>
			</div>
			<div class = "row space-top box-total" style="margin-top: -20px">
				<div class = "col-xs-12 col-sm-8 col-md-7 col-lg-6">
					<span><i>Tổng số danh mục: </i><strong>${danhmuc.size()}</strong></span>
				</div>
			</div>

			<div class = "row margin0">
				<div class = "table-responsive quantri">
					<table class = "table table-striped table-bordered" id="result">
						<thead>
						<tr>
							<th style="width: 20px">STT</th>
							<th>Tên thể loại</th>
							<th style="width: 300px">Danh mục cha</th>
							<th style="width: 150px">Thao tác</th>

						</tr>
						</thead>
						<c:forEach var="item" items="${danhmuc}" varStatus="index">
						<tr>
							<td>${item.id}</td>
						
							<td>${item.type}</td>
							<td>${item.active}</td>
						<td><a title="Xem chi tiết" href = "<c:url value="/xemdanhmuc/${item.id}"/>"><i class="fas fa-eye" style="font-size: 20px; color: #03A9F4 "></i>   </a>
					
								<a  title="Sửa" href = "<c:url value="/customer-update/${item.id}"/>"><i class="far fa-edit" style="font-size: 20px; color: #03A9F4;margin-left: 5px "></i>   </a>
						
							
								<a  title="Xóa" href = "<c:url value="/deletedanhmuc/${item.id}"/>"  onclick="return confirm('Bạn có chắc chắn muốn xóa danh mục ${item.type}  ?');"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4;margin-left: 5px"></i></a>
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
<script >

function ConfirmDelete()
{
  var x = confirm("Are you sure you want to delete?");
  if (x)
      return true;
  else
    return false;
}
</script> 
<script>

var selector = '.collapse li';

$(selector).on('click', function(){
    $(selector).removeClass('active');
    $(this).addClass('active');
});

</script>



</body>
</html>