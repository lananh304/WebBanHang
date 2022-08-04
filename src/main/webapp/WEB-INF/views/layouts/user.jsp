<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Home</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<!-- Favicons -->
	<link rel="shortcut icon"  href="<c:url value="/assets/user/images/favicon.ico"/>"/> 
	<link rel="apple-touch-icon" href="<c:url value="/assets/user/images/icon.png"/>"/>  

	<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<c:url value="/assets/user/css/bootstrap.min.css"/>"/>
	<link rel="stylesheet" href="<c:url value="/assets/user/css/plugins.css"/>"/> 
	<link rel="stylesheet"  href="<c:url value="/assets/user/css/style.css"/>"/>  

	<!-- Cusom css -->
   <link rel="stylesheet"  href="<c:url value="/assets/user/css/custom.css"/>"/>

	<!-- Modernizer js -->
	<script src="<c:url value="/assets/user/js/vendor/modernizr-3.5.0.min.js"/>"></script>




<!--	Font awesome-->
	<script src="https://kit.fontawesome.com/c25baca2b9.js" crossorigin="anonymous"></script>
	<script src="<c:url value="/assets/user/js/swdslideshow.js"/>"></script>


</head>


<body>
	<!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
	<![endif]-->

	<!-- Main wrapper -->
	<div class="wrapper" id="wrapper">
		<!-- Header -->
		<header id="wn__header" class="header__area header__absolute sticky__header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-6 ">
						<div class="log">
							<a href="index.html">


								<img class="l" src="images/logo/nobitavn-103639.jpg" height="140" width="350"/></a>
						</div>
					</div>
					<div class="col-lg-8 d-none d-lg-block">
						<nav class="mainmenu__nav">
							<ul class="meninmenu d-flex justify-content-start">
								<li class="drop with--one--item active"><a href="index.html">Trang chủ</a></li>

								<li class="drop"><a href="shop-grid.html">Danh mục sách</a>
									<div class="megamenu mega03">
										<ul class="item item03">
											<li class="title">Sách đáng chú ý</li>
											<li><a href="shop-grid.html">Sách mới phát hành </a></li>
											<li><a href="shop-grid.html">Sách bán chạy </a></li>
											<li><a href="shop-grid.html">Sách giảm giá </a></li>
										</ul>

										<ul class="item item03">
											<li class="title">Sách tuổi teen</li>
											<li><a href="shop-grid.html">Văn học-Teen</a></li>
											<li><a href="shop-grid.html">Hướng nghiệp-Kĩ năng</a></li>
											<li><a href="shop-grid.html">Tiểu thuyết</a></li>
											<li><a href="shop-grid.html">Truyện tranh</a></li>
											<li><a href="shop-grid.html">Sức khỏe</a></li>
										</ul>
										<ul class="item item03">
											<li class="title">Sách thiếu nhi</li>
											<li><a href="shop-grid.html">Truyện cổ tích-Thần thoại</a></li>
											<li><a href="shop-grid.html">Vừa hoc vừa chơi</a></li>
											<li><a href="shop-grid.html">Kiến thức-Kĩ năng</a></li>
											<li><a href="shop-grid.html">Văn học</a></li>
											<li><a href="shop-grid.html">Truyện kể cho bé</a></li>
										</ul>
									</div>
								</li>

								<li class="drop"><a href="about.html">Giới thiệu </a></li>
								<li class="drop "><a href="#">Hỗ trợ khách hàng</a>
									<div class="megamenu dropdown">
										<ul class="item item01">
											<li><a href="quydinh.html">Quy định sử dụng</a></li>
											<li><a href="hddathang.html">Hướng dẫn đặt hàng</a></li>
											<li><a href="phuongthuc.html">Phương thức thanh toán</a></li>
											<li><a href="vanchuyen.html">Phương thức vận chuyển</a></li>
											<li><a href="chínhach.html">Chính sách đổi trả</a></li>
											<li><a href="contact.html">Liên hệ</a></li>

										</ul>
									</div>
								</li>
							</ul>
						</nav>
					</div>
					<div class="col-md-6 col-sm-6 col-6 col-lg-2">
						<ul class="header__sidebar__right d-flex justify-content-end align-items-center">
							<li  title="Tìm kiếm" class="shop_search"><a class="tag_m1" href="#" data-toggle="dropdown"></a>
								<ul class="dropdown-menu drop_2" style="min-width: 300px;">
									<li>
										<div class="row_1">
											<div class="col-sm-12">
												<form class="navbar-form navbar-left" role="search">
													<div class="input-group">
														<input type="text" class="form-control" placeholder="Search">
														<span class="input-group-btn">
																	<button class="btn btn-primary" type="button">
																		Tìm kiếm</button>
																</span>
													</div>
												</form>
											</div>
										</div>
									</li>
								</ul>
							</li>
							<!--                        <li title="Tìm kiếm" class="shop_search"><a class="search__active" href="#"></a></li>-->
							<!--							<li class="wishlist"><a href="#"></a></li>-->
							<li title="Giỏ hàng" class="shopcart"><a class="cartbox_active" href="#"><span class="product_qun">3</span></a>
								<!-- Start Shopping Cart -->
								<div class="block-minicart minicart__active">
									<div class="minicart-content-wrapper">
										<div class="micart__close">
											<span>Đóng</span>
										</div>
										<div class="items-total d-flex justify-content-between">
											<span>3 sản phẩm</span>
											<span>Tổng giỏ hàng</span>
										</div>
										<div class="total_amount text-right">
											<span>717.000 ₫</span>
										</div>
										<div class="mini_action checkout">
											<a class="checkout__btn" href="cart.html">Đi tới giỏ hàng</a>
										</div>
										<div class="single__items">
											<div class="miniproduct">
												<div class="item01 d-flex">
													<div class="thumb">
														<a href="cart.html"><img
																src="images/books/347787_p88740mscan0001.jpg"
																height="94" width="75"/></a>
													</div>
													<div class="content">
														<h6><a href="product-details.html">Dược xã hội</a></h6>
														<span class="prize">	250.000 ₫</span>
														<div class="product_prize d-flex justify-content-between">
															<span class="qun">Số lượng: 01</span>
															<ul class="d-flex justify-content-end">
																<li title="Xóa"><a href="#"><i class="zmdi zmdi-delete"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item01 d-flex mt--20">
													<div class="thumb">
														<a href="product-details.html"><img
																src="images/books/348984_p90057mthucduong.jpg"
																height="94" width="75"/></a>
													</div>
													<div class="content">
														<h6><a href="cart.html">Thực Dưỡng Tiện Dụng Cho Người Bận Rộn</a></h6>
														<span class="prize">242.000 ₫</span>
														<div class="product_prize d-flex justify-content-between">
															<span class="qun">Số lượng: 01</span>
															<ul class="d-flex justify-content-end">
																<li title="Xóa"><a href="#"><i class="zmdi zmdi-delete"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item01 d-flex mt--20">
													<div class="thumb">
														<a href="cart.html"><img
																src="images/books/benhtat.jpg" height="94"
																width="75"/></a>
													</div>
													<div class="content">
														<h6><a href="product-details.html">Bệnh Tật Ư? Sao Phải Cam Chịu</a></h6>
														<span class="prize">225.000 ₫</span>
														<div class="product_prize d-flex justify-content-between">
															<span class="qun">Số lượng: 01</span>
															<ul class="d-flex justify-content-end">

																<li title="Xóa"><a href="#"><i class="zmdi zmdi-delete"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="mini_action cart">
											<a class="cart__btn" href="cart.html">View and edit cart</a>
										</div>
									</div>
								</div>
								<!-- End Shopping Cart -->
							</li>
							<li title="Đăng nhập" class="setting__bar__icon"><a class="setting__active" href="#"></a>
								<div class="searchbar__content setting__block">
									<div class="content-inner">

										<div class="switcher-currency">

											<div class="switcher-options">
												<div class="switcher-currency-trigger">
													<div class="setting__menu">
														<span><a href="login.html">Đăng nhập</a></span>
														<span><a href="createacc.html">Đăng kí tài khoản</a></span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>

							<!--                        <div class="goi">-->
							<!--                            <p><i class="fas fa-phone-alt"></i>    Hotline: 1900 6401</p>-->

							<!--                        </div>-->

						</ul>

					</div>
				</div>

				<!-- Start Mobile Menu -->
				<div class="row d-none">
					<div class="col-lg-12 d-none">
						<nav class="mobilemenu__nav">
							<ul class="meninmenu">
								<li><a href="index.html">Home</a></li>
								<li><a href="#">Pages</a>
									<ul>
										<li><a href="about.html">About Page</a></li>
										<li><a href="portfolio.html">Portfolio</a>
											<ul>
												<li><a href="portfolio.html">Portfolio</a></li>
												<li><a href="portfolio-details.html">Portfolio Details</a></li>
											</ul>
										</li>
										<li><a href="my-account.html">My Account</a></li>
										<li><a href="cart.html">Cart Page</a></li>
										<li><a href="checkout.html">Checkout Page</a></li>
										<li><a href="wishlist.html">Wishlist Page</a></li>
										<li><a href="error404.html">404 Page</a></li>
										<li><a href="faq.html">Faq Page</a></li>
										<li><a href="team.html">Team Page</a></li>
									</ul>
								</li>
								<li><a href="shop-grid.html">Shop</a>
									<ul>
										<li><a href="shop-grid.html">Shop Grid</a></li>
										<li><a href="single-product.html">Single Product</a></li>
									</ul>
								</li>
								<li><a href="blog.html">Blog</a>
									<ul>
										<li><a href="blog.html">Blog Page</a></li>
										<li><a href="blog-details.html">Blog Details</a></li>
									</ul>
								</li>
								<li><a href="contact.html">Contact</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<!-- End Mobile Menu -->
				<div class="mobile-menu d-block d-lg-none">
				</div>
				<!-- Mobile Menu -->
			</div>
		</header>
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

		<div id="swd-slideshow">
			<div class="slide-box"><a href="slide2.html"><img class="hi" src="images/bg/342416_desktop.jpg"></a></div>
			<div class="slide-box"><a href="slide2.html"><img class="hi" src="images/bg/345804_desktopp2py-e9.jpg"></a></div>
			<div class="slide-box"><a href="slide2.html"><img class="hi" src="images/bg/1t.jpg"></a></div>
                        </div>

