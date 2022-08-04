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
<title>Xem đơn hàng</title>
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
									class="breadcrumb_item active">Chi tiết đơn hàng</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- cart-main-area start -->
		<div class="cart-main-area section-padding--lg bg--white" style="margin-top: -50px;margin-left: -40px">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 ol-lg-12">
						<form action="#">
							<div class="table-content wnro__table table-responsive">
								<table>
									<thead>
										<tr class="title-top">
											<th class="product-subtotal" style="width: 30px" >Mã chi tiết </th>
											<th class="product-name">Tên sản phẩm</th>
											<th class="product-price">Hình ảnh</th>
											<th class="product-quantity">Số lượng</th>
											<th class="product-subtotal" style="width: 30px">Tổng tiền</th>
										
										
										</tr>
									</thead>
									<tbody>

										


											<c:forEach var="item" items="${donhangxem}" varStatus="index">

												<tr>
													<td class="product-price"><span class="">${item.id}
															</span></td>
													<td class="product-price"><span class="">${item.name_product}
															</span></td>
																<td class="product-price"><img  style="width: 100px;height: 100px" class="img-responsive" src="<c:url value="/assets/user/images/truyentranh/${item.img_product}"/>" alt=""/></td>
																<td class="product-price"><span class="">${item.quanty}
															</span></td>
														<td class="product-price"><span class="">${item.total}00 đ
															</span></td>
													
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
								<li ><a href="<c:url value="/myorder"/>"  style="width: auto">Trở lại </a></li>
								
							</ul>
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
		</body>
		</html>
	