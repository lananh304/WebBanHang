<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<title>Xem chi tiết danh mục</title>
		
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
        <h1><span class = "glyphicon glyphicon-folder-open addtop" aria-hidden = "true"></span>&nbsp;&nbsp;Chi tiết danh mục</h1>
        <div id = "sub-main">
            <div class = "row">
                <div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
                    <ol class = "breadcrumb">
                        <li>Hệ thống</li>
                        <li>Danh mục sản phẩm</li>
                        <li class = "active">Chi tiết danh mục</li>
                    </ol>
                </div>
                <div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
                    <div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
                </div>
            </div>
            <div class = "row margin0 space-top">
                <div class = "option-h4 text-justify">
                    <h4>Chi tiết danh mục</h4>
                    <form     >
                    <div class = "tendm">
                            <label>STT</label><br>
                            <input type = "text" class = "texttendm" id="tendanhmuc" placeholder = "${categorys.id}" readonly="readonly"  />

                        </div>
                        <div class = "tendm">
                            <label>Tên danh mục</label><br>
                            <input type = "text" class = "texttendm" id="tendanhmuc" placeholder = "${categorys.type}" readonly="readonly"   />

                        </div>
                        <div class = "motadm" style="height: 100px;">
                            <label>Active</label><br>
                     
                             <input type = "text" class = "texttendm" id="tendanhmuc" placeholder = "${categorys.active}" readonly="readonly" />

                        </div>
                        <div class = "btnluudm">
                            <a href = "<c:url value="/danhmuc"/>" style="color: white;width: 50px" ><p style="text-align: center;">Trở lại</p></a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
		<%@include file="layouts/footer.jsp"%>
</div>
</body>
</html>