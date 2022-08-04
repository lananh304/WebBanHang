<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<header id="wn__header"
			class="header__area header__absolute sticky__header">
		
			<div class="container-fluid">
				<div class="row">
				<div class="ctl00_Header1_ucLogout_dLog" class="logout" >

						<a href="?language=vi"><img src="https://cdn0.fahasa.com/skin/frontend/ma_vanese/fahasa/images/default.svg" alt=""  id="imgUS" style="width: 20px;height: 15px;margin-left: 1237px;margin-top: 0%;margin-bottom: 0%" title="Vietnamese"></a>


					</div>
		
					<div class="ctl00_Header1_ucLogout_dLog" class="logout" >

						 <a href="?language=en"><img src="https://cdn0.fahasa.com/skin/frontend/ma_vanese/fahasa/images/english.svg" alt="" id="imgVi" style="width: 20px;height: 15px;margin-top: -3.7%;margin-bottom: 0%;margin-left: 1260px" title="English"></a>

					</div>
				
					<div class="col-md-6 col-sm-6 col-6 " style="margin-top: -2.8%">
						<div class="log">
							<a href='<c:url value="/"/>'> <img class="l"
								src="<c:url value="/assets/user/images/logo/nobitavn-103639.jpg"/>"
								height="140" width="350" /></a>
						</div>
					</div>
					<div class="col-lg-8 d-none d-lg-block" >
						<nav class="mainmenu__nav" id="myDIV">
							<ul class="meninmenu d-flex justify-content-start">
								<li class="drop with--one--item active"><a
									href='<c:url value="/"/>'><spring:message code="trangchu" text="default text" /></a></li>

								<li class="drop"><a href="#"><spring:message code="danhmuc" text="default text" /></a>
									<div class="megamenu mega03">
										<ul class="item item03">
											<li class="title">Sách đáng chú ý</li>
											<c:forEach var="item" items="${categorys}" varStatus="index">

												<li><a href='<c:url value="/sanpham/${item.id}"/>'>${item.type}</a></li>

											</c:forEach>

											<!-- 											<li><a href="shop-grid.html">Sách bán chạy </a></li> -->
											<!-- 											<li><a href="shop-grid.html">Sách giảm giá </a></li> -->
										</ul>

										<ul class="item item03">
											<li class="title">Sách tuổi teen</li>
<!-- 											<li><a href="shop-grid.html">Văn học-Teen</a></li> -->
<!-- 											<li><a href="shop-grid.html">Hướng nghiệp-Kĩ năng</a></li> -->
<!-- 											<li><a href="shop-grid.html">Tiểu thuyết</a></li> -->
<!-- 											<li><a href="shop-grid.html">Truyện tranh</a></li> -->
<!-- 											<li><a href="shop-grid.html">Sức khỏe</a></li> -->
		<c:forEach var="item" items="${categorys1}" varStatus="index">

												<li><a href='<c:url value="/sanpham/${item.id}"/>'>${item.type}</a></li>

											</c:forEach>
										</ul>
										<ul class="item item03">
											<li class="title">Sách thiếu nhi</li>
