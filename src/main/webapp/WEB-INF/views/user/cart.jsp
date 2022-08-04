<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--     <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Giỏ hàng</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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




<!--	Font awesome-->
<script src="https://kit.fontawesome.com/c25baca2b9.js"
	crossorigin="anonymous"></script>
<script src="<c:url value="/assets/user/js/swdslideshow.js"/>"></script>

<style>

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
								<a class="breadcrumb_item" href="index.html">Trang chủ</a> <span
									class="brd-separetor">/</span> <span
									class="breadcrumb_item active">Giỏ hàng</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- cart-main-area start -->
		<div class="cart-main-area section-padding--lg bg--white">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 ol-lg-12">
						<form action="#">
							<div class="table-content wnro__table table-responsive">
								<table>
									<thead>
										<tr class="title-top">
											<th class="product-thumbnail">Hình ảnh</th>
											<th class="product-name">Tên sản phẩm</th>
											<th class="product-price">Giá tiền</th>
											<th class="product-quantity">Số lượng</th>
											<th class="product-subtotal">Tổng cộng</th>
											<th class="product-remove">Cập nhập</th>
											<th class="product-remove">Xóa</th>
										</tr>
									</thead>
									<tbody>

										


											<c:forEach var="item" items="${Cart}" varStatus="index">

												<tr>
													<td class="product-thumbnail"><a href="#"><img
															src="<c:url value="/assets/user/images/truyentranh/${item.value.product.img}"/>"
															height="203" width="150" /></a></td>
													<td class="product-name"><a href="#">${item.value.product.name}</a></td>
													<td class="product-price"><span class="amount">${item.value.product.price}00
															₫</span></td>
													<td class="product-quantity"><input type="number"
														min=0 max=1000  id="quanty-cart-${item.key}"  value="${item.value.quanty}"/></td>
													<td class="product-subtotal"><c:out value="${ item.value.product.price * item.value.quanty}"/>00 ₫</td>
													<td class="product-remove"><a
														class="edit-cart" data-id="${item.key}" type="button"><i
															title="Cập nhập" class="far fa-caret-square-up" style="margin-top: -30px"></i></a></td>
													<td class="product-remove"><a
														href="<c:url value="/DeleteCart/${item.key}"/>"><i title="Xoá"
															class="fas fa-trash fa-1x"></i></a></td>
												</tr>
											</c:forEach>
								



									</tbody>
								</table>
							</div>
						</form>
						<div class="cartbox__btn" style="width: auto"> 
							<ul
								class="cart__btn__list d-flex flex-wrap1 flex-md-nowrap1 flex-lg-nowrap1 justify-content-between1">

								<!--                                <li><a href="#">Apply Code</a></li>-->
								<li ><a href="<c:url value="/"/>"  style="width: auto">Trở lại </a></li>
								<c:if test="${ not empty Cart }">
								<li><a class="tt" href="<c:url value="checkout"/>">Thanh toán</a></li>
								</c:if>
								<div class="cv">
									<li><a href="#">Mã giảm giá</a></li>

								</div>
								<div class="gg">
									<input class="gg1" type="text"
										placeholder="Nhập mã giảm giá...">
								</div>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6 offset-lg-6">
						<div class="cartbox__total__area">
							<div class="cart__total__amount">
								<span>Tổng tiền</span> <span>${TotalPriceCart}00 ₫</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- cart-main-area end -->
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
	
	
	<script> 
	$(".edit-cart").on("click",function(){
		
	
		var id =$(this).data("id");
		var quanty = $("#quanty-cart-"+id).val();
		window.location = "EditCart/"+id+"/"+quanty;
		
	});
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
	