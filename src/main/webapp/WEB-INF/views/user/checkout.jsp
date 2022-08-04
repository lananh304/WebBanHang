<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--     <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Thanh toán</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- Favicons -->
<link rel="shortcut icon"
	href="<c:url value="/assets/user/images/favicon.ico"/>" />
<link rel="apple-touch-icon"
	href="<c:url value="/assets/user/images/icon.png"/>" />

<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900"
	rel="stylesheet">

<!-- Stylesheets -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/bootstrap.min.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/plugins.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/style.css"/>" />

<!-- Cusom css -->
<link rel="stylesheet"
	href="<c:url value="/assets/user/css/custom.css"/>" />

<!-- Modernizer js -->
<script
	src="<c:url value="/assets/user/js/vendor/modernizr-3.5.0.min.js"/>"></script>

<script src="https://kit.fontawesome.com/c25baca2b9.js" crossorigin="anonymous"></script>
    <style >

.er{
	color: red;
	display: block;
	padding: 5px 0px;
}


.ui-autocomplete{
border: 1px solid  rgba(0,0,0,.15);
box-shadow: 1px 1px 5px #AAA;


}
ul.ui-autocomplete.ui-menu{width:300px;
background: white;
height:300px;
 overflow-y:auto;

}

ul.ui-autocomplete.ui-menu li a{
   text-align: center;
    
}
ul.ui-autocomplete.ui-menu li:first-child a{
    color:blue;
    
}

</style>
   
   

   
</head>

<body>
	<!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
	<![endif]-->

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
		
		<!-- Header -->
<%@include file="layouts/header.jsp"%>	
		<!-- //Header -->
		<!-- Start Search Popup -->
		<div class="box-search-content search_active block-bg close__top">
			<form id="search_mini_form" class="minisearch" action="#">
				<div class="field__search">
					<input type="text" placeholder="Tìm kiếm tựa sách...">
					<div class="action">
						<a href="#"><i class="zmdi zmdi-search"></i></a>
					</div>
				</div>
			</form>
			<div class="close__wrap">
				<span>close</span>
			</div>
		</div>
		<!-- End Search Popup -->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area ">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="bradcaump__inner text-center">

                            <nav class="bradcaump-content">
                              <a class="breadcrumb_item" href="index.html">Home</a>
                              <span class="brd-separetor">/</span>
                              <span class="breadcrumb_item active">Thanh toán</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Checkout Area -->
        <section class="wn__checkout__area section-padding--lg bg__white">
        	<div class="container">

        		<div class="row">
        			<div class="col-lg-6 col-12">
        				<div class="customer_details">
        				     <form:form action="checkout" modelAttribute="bills" name="myForm" method="POST"
			onsubmit="return validate()">  
        					<h3>Địa chỉ giao hàng</h3>
        					<div class="customar__field">
        					<div class="input_box">
        							<label>Họ và tên <span>*</span></label>
        							<form:input type="text" path="name" id="name" />
        						</div>
        						 <span id="na" style="color: red"></span>
        						<div class="input_box">
        							<label>Địa chỉ <span>*</span></label>
        							<form:input type="text" path="address" id="diachi"/>
        						</div>
        						<span id=dc class="er"></span>
        						<div class="input_box">
        							<label>Tỉnh / Thành<span>*</span></label>
        					<form:input type="text" path="address" id="tinhthanh"/>
        						</div>
        						<span id=tt class="er"></span>