<!--              		<div class="container" >-->
<!--			<div class="row">-->
<!--				<div id="carousel" class="carousel slide" data-ride="carousel">-->
<!--					<ol class="carousel-indicators">-->
<!--						<li data-target="#carousel" data-slide-to="0" class="active"></li>-->
<!--						<li data-target="#carousel" data-slide-to="1"></li>-->
<!--						<li data-target="#carousel" data-slide-to="2"></li>-->
<!--					</ol>-->
<!--					<div class="carousel-inner">-->
<!--						<div class="carousel-item active">-->
<!--							<div class="d-none d-lg-block">-->
<!--								<div class="slide-box">-->
<!--									<a href="slide2.html"><img class="hi" src="images/bg/342416_desktop.jpg"  height="500"   width="1200px" /> </a>-->
<!--								</div>-->
<!--							</div>-->

<!--						</div>-->
<!--						<div class="carousel-item">-->
<!--							<div class="d-none d-lg-block">-->
<!--								<div class="slide-box">-->
<!--									<a href="slide2.html">  <img 	class="hi" src="images/bg/345804_desktopp2py-e9.jpg" height="500"   width="1200px" /></a>-->
<!--								</div>-->
<!--							</div>-->

<!--						</div>-->
<!--						<div class="carousel-item">-->
<!--							<div class="d-none d-lg-block">-->
<!--								<div class="slide-box">-->
<!--									<a href="slide2.html">  <img class="hi"  src="images/bg/1t.jpg" height="500"   width="1200px"/></a>-->
<!--								</div>-->
<!--							</div>-->

