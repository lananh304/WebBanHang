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
<title>Sản phẩm</title>
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
<!--	Font awesome-->
<script src="https://kit.fontawesome.com/c25baca2b9.js"
	crossorigin="anonymous"></script>
	
	
	<style>
.pagination {
  display: flex;
  justify-content: center

}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
}

.pagination a.active {
  background-color:  #44aaee;
  color: white;
  border: 1px solid  #44aaee;
}

.pagination a:hover:not(.active) {background-color: #ddd;}



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
									class="breadcrumb_item active">Danh mục sách</span>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- Start Shop Page -->
		<div
			class="page-shop-sidebar left--sidebar bg--white section-padding--lg">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-12 order-2 order-lg-1 md-mt-40 sm-mt-40">
						<div class="shop__sidebar">
							<aside class="wedget__categories poroduct--cat">
								<h3 class="wedget__title"><spring:message code="dssanpham" text="default text" /></h3>
								
								<ul>
								<c:forEach var="item" items="${categorys}" varStatus="index">
									<li><a href="<c:url value="/sanpham/${item.id}"/>">${item.type}</a></li>
						</c:forEach>
								</ul>
											<ul>
								<c:forEach var="item" items="${categorys1}" varStatus="index">
									<li><a href="<c:url value="/sanpham/${item.id}"/>">${item.type}</a></li>
						</c:forEach>
								</ul>
											<ul>
								<c:forEach var="item" items="${categorys2}" varStatus="index">
									<li><a href="<c:url value="/sanpham/${item.id}"/>">${item.type}</a></li>
						</c:forEach>
								</ul>
							</aside>

							<aside class="wedget__categories poroduct--tag">
								<h3 class="wedget__title">Product Tags</h3>
								<ul>
									<li><a href="#">Sách bán chạy</a></li>
									<li><a href="#">Sách giảm giá</a></li>
									<li><a href="#">Sách tuổi teen </a></li>
									<li><a href="#">Văn học-Teen</a></li>
									<li><a href="#">Hướng nghiệp-Kĩ năng </a></li>
									<li><a href="#">Tiểu thuyết</a></li>
									<li><a href="#">Truyện tranh </a></li>
									<li><a href="#">Sức khỏe </a></li>
									<li><a href="#">Sách thiếu nhi</a></li>
									<li><a href="#">Truyện cổ tích-Thần thoại </a></li>
									<li><a href="#">Vừa hoc vừa chơi </a></li>
									<li><a href="#">Kiến thức-Kĩ năng </a></li>
								</ul>
							</aside>

						</div>
					</div>
					<div class="col-lg-9 col-12 order-1 order-lg-2">
						<div class="row">
							<div class="col-lg-12">
								<div
									class="shop__list__wrapper d-flex flex-wrap flex-md-nowrap justify-content-between">
									<div class="shop__list nav justify-content-center"
										role="tablist">
										<a class="nav-item nav-link active" data-toggle="tab"
											href="#nav-grid" role="tab"><i class="fa fa-th"></i></a> <a
											class="nav-item nav-link" data-toggle="tab" href="#nav-list"
											role="tab"><i class="fa fa-list"></i></a>
									</div>
									
									<p>Hiển thị 1-12 trong 40 kết quả</p>
<!-- 									<div class="orderby__wrapper"> -->
<!-- 										<span>Sắp xếp theo</span> <select class="shot__byselect"> -->
<!-- 											<option>Tùy chọn mặt định</option> -->
<!-- 											<option>Sách mới phát hành</option> -->
<!-- 											<option>Giá bán từ cao đến thấp</option> -->
<!-- 											<option>Giá bán từ thấp đến cao</option> -->

<!-- 										</select> -->
<!-- 									</div> -->




			<div class="orderby__wrapper">
			
							
						
							<form class="pricing" action="http://localhost:8080/WebBanSach/sort/${idCategory}" method="get">
								<select class="shot__byselect" name="pricing" onchange='this.form.submit()'>
									<option
										<c:if test="${pricing eq 'default'}">
										selected="selected"
										</c:if>
										value="default"><spring:message code="sxgia" text="default text" /></option>
									<option
										<c:if test="${pricing eq 'under50'}">
										selected="selected"
										</c:if>
										value="under50"><spring:message code="duoi" text="default text" /></option>
									<option
										<c:if test="${pricing eq '50to70'}">
										selected="selected"
										</c:if>
										value="50to70"><spring:message code="tu" text="default text" /></option>
									<option
										<c:if test="${pricing eq 'greaterthan70'}">
										selected="selected"
										</c:if>
										value="greaterthan70"><spring:message code="tren" text="default text" /></option>
									
								
								</select>
							</form>
						</div>
								</div>
							</div>
						</div>
						<div class="tab__container">
							<div class="shop-grid tab-pane fade show active" id="nav-grid"
								role="tabpanel">
								<div class="row">
									<!-- Start Single Product -->
									
									<c:if test="${productsPaginate.size() > 0}">
									<c:forEach var="item" items="${productsPaginate}">
									<div
										class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
										
										<div class="product__thumb">

											<a class="first__img" href="<c:url value="/chitietsanpham/${item.id}"/>"><img
												src="<c:url value="/assets/user/images/truyentranh/${item.img}"/>" height="340" width="270"
												alt="product image"/></a>
											<!--											<a class="second__img animation1" href="single-product.html"><img src="images/books/2.jpg" alt="product image"></a>-->
											<div class="hot__box">
												<span class="hot-label">BEST SALLER</span>
											</div>
										</div>
										<div class="product__content content--center">
											<h4>
												<a href="<c:url value="/chitietsanpham/${item.id}"/>">${item.name}</a>
											</h4>
											<ul class="prize d-flex">
												<li>${item.price}00 ₫</li>
												<li class="old_prize">${item.lower}00 ₫</li>
											</ul>
											<div class="action">
												<div class="actions_inner">
													<ul class="add_to_links">
														<li><a class="cart" href="cart.html" title="Giỏ hàng"><i
																class="bi bi-shopping-bag4"></i></a></li>
														<li><a class="wishlist" href="<c:url value="/AddCart/${item.id}"/>"
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
													<li class="on"><i class="zmdi zmdi-star "></i></li>
													<li class="on"><i class="zmdi zmdi-star "></i></li>
													<li class="on"><i class="zmdi zmdi-star "></i></li>
													<li class="off"><i class="zmdi zmdi-star "></i></li>
													<li class="off"><i class="zmdi zmdi-star"></i></li>
												</ul>
											</div>
										</div>
										
									</div>
									</c:forEach>
									</c:if>
									<!-- End Single Product -->

								</div>
								
								
								<div class="pagination ">
								<c:forEach var="item" begin="1" end="${paginateInfo.totalPage}" varStatus="loop">
								<c:if test="${(loop.index) == paginateInfo.currentPage }">
								 <a href="<c:url value="/sanpham/${ idCategory}/${loop.index }"/>" class="active">${(loop.index)}</a>
								
								
								</c:if>
								
									<c:if test="${(loop.index) != paginateInfo.currentPage }">
								 <a href="<c:url value="/sanpham/${ idCategory}/${loop.index }"/>" >${(loop.index)}</a>
								
								
								</c:if>
								</c:forEach>

</div>

						
							</div>
							<div class="shop-grid tab-pane fade" id="nav-list"
								role="tabpanel"  >
								<div class="list__view__wrapper" >
									<!-- Start Single Product -->
										<c:if test="${productsPaginate.size() > 0}">
									<c:forEach var="item" items="${productsPaginate}">
									<div class="list__view" style="margin-bottom: 100px">
										<div class="thumb">
											<a class="first__img" href="<c:url value="/chitietsanpham/${item.id}"/>"><img
												src="<c:url value="/assets/user/images/truyentranh/${item.img}"/>" height="340" width="270"
												alt="product images"></a>
											<!--	        								<a class="second__img animation1" href="single-product.html"><img src="images/product/2.jpg" alt="product images"></a>-->
										</div>
										<div class="content">
											<h2>
												<a href="<c:url value="/chitietsanpham/${item.id}"/>">${item.name}</a>
											</h2>
											<ul class="rating d-flex">
												<li class="on"><i class="zmdi zmdi-star "></i></li>
												<li class="on"><i class="zmdi zmdi-star "></i></li>
												<li class="on"><i class="zmdi zmdi-star "></i></li>
												<li class="off"><i class="zmdi zmdi-star "></i></li>
												<li class="off"><i class="zmdi zmdi-star"></i></li>
											</ul>
											<ul class="prize__box">
												<li>${item.price}00 ₫</li>
												<li class="old__prize">${item.lower}00 ₫</li>
											</ul>
											<p class="gioitheu" style="text-align: justify">${item.des}</p>
											<ul class="cart__action d-flex">
												<li class="cart"><a href="<c:url value="/AddCart/${item.id}"/>"><spring:message code="them" text="default text" /></a></li>
												<!--	        									<li class="wishlist"><a href="cart.html"></a></li>-->

											</ul>

										</div>
									</div>
									</c:forEach>
									</c:if>
									<!-- End Single Product -->
<!-- 									Start Single Product -->

								</div>
																<div class="pagination ">
								<c:forEach var="item" begin="1" end="${paginateInfo.totalPage}" varStatus="loop">
								<c:if test="${(loop.index) == paginateInfo.currentPage }">
								 <a href="<c:url value="/sanpham/${ idCategory}/${loop.index }"/>" class="active">${(loop.index)}</a>
								
								
								</c:if>
								
									<c:if test="${(loop.index) != paginateInfo.currentPage }">
								 <a href="<c:url value="/sanpham/${ idCategory}/${loop.index }"/>" >${(loop.index)}</a>
								
								
								</c:if>
								</c:forEach>

</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Shop Page -->
		<!-- Footer Area -->
	<%@include file="layouts/footer.jsp"%>	
		<!-- //Footer Area -->
		<!-- QUICKVIEW PRODUCT -->

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
									<img src="images/books/347787_p88740mscan0001.jpg" height="383"
										width="240" />

								</div>
							</div>
							<!-- end product images -->
							<div class="product-info">
								<h1>${product.name}</h1>
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