<!--        						<div class="input_box">-->
<!--        							<label>Address <span>*</span></label>-->
<!--        							<input type="text" placeholder="Street address">-->
<!--        						</div>-->
<!--        						<div class="input_box">-->
<!--        							<input type="text" placeholder="Apartment, suite, unit etc. (optional)">-->
<!--        						</div>-->
        						<div class="input_box">
        							<label>Quận huyện<span>*</span></label>
        						<form:input type="text" path="address" id="quanhuyen"/>
        						</div>
        						<span id=qh class="er"></span>
								<div class="input_box">
									<label>Phường xã<span>*</span></label>
									<form:input type="text" path="address" id="phuongxa"/>
								</div>
								<span id=px class="er"></span>
								<div class="margin_between">
									<div class="input_box space_between">
										<label>Số điện thoại <span>*</span></label>
										<form:input type="text" path="phone" id="sodt"/>
									</div>
										<span id=sdt class="er" style="margin-top: 30px"></span>

									<div class="input_box space_between">
										<label>Email <span>*</span></label>
										<form:input type="text" path="email" id="email"/>
									</div>
									  <span id="emaill" class="er" style="margin-top: 30px"></span>
								</div>
								<div id="accordion" class="checkout_accordion mt--30" role="tablist">
									<div class="payment">
										<div class="che__header" role="tab" id="headingOne">
											<form:radiobutton  value="Thanh toan tien mat khi nhan hang" class="checkout__title" data-toggle="collapse" href="#collapseOne"  aria-controls="collapseTwo" path="vanchuyen"/>
											<span>	Thanh toán tiền mặt khi nhận hàng</span>
										
										</div>
										<div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
											<div class="payment-body">Phương pháp thanh toán này áp dụng cho các khu vực: <b>Trong nước </b>.</div>
										</div>
									</div>
									<div class="payment">
										<div class="che__header" role="tab" id="headingTwo">
											<form:radiobutton value="Chuyen khoan ngan hang" class="checkout__title" data-toggle="collapse" href="#collapseTwo"  aria-controls="collapseTwo" path="vanchuyen"/>
											<span>	Chuyển khoản ngân hàng</span>
					
										</div>
										<div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
											<div class="payment-body"><p>Tài khoản Vietcombank: 0071000658248 - Chủ tài khoản: Nguyễn Công Tuệ – CN Lê Hồng Phong</p>

												<p style="margin-top: 10px"> Lưu ý: Sau khi chuyển khoản, quý khách vui lòng thông báo qua điện thoại hoặc email để Nobita tiện kiểm tra và xử lý đơn hàng.</p>

												<p style="margin-top: 10px">Hỗ trợ khách hàng: 0938 424 289 - Email: admin@nobita.vn.</p></div>
										</div>
									</div>

									<div class="hy1">
										<a href="#">	<button class="hy"><p>Đặt mua</p></button></a>
									</div>
									<div class="nu1">
										<a  href="<c:url value="/giohang"/>"><p>Trở lại</p></a>

									</div>
			
								</div>

        					</div>
        					</form:form>
        					<div class="create__account">

        					</div>
        				</div>

        			</div>

        			<div class="col-lg-6 col-12 md-mt-40 sm-mt-40">

        				<div class="wn__order__box">
        					<h3 class="onder__title">Sản phẩm của bạn</h3>

        					<ul class="order__total">
        						<li>Sản phẩm</li>
        						<li>Tổng cộng</li>
        					</ul>
        					<c:forEach var="item" items="${Cart}" varStatus="index">
        					<ul class="order_product">
        						<li ><p style="width: 250px">${item.value.product.name}  × ${item.value.quanty}</p><span style="margin-top: -25px;float: left;margin-left: 317px"><c:out value="${ item.value.product.price * item.value.quanty}"/>00 ₫</span></li>
        				
        					</ul>
        					</c:forEach>
        					<ul class="shipping__method">
        						<li>Tạm tính <span style="float: right;margin-right: 24px;">${TotalPriceCart}00 ₫</span></li>
        						<li>Phí vận chuyển
        							<ul>
        								<li>
        									<label style="float: right;margin-right: 28px;">FreeShip</label>
        								</li>

        							</ul>
        						</li>
        					</ul>
        					<ul class="total__amount">
        						<li>Tổng tiền<span style="margin-top: -25px;float: left;margin-left: 317px;width: 300px">${TotalPriceCart}00 ₫</span></li>
        					</ul>

        				</div>
					


        			</div>
        		</div>
        	</div>
        </section>
        <!-- End Checkout Area -->
		<!-- Footer Area -->
 <%@include file="layouts/footer.jsp"%>	
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->