<!--						</div>-->
<!--					</div>-->

<!--					<a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">-->
<!--						<i class="fa fa-chevron-left"></i>-->
<!--						<span class="sr-only">Previous</span>-->
<!--					</a>-->
<!--					<a class="carousel-control-next" href="#carousel" role="button" data-slide="next">-->
<!--						<i class="fa fa-chevron-right"></i>-->
<!--						<span class="sr-only">Next</span>-->
<!--					</a>-->
<!--					<div class="hu"></div>-->
<!--				</div>-->
<!--			</div>-->
<!--		</div>-->


		<section class="wn__product__area brown--color pt--80  pb--30 la">
			<div class="container">
				<div class="row">
					<div class="k1">
						<div class="block" id="module_newproducts21">
							<h2>
								<a class="title" href="shop-grid.html" title="Sách mới" style="font-weight: normal">Sách mới<span class="b-main__category-arrow"></span></a>
								<a class="more" href="shop-grid.html" title="Xem tất cả" style="font-weight: normal ; margin-left: 955px">Xem tất cả</a>
							</h2>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="single-product.html"><img src="images/book_pr/vhteen/1_1.jpg"  width="240" height="320" alt="product image"></a>
<!--								<a class="second__img animation1" href="single-product.html"><img src="images/book_pr/vhteen/1_1.jpg"  width="240" height="320" alt="product image"></a>-->

								<div class="hot__box">
									<span class="hot-label">BEST SALLER</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="single-product.html">KHÓ KHĂN NHƯ CHĂN MÈO</a></h4>
								<ul class="prize d-flex">
									<li>62.100 ₫</li>
