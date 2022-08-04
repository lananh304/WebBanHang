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
		<title>Thêm sản phẩm</title>
		
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
        <h1><span class = "glyphicon glyphicon-folder-open addtop" aria-hidden = "true"></span>&nbsp;&nbsp;Thêm sản phẩm</h1>
        <div id = "sub-main">
            <div class = "row">
                <div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
                    <ol class = "breadcrumb">
                        <li>Hệ thống</li>
                        <li>Tất cả sản phẩm</li>
                        <li class = "active">Thêm sản phẩm</li>
                    </ol>
                </div>
                <div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
                    <div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
                </div>
            </div>
            <div class = "row margin0 space-top">
                <div class = "option-h4 text-justify">
                    <h4>Thêm sản phẩm</h4>
                    <form:form     action="themsanpham"    modelAttribute="sanpham"  method="POST" onsubmit="return validate()" name="myForm">

                        <div class = "tendm">
                            <label>Tên sản phẩm</label><br>
                            <form:input type = "text" class = "texttendm" id="name" placeholder = " Nhập tên sản phẩm cần thêm" path="name" />

                        </div>
                         <span id="emaill" class="er"></span>
                        
                            <div class = "tendm" style="margin-bottom: 30px">
                            <label>Hình ảnh</label><br>
                           
                            <form:input type = "file" class = "texttendm" id="img"  path="img" onchange="readURL(this);"/>
                            
 <img id="blah" src="<c:url value="/assets/user/images/truyentranh/"/>" alt="your image" style="width: 200px;height: 200px;margin-top: 20px" />
                        </div>
                         <span id="hinhanh" class="er"></span>
                        
                                        <div class = "tendm">
                            <label>Mã sản phẩm</label><br>
                            <form:input type = "text" class = "texttendm" id="masp" placeholder = " Nhập mã sản phẩm cần thêm" path="masp" />

                        </div>
                         <span id="maspp" class="er"></span>
                        
                        
                                     <div class = "tendm" style="margin-bottom: 30px">
                            <label >Loại sản phẩm</label><br>
                            	
				<form:select  id="female" path="type" style="height: 40px;width: 73%">
					<c:forEach var="item" items="${danhmuc}" varStatus="index">
					<option value="${item.id}" checked >${item.type}</option>
					</c:forEach>
					
				</form:select>
			
        

                        </div>
                        
                                         <div class = "tendm">
                            <label>Tác giả</label><br>
                            <form:input type = "text" class = "texttendm" id="tacgia" placeholder = " Nhập gỉa tác gủa cần thêm" path="tacgia" />

                        </div>
                          <span id="tacgiaa" class="er"></span>
                                         <div class = "tendm">
                            <label>Nhà xuất bản</label><br>
                            <form:input type = "text" class = "texttendm" id="nxb" placeholder = " Nhập nhà xuất bản cần thêm" path="congty" />

                        </div>
                        <span id="nxbb" class="er"></span>
                                         <div class = "tendm" style="margin-bottom: 30px">
                            <label>Ngày xuất bản</label><br>
                            <form:input type = "date" class = "texttendm" id="ngxb" path="ngayxuatban" style="height: 40px;width: 73%" />

                        </div>
                          <span id="ngxbb" class="er"></span>
                                         <div class = "tendm">
                            <label>Kích thước</label><br>
                            <form:input type = "text" class = "texttendm" id="kt" placeholder = " Nhập kích thước cần thêm" path="kichthuoc" />

                        </div>
                          <span id="ktt" class="er"></span>
                                         <div class = "tendm">
                            <label>Loại bìa</label><br>
                            <form:input type = "text" class = "texttendm" id="lb" placeholder = " Nhập loại bìa cần thêm" path="loaibia" />

                        </div>
                          <span id="lbb" class="er"></span>
                        
                                         <div class = "tendm">
                            <label>Số trang</label><br>
                            <form:input type = "text" class = "texttendm" id="st" placeholder = " Nhập số trang cần thêm" path="sotrang" />

                        </div>
                        
                          <span id="stt" class="er"></span>
                                         <div class = "tendm">
                            <label>Giá</label><br>
                            <form:input type = "text" class = "texttendm" id="" placeholder = " Nhập giá cần thêm" path="price" />

                        </div>
                        
                        
                        
                      
                        <div class = "motadm" style="height: 100px;">
                            <label>Mô tả</label><br>
                     
                             <form:textarea rows="5" cols="108" type = "text" class = "texttendm" id="des" placeholder = " Nhập mô tả cần thêm" path="des" />

                        </div>
                          <span id="dess" class="er"></span>
              
                         <input style="color: white;width: 120px;height:50px; background: #5bc0de;margin-left: 200px;border-radius: 3px;margin-top: 80px " type="submit" name="signup" id="signup"  value="Thêm dữ liệu" />
                         
                        
                        
                                  
                   
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







