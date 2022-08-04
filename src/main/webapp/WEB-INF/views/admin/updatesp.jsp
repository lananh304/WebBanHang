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
		<title>Sửa sản phẩm</title>
		
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

.er{
	color: red;
	display: block;
	padding: 5px 0px;
}

		
		
		.btntrolai{

	background:#5bc0de;
	width: 100px;
	height: 50px;
	padding: 16px;
	border-radius: 3px;
	margin-left: 20px;
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
        <h1><span class = "glyphicon glyphicon-folder-open addtop" aria-hidden = "true"></span>&nbsp;&nbsp;Sửa sản phẩm</h1>
        <div id = "sub-main">
            <div class = "row">
                <div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
                    <ol class = "breadcrumb">
                        <li>Hệ thống</li>
                        <li>Tất cả sản phẩm</li>
                        <li class = "active">Sửa sản phẩm</li>
                    </ol>
                </div>
                <div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
                    <div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
                </div>
            </div>
            <div class = "row margin0 space-top">
                <div class = "option-h4 text-justify">
                    <h4>Sửa sản phẩm</h4>
                    	<c:url value="/updateSanpham" var="updateSanpham" />
                    <form:form  action="${updateSanpham}"    modelAttribute="sanpham"  method="POST" >

   <div class = "tendm">
                            <label>STT</label><br>
                            <form:input type = "text" class = "texttendm" id="name"  path="id" readonly="true" />

                        </div>


                        <div class = "tendm">
                            <label>Tên sản phẩm</label><br>
                            <form:input type = "text" class = "texttendm" id="name" placeholder = " Nhập tên sản phẩm cần thêm" path="name" />

                        </div>
                        
                        
                            <div class = "tendm" style="margin-bottom: 30px">
                            <label>Hình ảnh</label><br>
                            <img style="width: 200px;height: 200px;margin-bottom: 20px" class="img-responsive" src="<c:url value="/assets/user/images/truyentranh/${sanpham.img}"/>" alt=""  />
                            
                            <form:input type = "file" class = "texttendm" id="name"  path="img" />

                        </div>
                        
                        
                                        <div class = "tendm">
                            <label>Mã sản phẩm</label><br>
                            <form:input type = "text" class = "texttendm" id="name" placeholder = " Nhập mã sản phẩm cần thêm" path="masp" />

                        </div>
                        
                        
                                     <div class = "tendm" style="margin-bottom: 30px">
                            <label >Loại sản phẩm</label><br>
                            	
				<form:select  id="female" path="type" style="height: 40px;width: 73%">
					<option value="" checked >${sanpham.type}</option>
					<c:forEach var="item" items="${danhmuc}" varStatus="index">
					
					<option value="${item.id}" checked >${item.type}</option>
					</c:forEach>
					
				</form:select>
			
        

                        </div>
                        
                                         <div class = "tendm">
                            <label>Tác giả</label><br>
                            <form:input type = "text" class = "texttendm" id="name" placeholder = " Nhập gỉa tác gủa cần thêm" path="tacgia" />

                        </div>
                        
                                         <div class = "tendm">
                            <label>Nhà xuất bản</label><br>
                            <form:input type = "text" class = "texttendm" id="name" placeholder = " Nhập nhà xuất bản cần thêm" path="congty" />

                        </div>
                                         <div class = "tendm" style="margin-bottom: 30px">
                            <label >Ngày xuất bản</label><br>
                            <form:input type = "date" class = "texttendm" id="name" path="ngayxuatban" style="height: 40px;width: 73%" />

                        </div>
                        
                                         <div class = "tendm">
                            <label>Kích thước</label><br>
                            <form:input type = "text" class = "texttendm" id="name" placeholder = " Nhập kích thước cần thêm" path="kichthuoc" />

                        </div>
                        
                                         <div class = "tendm">
                            <label>Loại bìa</label><br>
                            <form:input type = "text" class = "texttendm" id="name" placeholder = " Nhập loại bìa cần thêm" path="loaibia" />

                        </div>
                        
                                         <div class = "tendm">
                            <label>Số trang</label><br>
                            <form:input type = "text" class = "texttendm" id="name" placeholder = " Nhập số trang cần thêm" path="sotrang" />

                        </div>
                        
                        
                                         <div class = "tendm">
                            <label>Giá</label><br>
                            <form:input type = "text" class = "texttendm" id="name" placeholder = " Nhập giá cần thêm" path="price" />

                        </div>
                        
                        
                        
                          <span id="emaill" class="er"></span>
                        <div class = "motadm" style="height: 100px;">
                            <label>Mô tả</label><br>
                     
                             <form:textarea rows="5" cols="108" type = "text" class = "texttendm" id="active" placeholder = " Nhập mô tả cần thêm" path="des" />

                        </div>
                          <span id="pass" class="er"></span>
              
                         <input style="color: white;width: 120px;height:50px; background: #5bc0de;margin-left: 200px;border-radius: 3px;margin-top: 80px " type="submit" name="signup" id="signup"  value="Sửa dữ liệu" />
                         
                        
                        
                                  
                   
                    </form:form>
                      <div class = "btntrolai" style="text-align: center;margin-top: -80px;margin-bottom: 50px">
									<a href = "<c:url value="/plsanpham"/>" style="color: white">TRỞ LẠI</a>
								</div>
                </div>
            </div>
        </div>
    </div>
		<%@include file="layouts/footer.jsp"%>
</div>
</body>
</html>