<!--									<li class="old_prize">69.000 ₫</li>-->
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img
										src="images/book_pr/sp_moi/hoi-dap-ung-thu-cung-bac-si-makoto-kondo.png" height="320"
										width="240"/></a>
<!--								<a class="second__img animation1" href="single-product.html"><img-->
<!--										src="images/book_pr/sp_moi/hoi-dap-ung-thu-cung-bac-si-makoto-kondo.png" height="320"-->
<!--										width="240"/></a>-->

								<div class="hot__box color--2">
									<span class="hot-label">HOT</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Hỏi Đáp Ung Thư Cùng Bác Sĩ Makoto Kondo</a></h4>
								<ul class="prize d-flex">
									<li>119.000 ₫</li>
<!--									<li class="old_prize">119.000 ₫</li>-->
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="single-product.html"> <img src="images/book_pr/sp_moi/1.jpg"
																					   height="320" width="240"/></a>
<!--								<a class="second__img animation1" href="single-product.html"><img src="images/book_pr/sp_moi/1.jpg"-->
<!--																								  height="320" width="240"/></a>-->
								<div class="hot__box">
									<span class="hot-label">BEST SALLER</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Dạy Con Trẻ Cách Tư Duy</a></h4>
								<ul class="prize d-flex">
									<li>149.000 ₫</li>
<!--									<li class="old_prize">$35.00</li>-->
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"> <img
										src="images/book_pr/sp_moi/nha-cua-mot-nua-tam-hon.png" height="320"
										width="240"/></a>

								<div class="hot__box">
									<span class="hot-label">HOT</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="single-product.html">Nhà Cửa - Một Nửa Tâm Hồn</a></h4>
								<ul class="prize d-flex">
									<li>165.000 ₫</li>

								</ul>
                                <div class="action">
                                    <div class="actions_inner">
                                        <ul class="add_to_links">
                                            <li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
                                            <li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
                                            <li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img
										src="images/book_pr/sp_moi/lam-ban-voi-bau-troi-bia-mem-2.jpg" height="320"
										width="240"/></a>
								<div class="hot__box">
									<span class="hot-label">HOT</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Làm Bạn Với Bầu Trời</a></h4>
								<ul class="prize d-flex">
									<li>110.000 ₫</li>

								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img
										src="images/book_pr/sp_moi/banh-xe-so-phan.jpg" height="320" width="240"/></a>
<!--								<a class="second__img animation1" href="single-product.html"><img-->
<!--										src="images/book_pr/sp_moi/banh-xe-so-phan.jpg" height="320" width="240"/></a>-->
								<div class="hot__box">
									<span class="hot-label">BEST SALER</span>
								</div>
							</div>
							<div class="product__content content--center content--center">
								<h4><a href="single-product.html">Bánh Xe Số Phận</a></h4>
								<ul class="prize d-flex">
									<li>98.000 ₫</li>
