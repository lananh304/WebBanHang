<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Chi tiết sản phẩm</title>
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
		<div class="ht__bradcaump__area">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="bradcaump__inner text-center">
							<!--                        <h2 class="bradcaump-title">Shop Single</h2>-->
							<nav class="bradcaump-content">
								<a class="breadcrumb_item" href="index.html">Trang chủ</a> <span
									class="brd-separetor">/</span> <span
									class="breadcrumb_item active">Chi tiết sản phẩm</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- Start main Content -->
		<div class="maincontent bg--white pt--80 pb--55">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-12">
						<div class="wn__single__product">
							<div class="row">
								<div class="col-lg-6 col-12">
									<div class="wn__fotorama__wrapper">
										<div class="fotorama1 wn__fotorama__action1"
											data-nav="thumbss">

											<img class="sl"
												src="<c:url value="/assets/user/images/truyentranh/${product.img}"/>"
												height="500" width="400" />
											<!--                                             width="240"/><a href="1.jpg"><img src="images/product/1.jpg" alt=""></a>-->
										</div>
									</div>
								</div>
								<div class="col-lg-6 col-12">
									<div class="product__info__main">
                 
										<h1>${product.name}</h1>

										<div class="product-reviews-summary d-flex">
											<ul class="rating-summary d-flex">
												<li><i class="zmdi zmdi-star-outline"></i></li>
												<li><i class="zmdi zmdi-star-outline"></i></li>
												<li><i class="zmdi zmdi-star-outline"></i></li>
												<li class="off"><i class="zmdi zmdi-star-outline"></i></li>
												<li class="off"><i class="zmdi zmdi-star-outline"></i></li>
													<li class="off" style="margin-left: 10px;margin-right: 10px">|</li>
												
												<li class="off" style="margin-left: ">${daban.size()} Đã bán</li>


											</ul>
										</div>
									
										<div class="price-box">
											<span>${product.price}00 ₫</span>
										</div>
										<div class="product__overview">
											<p>Tác giả: ${product.tacgia}</p>
											<p>Người dịch: Thu Hà Lim</p>
											<p>Nhà xuất bản: ${product.congty}</p>
											<p>Nhà phát hành: Thái Hà</p>
											<p>Mã Sản phẩm: ${product.masp}
											<p>
											<p>Khối lượng: 242.00 gam</p>
											<p>Ngôn ngữ: Tiếng Việt</p>
											<p>Định dạng: ${product.loaibia}</p>
											<p>Kích thước: ${product.kichthuoc}</p>
											<p>Ngày phát hành: ${product.ngayxuatban}</p>
											<p>Số trang: ${product.sotrang}</p>
										</div>


										<div class="box-tocart d-flex">

											<span>Số lượng</span> <input id="qty" class="input-text qty"
												name="qty" min="1" value="1" title="Qty" type="number">
											<div class="addtocart__actions">

												<a href="<c:url value="/AddCart/${product.id}"/>">
													<button class="tocart" type="submit" title="Add to Cart">Thêm
														vào giỏ hàng</button>
												</a> <a href="<c:url value="/giohang"/>">
													<button class="tocart1" type="submit">Mua ngay</button>
												</a>
											</div>

											<!--                                        <div class="product-addto-links clearfix">-->
											<!--                                            <a class="compare" href="#"></a>-->
											<!--                                        </div>-->
										</div>

									</div>
								</div>
							</div>
						</div>
						<div class="product__info__detailed">
							<div class="pro_details_nav nav justify-content-start"
								role="tablist">
								<a class="nav-item nav-link active" data-toggle="tab" id="de"
									href="#nav-details" role="tab">Giới thiệu sách</a> <a
									class="nav-item nav-link" data-toggle="tab" href="#nav-review"
									role="tab">Đánh giá & Bình luận</a>
							</div>
							<div class="tab__container">
								<!-- Start Single Tab Content -->
								<div class="pro__tab_label tab-pane fade show active"
									id="nav-details" role="tabpanel">
									<div class="description__attribute">
										<b><h5>${product.name}</h5></b>

										<p>${product.des}</p>

										<b><h5>Mời bạn đón đọc.</h5></b>
									</div>
								</div>
								<!-- End Single Tab Content -->
								<!-- Start Single Tab Content -->
								<div class="pro__tab_label tab-pane fade" id="nav-review"
									role="tabpanel" >
									<div class="nx">

										<h5>Khách hàng đánh giá</h5>
									</div>
									<div class="review__attribute" >
										<div class="dg">
											<p>4/5</p>
											<div class="product__hover--content1">
												<ul class="rating d-flex">
													<li class="on"><i class="zmdi zmdi-star"></i></li>
													<li class="on"><i class="zmdi zmdi-star"></i></li>
													<li class="on"><i class="zmdi zmdi-star"></i></li>
													<li class="on"><i class="zmdi zmdi-star"></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
												</ul>
												<div class="gr">
													<c:if test="${fn:length(danhgiaIdCategory) gt 0}">
													<a>(Có ${danhgiaIdCategory.size()} nhận xét) </a>
													</c:if>
														<c:if test="${fn:length(danhgiaIdCategory)  == 0}">
														<a>(Chưa có nhận xét) </a>
														</c:if>
												</div>

											</div>

										</div>



										<!--                                    <h2>Hastech</h2>-->
										<div class="review__ratings__type d-flex">
											<div class="review-ratings">
												<div class="rating-summary d-flex">
													<div class="sao">
														<span>5 *</span>
													</div>
													<ul class="rating d-flex">
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>

													</ul>

													<div class="phan">
														<span>34%</span>
													</div>
												</div>

												<div class="rating-summary d-flex">
													<span>4*</span>
													<ul class="rating d-flex">
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
													</ul>
													<div class="phan">
														<span>33%</span>
													</div>
												</div>
												<div class="rating-summary d-flex">
													<span>3*</span>
													<ul class="rating d-flex">
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
													</ul>
													<div class="phan">
														<span>33%</span>
													</div>
												</div>
												<div class="rating-summary d-flex">
													<span>2*</span>
													<ul class="rating d-flex">
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
													</ul>
													<div class="phan">
														<span>0%</span>
													</div>
												</div>
												
												<div class="rating-summary d-flex">
													<span>3*</span>
													<ul class="rating d-flex">
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
													</ul>
													<div class="phan">
														<span>0%</span>
													</div>
									</div>
								
								<c:forEach var="item" items="${danhgiaIdCategory}" varStatus="index">	
									<ul class="rating d-flex">
												
                            	     	<div class="nhanxet" style="margin-bottom: 0px;width: auto">
			
												<div class="khach" style="float: left;">
													<img class="u" src="<c:url value="/assets/user/images/khachhang.png "/>" height="90"
														width="80" />
												</div>
												<div class="sao3">
													<ul class="rating d-flex">
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
													</ul>
												</div>
												<div class="tenk">
													<p >
														Bởi <b>${item.name} &ensp; </b> 
													</p>
												</div>
												<div class="nx">
													<p>${item.noidung}</p>
												</div>
													<div class="nx" style="margin-top: 125px">
													<p style="font-size: 12px">${item.date}</p>
												</div>
										
											</div>
											
											</ul>
												</c:forEach>
											
													
													
											</div>
									
										</div>
									</div>
								
									<div class="review-fieldset">
										<h5>Viết nhận xét  </h5> 
										
										<div class="review-field-ratings">
											<div class="product-review-table">

											</div>
										</div>
										
										
										<c:if test="${ not empty LoginInfo }">
											
										<c:url value="/chitietsanpham/${product.id}" var="updateCustomer" />
                 <form:form action="${updateCustomer}" method="POST" modelAttribute="Danhgia">
										  <c:forEach var="item" items="${status1}" varStatus="index">
                        <p style="margin-bottom: 20px ; color: red;">${item}</p>
                        </c:forEach>
										<div class="review_form_field">
											
											<div class="input__box">
												<span>Nhận xét sản phẩm</span>
												<form:textarea name="review" path="noidung"></form:textarea>
											</div>
											<div class="review-form-actions">
												<button type="submit">Đánh giá</button>
											</div>
										</div>
										</form:form>
										</c:if>
									
										
										<c:if test="${ empty LoginInfo }">
										<p style="margin-top: 5px">Vui lòng  <b><a href="<c:url value="/dangnhap"/>"> Đăng Nhập </a> </b>   để được đánh giá sản phẩm.</p>
										</c:if>
										
										
									</div>
								</div>
								<!-- End Single Tab Content -->
							</div>
						</div>
						<div class="wn__related__product pt--80 pb--50">
							<div class="section__title text-center">
								<h2 class="title__be--2">Sản phẩm tương tự</h2>
							</div>
							<div class="row mt--60">
								<div
									class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
									<!-- Start Single Product -->
									<!--                                 <div class="product product__style--3 col-lg-4 col-md-4 col-sm-12 col-12"> -->
									<!--                                     <div class="product__thumb"> -->
									<!--                                         <a class="first__img" href="slide2.html"><img  src="images/books/benhtat.jpg" height="340" width="230"/></a> -->

									<!--                                         <div class="hot__box"> -->
									<!--                                             <span class="hot-label">BEST SALLER</span> -->
									<!--                                         </div> -->
									<!--                                     </div> -->
									<!--                                     <div class="product__content content--center"> -->
									<!--                                         <h4><a href="slide2.htmll">Bệnh Tật Ư? Sao Phải<br> Cam Chịu</a></h4> -->
									<!--                                         <ul class="prize d-flex"> -->
									<!--                                             <li>225.000 ₫</li> -->
									<!--                                             <li class="old_prize">267.000 ₫</li> -->
									<!--                                         </ul> -->
									<!--                                         <div class="action"> -->
									<!--                                             <div class="actions_inner"> -->
									<!--                                                 <ul class="add_to_links"> -->
									<!--                                                     <li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li> -->
									<!--                                                     <li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li> -->
									<!--                                                     <li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li> -->
									<!--                                                 </ul> -->
									<!--                                             </div> -->
									<!--                                         </div> -->
									<!--                                         <div class="product__hover--content"> -->
									<!--                                             <ul class="rating d-flex"> -->
									<!--                                                 <li class="on"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="on"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="on"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="off"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="off"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                             </ul> -->
									<!--                                         </div> -->
									<!--                                     </div> -->
									<!--                                 </div> -->
									<!-- Start Single Product -->
									<!-- Start Single Product -->

									<!--                                 Start Single Product -->
									<!--                                 Start Single Product -->
									<c:forEach var="item" items="${productByIdCategory}"
										varStatus="index">



										<div
											class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-2">
											<div class="product__thumb">
												<a class="first__img"
													href="<c:url value="/chitietsanpham/${item.id}"/>"><img
													src="<c:url value="/assets/user/images/truyentranh/${item.img}"/>"
													height="340" width="240" /></a>

												<div class="hot__box">
													<span class="hot-label">HOT</span>
												</div>
											</div>
											<div class="product__content content--center">
												<h4>
													<a href="slide2.html">${item.name}</a>
												</h4>
												<ul class="prize d-flex">
													<li>${item.price}00 ₫</li>
													<li class="old_prize">${item.lower}00 ₫</li>
												</ul>
												<div class="action">
													<div class="actions_inner">
														<ul class="add_to_links">
															<li><a class="cart" href="cart.html"
																title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
															<li><a class="wishlist"
																href="<c:url value="/AddCart/${item.id}"/>"
																title="Thêm vào giỏ hàng"><i
																	class="bi bi-shopping-cart-full"></i></a></li>
															<li><a data-toggle="modal" title="Xem nhanh"
																class="quickview modal-view detail-link"
																href="#productmodal"><i class="bi bi-search"></i></a></li>
														</ul>
													</div>
												</div>
												<div class="product__hover--content">
													<ul class="rating d-flex">
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="on"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
														<li class="off"><i class="zmdi zmdi-star"></i></li>
													</ul>
												</div>
											</div>
										</div>
									</c:forEach>
									<!--                                 Start Single Product -->
									<!--                                 Start Single Product -->
									<!--                                 <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12"> -->
									<!--                                     <div class="product__thumb"> -->
									<!--                                         <a class="first__img" href="slide2.html"><img -->
									<!--                                                 src="images/books/347787_p88740mscan0001.jpg" height="340" width="240"/> -->
									<!--                                         </a> -->

									<!--                                         <div class="hot__box"> -->
									<!--                                             <span class="hot-label">HOT</span> -->
									<!--                                         </div> -->
									<!--                                     </div> -->
									<!--                                     <div class="product__content content--center"> -->
									<!--                                         <h4><a href="slide2.html">Dược Xã Hội</a></h4> -->
									<!--                                         <ul class="prize d-flex"> -->
									<!--                                             <li>250.000 ₫</li> -->
									<!--                                             <li class="old_prize">298.000 ₫</li> -->
									<!--                                         </ul> -->
									<!--                                         <div class="action"> -->
									<!--                                             <div class="actions_inner"> -->
									<!--                                                 <ul class="add_to_links"> -->
									<!--                                                     <li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li> -->
									<!--                                                     <li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li> -->
									<!--                                                     <li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li> -->
									<!--                                                 </ul> -->
									<!--                                             </div> -->
									<!--                                         </div> -->
									<!--                                         <div class="product__hover--content"> -->
									<!--                                             <ul class="rating d-flex"> -->
									<!--                                                 <li class="on"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="on"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="on"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="off"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="off"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                             </ul> -->
									<!--                                         </div> -->
									<!--                                     </div> -->
									<!--                                 </div> -->
									<!--                                 Start Single Product -->
									<!--                                 Start Single Product -->
									<!--                                 <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12"> -->
									<!--                                     <div class="product__thumb"> -->
									<!--                                         <a class="first__img" href="slide2.html"><img -->
									<!--                                                 src="images/books/348984_p90057mthucduong.jpg" height="340" -->
									<!--                                                 width="240"/></a> -->

									<!--                                         <div class="hot__box"> -->
									<!--                                             <span class="hot-label">BEST SALER</span> -->
									<!--                                         </div> -->
									<!--                                     </div> -->
									<!--                                     <div class="product__content content--center content--center"> -->
									<!--                                         <h4><a href="single-product.html">Thực Dưỡng Tiện Dụng <br>Cho Người Bận Rộn</a></h4> -->
									<!--                                         <ul class="prize d-flex"> -->
									<!--                                             <li>242.000 ₫</li> -->
									<!--                                             <li class="old_prize">$262.000 ₫</li> -->
									<!--                                         </ul> -->
									<!--                                         <div class="action"> -->
									<!--                                             <div class="actions_inner"> -->
									<!--                                                 <ul class="add_to_links"> -->
									<!--                                                     <li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li> -->
									<!--                                                     <li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li> -->
									<!--                                                     <li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li> -->
									<!--                                                 </ul> -->
									<!--                                             </div> -->
									<!--                                         </div> -->
									<!--                                         <div class="product__hover--content"> -->
									<!--                                             <ul class="rating d-flex"> -->
									<!--                                                 <li class="on"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="on"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="on"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="off"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                                 <li class="off"><i class="zmdi zmdi-star"></i></li> -->
									<!--                                             </ul> -->
									<!--                                         </div> -->
									<!--                                     </div> -->
									<!--                                 </div> -->
									<!-- Start Single Product -->
									<!-- Start Single Product -->
									<!-- Start Single Product -->
								</div>
							</div>
						</div>

					</div>
					<div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
						<div class="shop__sidebar">
							<aside class="wedget__categories sidebar--banner">
								<img class="i"
									src="<c:url value="/assets/user/images/others/3K6Ps4-1.jpg"/>"
									height="350" width="280" />
							</aside>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End main Content -->
		<!-- Start Search Popup -->
		<div class="box-search-content search_active block-bg close__top">
			<form id="search_mini_form--2" class="minisearch" action="#">
				<div class="field__search">
					<input type="text" placeholder="Search entire store here...">
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
		<!-- Footer Area -->