<script
		src="<c:url value="/assets/user/js/vendor/jquery-3.2.1.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/popper.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/plugins.js"/>"></script>
	<script src="<c:url value="/assets/user/js/active.js"/>"></script>
	
	
	
	
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
		var emailID = document.myForm.email.value;
		atpos = emailID.indexOf("@");
		dotpos = emailID.lastIndexOf(".");

		
		if (document.myForm.name.value == "") {
			showError('na', 'Bạn không thể để trống dữ liệu này');
			document.myForm.name.focus();
			return false;
		} else {

			showError('na', '');

		}
		
		
	

		if (document.myForm.diachi.value == "") {
			showError('dc', 'Bạn không thể để trống dữ liệu này');
			document.myForm.diachi.focus();
			return false;
		} else {

			showError('dc', '');

		}
		
		
		if (document.myForm.tinhthanh.value == "") {
			showError('tt', 'Bạn không thể để trống dữ liệu này');
			document.myForm.tinhthanh.focus();
			return false;
		} else {

			showError('tt', '');

		}
		
		
		
		if (document.myForm.quanhuyen.value == "") {
			showError('qh', 'Bạn không thể để trống dữ liệu này');
			document.myForm.quanhuyen.focus();
			return false;
		} else {

			showError('qh', '');

		}

		
		if (document.myForm.phuongxa.value == "") {
			showError('px', 'Bạn không thể để trống dữ liệu này');
			document.myForm.phuongxa.focus();
			return false;
		} else {

			showError('px', '');

		}
		
		
		if (document.myForm.sodt.value == "") {
			showError('sdt', 'Bạn không thể để trống dữ liệu này');
			document.myForm.email.focus();
			return false;
		} else {

			showError('sdt', '');

		}
		
		if (document.myForm.sodt.value.length < 10) {
			showError('sdt', 'Số điện thoại phải có ít nhất 10 số.Thử lại');
			document.myForm.sodt.focus();
			return false;
		} else {

			showError('sdt', '');

		}
		

		
		
		if (document.myForm.email.value == "") {
			showError('emaill', 'Bạn không thể để trống dữ liệu này');
			document.myForm.email.focus();
			return false;
		} else {

			showError('emaill', '');

		}
		if (!mailformat.test(document.myForm.email.value)) {
			showError('emaill', 'Email không hợp lê.Thử lại');
			document.myForm.email.focus();
			return false;
		} else {

			showError('emaill', '');

		}
		
		return (true);
	}
</script>


<script>
	$(function() {
		$(".language a").click(function() {
			$.ajax({
				url : "?language=" + $(this).attr("href"),
				success : function() {
					location.reload();
				}
			});
			return false;
		});
	});
</script>
	
		
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
	  
    var availableTags = [
      "Thám Tử Lừng Danh Conan - Tập 92",
      "Thám Tử Lừng Danh Conan - Tập 93",
      "Thám Tử Lừng Danh Conan - Tập 94",
      "Siêu Thỏ - Ứ Ngồi Bô Đâu",
      "Thám Tử Lừng Danh Conan - Tập 95",
      "Một Chú Mèo Tốt Hơn Một Cậu Em Trai",
      "Tớ Chẳng Thích Lớn Đâu",
      "Đêm Đom Đóm - It’s Firefly Night",
      "Từ Điển Nhí Nhố Của Metti Và Otti",
      "Mẹ Sẽ Ôm Con Nhiều Hơn, Con Sẽ Ôm Mẹ Nhiều Hơn - I Hug You, More",
      "Tớ Chẳng Thích Siêu Anh Hùng Đâu",
      "Tớ Chẳng Thích Bóng Đá Đâu",
      "Shin - Cậu Bé Bút Chì (Tập 27 - Tái Bản)",
      "Shin - Cậu Bé Bút Chì (Tập 25 - Tái Bản)",
      "Shin - Cậu Bé Bút Chì (Hoạt Hình Màu) - Tập 28",
      "Tranh Truyện Dân Gian Việt Nam - Sơn Tinh Thủy Tinh",
      "Tranh Truyện Dân Gian Việt Nam - Thạch Sanh",
      "Chàng Mèo Đường Phố - Tên Tôi Là Bob",
      "Chàng Mèo Đường Phố - Bob, Vị Cứu Tinh",
      "Vivre Card - Thẻ Dữ Liệu Nhân Vật One Piece - Tập 2",
      "Thị Trấn Mèo - Tập 5",
      "Doraemon Truyện Ngắn - Tập 1",
      "Màu của bầu trời"
    ];
    $( "#tags" ).autocomplete({
      source: availableTags
    });
  } );
  </script>
</body>
</html>