<!--									<li class="old_prize">$35.00</li>-->
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
						<!-- Start Single Product -->
					</div>
				</div>
				<!-- End Single Tab Content -->
			</div>
		</section>
		<!-- Start BEst Seller Area -->


		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="k">
						<div class="block" id="module_newproducts">
							<h2>
								<a class="title" href="shop-grid.html" title="Sách mới" style="font-weight: normal">Sách giảm giá<span class="b-main__category-arrow"></span></a>
								<a class="more" href="shop-grid.html" title="Xem tất cả" style="font-weight: normal">Xem tất cả</a>
							</h2>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img src="images/book_pr/sale/co-be-hat-tieu-1.jpg"  width="240" height="320" alt="product image"></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Cô Bé Hạt Tiêu</a></h4>
								<ul class="prize d-flex">
									<li>54.400 ₫</li>
									<li class="old_prize">68.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img src="images/book_pr/sale/giao-duc-khong-la-mang.png" height="320" width="240"/></a>
								<div class="hot__box color--2">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Giáo Dục Không La Mắng</a></h4>
								<ul class="prize d-flex">
									<li>102.400 ₫</li>
									<li class="old_prize">128.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"> <img src="images/book_pr/sale/tu-dien-tieng-viet-thong-dung-danh-cho-hoc-sinh.png" height="320" width="240"/></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Từ Điển Tiếng Việt Thông Dụng Dành Cho Học Sinh</a></h4>
								<ul class="prize d-flex">
									<li>104.000 ₫</li>
									<li class="old_prize">130.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"> <img
										src="images/book_pr/sale/nhe-ten-giua-chenh-venh.jpg" height="320"
										width="240"/></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Nhẹ Tên Giữa Chênh Vênh</a></h4>
								<ul class="prize d-flex">
									<li>70.200 ₫</li>
									<li class="old_prize">78.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img src="images/book_pr/sale/tui-co-tich-muon-mau.png" height="320" width="240"/></a>

								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Túi Cổ Tích Muôn Màu</a></h4>
								<ul class="prize d-flex">
									<li>96.000 ₫</li>
									<li class="old_prize">120.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img src="images/book_pr/sale/lam-nguoi-tu-te.png" height="320" width="240"/></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center content--center">
								<h4><a href="single-product.html">Làm Người Tử Tế</a></h4>
								<ul class="prize d-flex">
									<li>48.000 ₫</li>
									<li class="old_prize">60.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
						<!-- Start Single Product -->
					</div>
				</div>
				<!-- End Single Tab Content -->
			</div>
		</section>

		<!-- end giam -->

		<!--	sách bán chay	-->
		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="k">
						<div class="block" id="module_newproducts2">
							<h2>
								<a class="title" href="shop-grid.html" title="Sách mới" style="font-weight: normal">Sách bán chạy<span class="b-main__category-arrow"></span></a>
								<a class="more" href="shop-grid.html" title="Xem tất cả" style="font-weight: normal">Xem tất cả</a>
							</h2>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img src="images/book_pr/best-seller/hat_giong_tam_hon.jpg"  width="240" height="320" alt="product image"></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Hạt Giống Tâm Hồn - Tuyển Chọn Những Câu Chuyện Hay Nhất</a></h4>
								<ul class="prize d-flex">
									<li>110.400 ₫</li>
									<li class="old_prize">138.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img src="images/book_pr/best-seller/gap-duoc-nhau-rat-kho-sao-khong-tran-trong-nhau.png" height="320" width="240"/></a>
								<div class="hot__box color--2">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Gặp Được Nhau Rất Khó, Sao Không Trân Trọng Nhau?</a></h4>
								<ul class="prize d-flex">
									<li>68.000 ₫</li>
									<li class="old_prize">80.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"> <img src="images/book_pr/best-seller/nhung-nga-re-nghe-nghiep.jpg" height="320" width="240"/></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Những Ngã Rẽ Nghề Nghiệp</a></h4>
								<ul class="prize d-flex">
									<li>127.200 ₫</li>
									<li class="old_prize">159.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"> <img
										src="images/book_pr/best-seller/tham-kich-vi-nhan.jpg" height="320"
										width="240"/></a>
								<div class="hot__box">
									<span class="hot-label">Hot</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Thảm Kịch Vĩ Nhân</a></h4>
								<ul class="prize d-flex">
									<li>117.000 ₫</li>