<%@include file="layouts/footer.jsp"%>	
		<!-- //Footer Area -->
		<!-- QUICKVIEW PRODUCT -->
		<div id="quickview-wrapper">
			<!-- Modal -->
			<div class="modal fade" id="productmodal" tabindex="-1" role="dialog"
				style="width: 700px; height: 800px; margin-left: 350px">
				<div class="modal-dialog modal__container" role="document">
					<div class="modal-content">
						<div class="modal-header modal__header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="modal-product">
								<!-- Start product images -->
								<div class="product-images">
									<div class="main-image images">
										<img src="images/books/347787_p88740mscan0001.jpg"
											height="383" width="240" />

									</div>
								</div>
								<!-- end product images -->
								<div class="product-info">
									<h1>Dược Xã Hội</h1>
									<div class="rating__and__review">
										<ul class="rating">
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
										</ul>

									</div>
									<div class="price-box-3">
										<div class="s-price-box">
											<span class="new-price">250.000 ₫</span> <span
												class="old-price">298.000 ₫</span>
										</div>
									</div>
									<div class="quick-desc">
										<p>Tác giả: Hoàng Thy Nhạc Vũ</p>
										<p>Nhà xuất bản: Nxb Tổng hợp TP.HCM
										<p>Nhà phát hành: NXBTH TPHCM</p>
										<p>Mã Sản phẩm: 9786045895993</p>
										<p>Khối lượng: 220.00 gam</p>
										<p>Ngôn ngữ: Tiếng Việt</p>
										<p>Định dạng: Bìa mềm</p>
										<p>Kích thước: 14 x 22 cm</p>
										<p>Ngày phát hành: 09/2019</p>
										<p>Số trang: 168</p>
									</div>

									<div class="addtocart-btn">
										<a href="#">Thêm vào giỏ hàng</a>
									</div>
								</div>
								<!-- .product-info -->
							</div>
							<!-- .modal-product -->
						</div>
						<!-- .modal-body -->
					</div>
					<!-- .modal-content -->
				</div>
				<!-- .modal-dialog -->
			</div>
			<!-- END Modal -->
		</div>
		<!-- END QUICKVIEW PRODUCT -->

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