<script type="text/javascript">
	function showError(key, mess) {
		document.getElementById(key).innerHTML = mess;
	}

	function checkDate(strDate) {
		var comp = strDate.split('/')
		var d = parseInt(comp[0], 10)
		var m = parseInt(comp[1], 10)
		var y = parseInt(comp[2], 10)
		var date = new Date(y, m - 1, d);
		if (date.getFullYear() == y && date.getMonth() + 1 == m
				&& date.getDate() == d) {
			return true
		}
		return false
	}

	<!--
	// Form validation code will come here.
	function validate() {
		var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
		var emailID = document.myForm.name.value;
		atpos = emailID.indexOf("@");
		dotpos = emailID.lastIndexOf(".");

		if (document.myForm.name.value == "") {
			showError('emaill', 'Bạn không thể để trống dữ liệu này');
			document.myForm.name.focus();
			return false;
		} else {

			showError('emaill', '');

		}
		
		if (document.myForm.img.value == "") {
			showError('hinhanh', 'Bạn không thể để trống dữ liệu này');
			document.myForm.img.focus();
			return false;
		} else {

			showError('hinhanh', '');

		}

	
		if (document.myForm.masp.value == "") {
			showError('maspp', 'Bạn không thể để trống dữ liệu này');
			document.myForm.masp.focus();
			return false;
		} else {

			showError('maspp', '');

		}

		if (document.myForm.tacgia.value == "") {
			showError('tacgiaa', 'Bạn không thể để trống dữ liệu này');
			document.myForm.tacgia.focus();
			return false;
		} else {

			showError('tacgiaa', '');

		}

		if (document.myForm.nxb.value == "") {
			showError('nxbb', 'Bạn không thể để trống dữ liệu này');
			document.myForm.nxb.focus();
			return false;
		} else {

			showError('nxbb', '');

		}

		if (document.myForm.ngxb.value == "") {
			showError('ngxbb', 'Bạn không thể để trống dữ liệu này');
			document.myForm.ngxb.focus();
			return false;
		} else {

			showError('ngxbb', '');

		}

		if (document.myForm.kt.value == "") {
			showError('ktt', 'Bạn không thể để trống dữ liệu này');
			document.myForm.kt.focus();
			return false;
		} else {

			showError('ktt', '');

		}
		
		if (document.myForm.lb.value == "") {
			showError('lbb', 'Bạn không thể để trống dữ liệu này');
			document.myForm.lb.focus();
			return false;
		} else {

			showError('lbb', '');

		}
		
		
		
		
		if (document.myForm.st.value == "") {
			showError('stt', 'Bạn không thể để trống dữ liệu này');
			document.myForm.st.focus();
			return false;
		} else {

			showError('stt', '');

		}
		
		
		if (document.myForm.des.value == "") {
			showError('dess', 'Bạn không thể để trống dữ liệu này');
			document.myForm.des.focus();
			return false;
		} else {

			showError('dess', '');

		}

		return (true);
	}
	
	
	
	
	function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();

	        reader.onload = function (e) {
	        	 $('#blah + img').remove();
	            $('#blah')
	                .attr('src', e.target.result);
	        };

	        reader.readAsDataURL(input.files[0]);
	    }
	}

</script>
</body>
</html>