<!--									<li class="old_prize">78.000 ₫</li>-->
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="on"><i class="zmdi zmdi-star"></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img src="images/book_pr/best-seller/y-hoc-dinh-dung-nhung-dieu-bac-si-khong-noi-voi-ban.png" height="320" width="240"/></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.html">Y Học Dinh Dưỡng - Những Điều Bác Sĩ Không Nói Với Bạn</a></h4>
								<ul class="prize d-flex">
									<li>135.200 ₫</li>
									<li class="old_prize">169.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
					</div>
					<!-- Start Single Product -->
					<!-- Start Single Product -->
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="slide2.html"><img
										src="images/book_pr/best-seller/phuong-bac-phuong-nam-tinh-yeu-khong-bien-gioi.png" height="320" width="240"/></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center content--center">
								<h4><a href="single-product.html">Phương Bắc, Phương Nam - Tình Yêu Không Biên Giới</a></h4>
								<ul class="prize d-flex">
									<li>54.000 ₫</li>
									<li class="old_prize">60.000 ₫</li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="cart.html" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="#" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
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
						<!-- Start Single Product -->
					</div>
				</div>
				<!-- End Single Tab Content -->
			</div>
		</section>
		<!--		sách bán chạy-->

		<!-- Start Recent Post Area -->
		<section class="wn__recent__post bg--gray ptb--80">
			<div class="container">
				<div class="row">
					<div class="k">
						<div class="block" id="module_newproducts23">
							<h2>
								<a class="title" href="#" title="Sách mới" style="font-weight: normal">Trải nghiệm của khách hàng tại Nobita.vn<span class="b-main__category-arrow"></span></a>

							</h2>
						</div>
					</div>
				</div>
				<div class="row mt--50">
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3>Chị Minh Hạnh (Công ty Hanoi BS Co.Ltd)</h3>
								<p>Chào quý nhà sàch Nobita.
									Cảm ơn vì đã giải quyết đơn đặt hàng của chúng tôi nhanh chóng và đã giao sách đúng hẹn. Tôi rất vui vì ở VN có một nhà sách online uy tín và làm việc với phong cách hiện đại phục vụ nhanh, giống ở nước ngoài.
									Chúng tôi sẽ thường xuyên đặt sách và sử dụng dịch vụ của quý của hang, xin hãy luôn nâng cao chất lượng và phong cách phục vụ để quý cửa hàng luôn được người tiêu dùng tin tuong xếp hàng uy tín nhất Việt Nam.
									</p>
								<div class="post__time">
									<span class="day">06/11/2019</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love" style="color: #007bff"></i>72</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble" style="color: #007bff"></i>27</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3>Thu Thảo</h3>
								<p>Biết Nobita từ những ngày đầu mới tham gia cộng đồng sách. Nhưng phải mới gần đây mình mới có dịp sử dụng dịch vụ của trang này. Một đơn hàng với trị giá không lớn nhưng vẫn nhìn thấy được trong đó sự đầu tư để tạo nên sự khác biệt cho người sử dụng làm mình rất vui khi sử dụng sách ở đây.
									Trong bài viết này mình chỉ đơn giản trong vai trò là một khách hàng đặt mua sách bình thường chia sẻ lại kinh nghiệm thực tế nhất giúp các bạn có cái nhìn toàn diện khi mua hàng cũng như đánh giá Nobita.</p>
								<div class="post__time">
									<span class="day">18/10/2019</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love" style="color: #007bff"></i>52</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble" style="color: #007bff"></i>12</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3>Bội Thuyên Lee</h3>
								<p>Tôi mua tương đối nhiều hàng từ nobita, việc đổi trả và bảo hành khá tốt !. Hy vọng nobita sẽ ngày càng phát triển hơn nữa trong tương lai.
									Tôi nghĩ rằng nobita làm được và số lượng khách hàng sẽ tăng lên đáng kể.</p>
								<div class="post__time">
									<span class="day">30/10/2019</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love" style="color: #007bff"></i>42</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble" style="color: #007bff"></i>7</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Recent Post Area -->

		<!-- Footer Area -->
		<footer id="wn__footer" class="footer__area bg__cat--8 brown--color">
			<div class="footer-static-top">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="footer__widget footer__menu">
								<div class="ft__logo">
									<a href="index.html">

										<img class="f" src="images/logo/nobitavn-103639.jpg" height="140" width="350"/></a>
									<p>© 2019 - Bản quyền của Công ty TNHH Neta Việt Nam – www.Nobita.vn
										Giấy chứng nhận Đăng ký Kinh doanh số 0315442805 do Sở Kế hoạch và Đầu tư Thành phố Hồ Chí Minh cấp ngày 19/12/2018</p>
								</div>
								<div class="footer__content">
									<ul class="social__net social__net--2 d-flex justify-content-center">
										<li><a href="#"><i class="bi bi-facebook"></i></a></li>
										<li><a href="#"><i class="bi bi-google"></i></a></li>
										<li><a href="#"><i class="bi bi-twitter"></i></a></li>
										<li><a href="#"><i class="bi bi-linkedin"></i></a></li>
										<li><a href="#"><i class="bi bi-youtube"></i></a></li>
									</ul>
									<p>Email:hotro@nobita.com</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright__wrapper">
				<div class="container">
					<div class="pi"><img class="p" src="images/dathongbao.png" height="67" width="15%"/></div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="copyright">
								<!--                            <div class="copy__right__inner text-left">-->
								<!--                                <p>Copyright    <i class="fa fa-copyright"></i> 2014<a href="index.html"> Nobita.vn</a></p>-->
								<!--                            </div>-->
							</div>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12">
							<div class="payment text-right">
								<img class="g" src="images/icons/payment.png" alt="" width="50%" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- //Footer Area -->
		<!-- QUICKVIEW PRODUCT -->
		<div id="quickview-wrapper">
			<!-- Modal -->
			<div class="modal fade" id="productmodal" tabindex="-1" role="dialog"  style="width: 700px;height: 800px ;margin-left: 350px">
				<div class="modal-dialog modal__container" role="document">
					<div class="modal-content">
						<div class="modal-header modal__header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<div class="modal-product">
								<!-- Start product images -->
								<div class="product-images">
									<div class="main-image images"><img src="images/books/347787_p88740mscan0001.jpg"
																		height="383" width="240"/>

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
											<span class="new-price">250.000 ₫</span>
											<span class="old-price">298.000 ₫</span>
										</div>
									</div>
									<div class="quick-desc">
										<p>Tác giả: Hoàng Thy Nhạc Vũ</p>
										<p>Nhà xuất bản: Nxb Tổng hợp TP.HCM<p>Nhà phát hành: NXBTH TPHCM</p><p>Mã Sản phẩm: 9786045895993</p><p>Khối lượng: 220.00 gam</p><p>Ngôn ngữ: Tiếng Việt</p>
										<p>Định dạng: Bìa mềm</p>
										<p>Kích thước: 14 x 22 cm</p>
										<p>Ngày phát hành: 09/2019</p>
										<p>Số trang: 168</p>
									</div>

									<div class="addtocart-btn">
										<a href="#">Thêm vào giỏ hàng</a>
									</div>
								</div><!-- .product-info -->
							</div><!-- .modal-product -->
						</div><!-- .modal-body -->
					</div><!-- .modal-content -->
				</div><!-- .modal-dialog -->
			</div>
			<!-- END Modal -->
		</div>
		<!-- END QUICKVIEW PRODUCT -->
	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="<c:url value="/assets/user/js/vendor/jquery-3.2.1.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/popper.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/plugins.js"/>"></script>
	<script src="<c:url value="/assets/user/js/active.js"/>"></script>
	<script>
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {myIndex = 1}
			x[myIndex-1].style.display = "block";
			setTimeout(carousel, 2000); // Change image every 2 seconds
		}
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function currentDiv(n) {
			showDivs(slideIndex = n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {slideIndex = 1}
			if (n < 1) {slideIndex = x.length}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-white", "");
			}
			x[slideIndex-1].style.display = "block";
			dots[slideIndex-1].className += " w3-white";
		}
	</script>
<script>

	$("#slideshow > div:gt(0)").hide();

	setInterval(function() {
		$('#slideshow > div:first')
				.fadeOut(1000)
				.next()
				.fadeIn(1000)
				.end()
				.appendTo('#slideshow');
	}, 3000);


</script>
</body>