<!-- 											<li><a href="shop-grid.html">Truyện cổ tích-Thần -->
<!-- 													thoại</a></li> -->
<!-- 											<li><a href="shop-grid.html">Vừa hoc vừa chơi</a></li> -->
<!-- 											<li><a href="shop-grid.html">Kiến thức-Kĩ năng</a></li> -->
<!-- 											<li><a href="shop-grid.html">Văn học</a></li> -->
<!-- 											<li><a href="shop-grid.html">Truyện kể cho bé</a></li> -->
		<c:forEach var="item" items="${categorys2}" varStatus="index">

												<li><a href='<c:url value="/sanpham/${item.id}"/>'>${item.type}</a></li>

											</c:forEach>
										</ul>
									</div></li>

								<li class="drop"><a href='<c:url value="/gioithieu"/>'><spring:message code="gioithieu" text="default text" /> </a></li>
								<li class="drop "><a href="#"><spring:message code="hotro" text="default text" /></a>
									<div class="megamenu dropdown">
										<ul class="item item01">
											<li><a href='<c:url value="/quydinh"/>'><spring:message code="quydinh" text="default text" /></a></li>
											<li><a href='<c:url value="/huongdan"/>'><spring:message code="dathang" text="default text" /></a></li>
											<li><a href='<c:url value="/phuongthuc"/>'><spring:message code="thanhtoan" text="default text" /></a></li>
											<li><a href='<c:url value="/vanchuyen"/>'><spring:message code="vanchuyen" text="default text" /></a></li>
											<li><a href='<c:url value="/chinhsach"/>'><spring:message code="doitra" text="default text" /></a></li>
											<li><a href='<c:url value="/lienhe"/>'><spring:message code="lienhe" text="default text" /></a></li>

										</ul>
									</div></li>
							</ul>
						</nav>
					</div>
				
					<div class="col-md-6 col-sm-6 col-6 col-lg-2">
						<ul
							class="header__sidebar__right d-flex justify-content-end align-items-center">
							<li title="<spring:message code="timkiem" text="default text" />" class="shop_search"><a class="tag_m1"
								href="#" data-toggle="dropdown"></a>
								<ul class="dropdown-menu drop_2" style="min-width: 300px;">
									<li>
										<div class="row_1">
											<div class="col-sm-12">
											
												<form class="navbar-form navbar-left" role="search" action="timkiem" method="get">
													<div class="input-group">
														<input type="text" class="form-control" 
															placeholder="<spring:message code="timkiem" text="default text" />" name="text"  value=""> <span
															class="input-group-btn">
															<button class="btn btn-primary" type="submit">
																<spring:message code="timkiem" text="default text" /></button>
														</span>
													</div>
												</form>
										
											</div>
										</div>
									</li>
								</ul></li>
							<!--                        <li title="Tìm kiếm" class="shop_search"><a class="search__active" href="#"></a></li>-->
							<!--							<li class="wishlist"><a href="#"></a></li>-->
						<li title="<spring:message code="giohang" text="default text" />" class="shopcart"><a
								class="cartbox_active" href="#">
									<c:if test="${ not empty Cart }">
								<span class="product_qun">${TotalQuantyCart}</span>
								</c:if>
								<c:if test="${ empty Cart }">
								<span class="product_qun">0</span>
								</c:if>
								</a>
								<!-- Start Shopping Cart -->
								<div class="block-minicart minicart__active">
									<div class="minicart-content-wrapper">
										<div class="micart__close">
											<span>Đóng</span>
										</div>
										<div class="items-total d-flex justify-content-between">
											<span>${TotalQuantyCart} sản phẩm</span> <span>Tổng
												giỏ hàng</span>
										</div>
										<div class="total_amount text-right">
											<span>${TotalPriceCart}00 ₫</span>
										</div>
										<div class="mini_action checkout">
											<a class="checkout__btn" href="<c:url value="/giohang"/>">Đi tới giỏ hàng</a>
										</div>
										<div class="single__items">
											<div class="miniproduct">
											<c:forEach var="item" items="${Cart}" varStatus="index">
												<div class="item01 d-flex">
													<div class="thumb">
														<a href="<c:url value="/chitietsanpham/${item.value.product.id}"/>"><img
															src="<c:url value="/assets/user/images/truyentranh/${item.value.product.img}"/>"
															height="94" width="75" /></a>
													</div>
													<div class="content">
														<h6>
															<a href="<c:url value="/chitietsanpham/${item.value.product.id}"/>">${item.value.product.name}</a>
														</h6>
														<span class="prize"> ${item.value.product.price}00 ₫</span>
														<div class="product_prize d-flex justify-content-between">
															<span class="qun">Số lượng: ${item.value.quanty}</span>
															<ul class="d-flex justify-content-end">
																<li title="Xóa"><a href="<c:url value="/DeleteCart/${item.key}"/>"><i
																		class="zmdi zmdi-delete"></i></a></li>
															</ul>
														</div>
													</div>
												</div>
								</c:forEach>
					
											</div>
										</div>
										
									</div>
								</div> <!-- End Shopping Cart --></li>
							<li title="<spring:message code="dangnhap" text="default text" />" class="setting__bar__icon">
							
							<a
								class="setting__active" href="#"></a>
						
								<div class="searchbar__content setting__block">
									<div class="content-inner">

										<div class="switcher-currency">

											<div class="switcher-options">
												<div class="switcher-currency-trigger">
													<div class="setting__menu">
														<c:if test="${ empty LoginInfo }">
										<span><a href="<c:url value="/dangnhap"/>"><spring:message code="dangnhap" text="default text" /></a></span> <span><a
															href="<c:url value="/dangki"/>"><spring:message code="dangki" text="default text" /></a></span>
															</c:if>
															
															<c:if test="${ not empty LoginInfo }">
														
															<span><a href="<c:url value="/dangxuat"/>"><spring:message code="dangxuat" text="default text" /></a></span>
				<span><a href="<c:url value="/myaccount"/>"><spring:message code="capnhap" text="default text" /></a></span>
															<span><a href="<c:url value="/myorder"/>"><spring:message code="donhang" text="default text" /></a></span>
															</c:if>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div></li>
								
								<c:if test="${ not empty LoginInfo }">
													
							                       <div class="goi" style="margin-left: 30px; margin-top: 5px">
							                           <p><spring:message code="chao" text="default text" /> ${LoginInfo.id }</p>
                                        
							                       </div>
	</c:if>
						</ul>

					</div>
				</div>

				<!-- Start Mobile Menu -->
				<div class="row d-none">
					<div class="col-lg-12 d-none">
						<nav class="mobilemenu__nav">
							<ul class="meninmenu">
								<li><a href="<c:url value="/"/>">Trang chủ</a></li>
								<li><a href="#">Danh mục sách</a>
									<ul>
										
										<li><a href="portfolio.html">Sách đáng chú ý</a>
											<ul>
												<c:forEach var="item" items="${categorys}" varStatus="index">

												<li><a href='<c:url value="/sanpham/${item.id}"/>'>${item.type}</a></li>

											</c:forEach>
											
											</ul></li>
												<li><a href="portfolio.html">Sách tuổi teen</a>
											<ul>
												<c:forEach var="item" items="${categorys1}" varStatus="index">

												<li><a href='<c:url value="/sanpham/${item.id}"/>'>${item.type}</a></li>

											</c:forEach>
											</ul></li>
													<li><a href="portfolio.html">Sách thiếu nhi</a>
											<ul>
												<c:forEach var="item" items="${categorys2}" varStatus="index">

												<li><a href='<c:url value="/sanpham/${item.id}"/>'>${item.type}</a></li>

											</c:forEach>
											</ul></li>
									</ul></li>
										<li><a href='<c:url value="/gioithieu"/>'>Giới thiệu</a></li>
								<li><a href="#">Hỗ trợ khách hàng</a>
									<ul>
										<li><a href='<c:url value="/huongdan"/>'>Hướng dẫn đặt hàng</a></li>
											<li><a href='<c:url value="/phuongthuc"/>'>Phương thức thanh toán</a></li>
											<li><a href='<c:url value="/vanchuyen"/>'>Phương thức vận chuyển</a></li>
											<li><a href='<c:url value="/chinhsach"/>'>Chính sách đổi trả</a></li>
											<li><a href='<c:url value="/lienhe"/>'>Liên hệ</a></li>
									</ul></li>
									
								<li><a href="<c:url value="/giohang"/>">Giỏ hàng</a></li>
								<li><a href="#">Đăng nhập</a>
									<ul>
										<li><a href="<c:url value="/dangnhap"/>">Đăng nhập</a></li>
										<li><a href="<c:url value="/dangki"/>">Đăng kí</a></li>
									</ul></li>
								
							</ul>
						</nav>
					</div>
				</div>
				<!-- End Mobile Menu -->
				<div class="mobile-menu d-block d-lg-none"></div>
				<!-- Mobile Menu -->
			</div>
		</header>
		
 