<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Trang chủ</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
#swd-slideshow .slide-box{

  margin-left: 7%;

}
.jumbotron-anh-nen {
    background-image: url('bau_troi.jpg');
    background-size: cover;
    color: white;
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

<!-- 		<div id="swd-slideshow"> -->
<%-- 			<%-- 		<p>${slides.size()}</p> --%> --%>
<%-- 			<c:forEach var="item" items="${slides}" varStatus="index"> --%>

<!-- 				<div class="slide-box"> -->

<%-- 					<a href="<c:url value="/sanpham/11"/>"><img class="hi" --%>
<%-- 						src="<c:url value="/assets/user/images/bg/${item.img}"/>"></a> --%>
<!-- 				</div> -->
<%-- 			</c:forEach> --%>
<%-- 			<%-- 			<div class="slide-box"><a href="slide2.html"><img class="hi" src="<c:url value="/assets/user/images/bg/342416_desktop.jpg"/>"></a></div> --%> --%>
<%-- 			<%-- 			<div class="slide-box"><a href="slide2.html"><img class="hi" src="<c:url value="/assets/user/images/bg/345804_desktopp2py-e9.jpg"/>"></a></div> --%> --%>
<%-- 			<%-- 			<div class="slide-box"><a href="slide2.html"><img class="hi" src="<c:url value="/assets/user/images/bg/1t.jpg"/>"></a></div> --%> --%>
<!-- 		</div> -->
		
		
		
		
		
		  <div id="Hien_Thi_Anh" class="carousel slide" data-ride="carousel" data-interval="3000" style="margin-left: 3%;margin-top: -0.1%">
      <ol class="carousel-indicators" style="margin-left:-400px">
          <li data-target="#Hien_Thi_Anh" data-slide-to="0" class="active"></li>
          <li data-target="#Hien_Thi_Anh" data-slide-to="1"></li>
          <li data-target="#Hien_Thi_Anh" data-slide-to="2"></li>
      </ol>   <div class="carousel-inner">
      <div class="carousel-item active" >
             <a href="<c:url value="/sanpham/11"/>"><img style="width: 67%;height: 500px" class="hi"
						src="<c:url value="/assets/user/images/bg/slide2.jpg"/>"></a>
      </div>
   
               <c:forEach var="item" items="${slides}" varStatus="index">
            <div class="carousel-item">
					<a href="<c:url value="/sanpham/11"/>"><img style="width: 67%;height: 500px" class="hi"
						src="<c:url value="/assets/user/images/bg/${item.img}"/>"></a>
			
	
           
            </div>
            		</c:forEach>
  </div>
      <a class="carousel-control-prev" href="#Hien_Thi_Anh" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-prev" href="#Hien_Thi_Anh" role="button" data-slide="next" style="margin-left: 50%">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
      </a>
  </div>
		
		
		
    
    
    

		<section class="wn__product__area brown--color pt--80  pb--30 la">
			<div class="container">
				<div class="row">
					<div class="k1">
						<div class="block" id="module_newproducts21">
							<h2>
								<a class="title" href="shop-grid.html" title="Sách mới"
									style="font-weight: normal"><spring:message code="sachmoi" text="default text" /><span
									class="b-main__category-arrow"></span></a> <a class="more"
									href="<c:url value="/sanpham/1"/>" title="<spring:message code="xem" text="default text" />"
									style="font-weight: normal; margin-left: 955px"><spring:message code="xem" text="default text" /></a>
							</h2>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div
					class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<!-- Start Single Product -->
					<c:forEach var="item" items="${productid2}" varStatus="index">
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="<c:url value="/chitietsanpham/${item.id}"/>"><img
									src="<c:url value="/assets/user/images/truyentranh/${item.img}"/>" width="240" height="320"
									alt="product image"></a>
								<!--								<a class="second__img animation1" href="single-product.html"><img src="images/book_pr/vhteen/1_1.jpg"  width="240" height="320" alt="product image"></a>-->

								<div class="hot__box">
									<span class="hot-label">NEW</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4>
									<a href="single-product.html">${item.name}</a>
								</h4>
								<ul class="prize d-flex">
									<li>${item.price}00 ₫ </li>
									<!--									<li class="old_prize">69.000 ₫</li>-->
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
					</div>
					</c:forEach>
					<!-- Start Single Product -->
					
						<!-- Start Single Product -->
					</div>
				</div>
				<!-- End Single Tab Content -->
			
		</section>
		<!-- Start BEst Seller Area -->


		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="k">
						<div class="block" id="module_newproducts">
							<h2>
								<a class="title" href="shop-grid.html" title="Sách mới"
									style="font-weight: normal"><spring:message code="sachgiamgia" text="default text" /><span
									class="b-main__category-arrow"></span></a> <a class="more"
									href="<c:url value="/sanpham/3"/>" title="<spring:message code="xem" text="default text" />"
									style="font-weight: normal"><spring:message code="xem" text="default text" /></a>
							</h2>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				
				<div
					class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<!-- Start Single Product -->
					<c:forEach var="item" items="${productid1}" varStatus="index">
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="<c:url value="/chitietsanpham/${item.id}"/>"><img
									src="<c:url value="/assets/user/images/truyentranh/${item.img}"/>" width="240"
									height="320" alt="product image"></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4>
									<a href="slide2.html">${item.name}</a>
								</h4>
								<ul class="prize d-flex">
									<li>${item.lower}00 ₫ </li>
									<li class="old_prize">${item.price}00 ₫ </li>
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
					</div>
		</c:forEach>
			</div>
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
								<a class="title" href="shop-grid.html" title="Sách mới"
									style="font-weight: normal"><spring:message code="sachbanchay" text="default text" /><span
									class="b-main__category-arrow"></span></a> <a class="more"
									href="<c:url value="/sanpham/2"/>" title="<spring:message code="xem" text="default text" />"
									style="font-weight: normal"><spring:message code="xem" text="default text" /></a>
							</h2>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div
					class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<!-- Start Single Product -->
					<c:forEach var="item" items="${productid3}" varStatus="index">
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="<c:url value="/chitietsanpham/${item.id}"/>"><img
									src="<c:url value="/assets/user/images/truyentranh/${item.img}"/>"
									width="240" height="320" alt="product image"></a>
								<div class="hot__box">
									<span class="hot-label">HOT</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4>
									<a href="slide2.html">${item.name} ₫</a>
								</h4>
								<ul class="prize d-flex">
									<li>${item.price}00 ₫ </li>
									
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
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
					<!-- Start Single Product -->
				
						<!-- Start Single Product -->
					
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
								<a class="title" href="#" title="Sách mới"
									style="font-weight: normal"><spring:message code="trainghiem" text="default text" />
									<span class="b-main__category-arrow"></span>
								</a>

							</h2>
						</div>
					</div>
				</div>
				<div class="row mt--50">
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3>Chị Minh Hạnh (Công ty Hanoi BS Co.Ltd)</h3>
								<p>Chào quý nhà sàch Nobita. Cảm ơn vì đã giải quyết đơn đặt
									hàng của chúng tôi nhanh chóng và đã giao sách đúng hẹn. Tôi
									rất vui vì ở VN có một nhà sách online uy tín và làm việc với
									phong cách hiện đại phục vụ nhanh, giống ở nước ngoài. Chúng
									tôi sẽ thường xuyên đặt sách và sử dụng dịch vụ của quý của
									hang, xin hãy luôn nâng cao chất lượng và phong cách phục vụ để
									quý cửa hàng luôn được người tiêu dùng tin tuong xếp hàng uy
									tín nhất Việt Nam.</p>
								<div class="post__time">
									<span class="day">06/11/2019</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"
													style="color: #007bff"></i>72</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"
													style="color: #007bff"></i>27</a></li>
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
								<p>Biết Nobita từ những ngày đầu mới tham gia cộng đồng
									sách. Nhưng phải mới gần đây mình mới có dịp sử dụng dịch vụ
									của trang này. Một đơn hàng với trị giá không lớn nhưng vẫn
									nhìn thấy được trong đó sự đầu tư để tạo nên sự khác biệt cho
									người sử dụng làm mình rất vui khi sử dụng sách ở đây. Trong
									bài viết này mình chỉ đơn giản trong vai trò là một khách hàng
									đặt mua sách bình thường chia sẻ lại kinh nghiệm thực tế nhất
									giúp các bạn có cái nhìn toàn diện khi mua hàng cũng như đánh
									giá Nobita.</p>
								<div class="post__time">
									<span class="day">18/10/2019</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"
													style="color: #007bff"></i>52</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"
													style="color: #007bff"></i>12</a></li>
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
								<p>Tôi mua tương đối nhiều hàng từ nobita, việc đổi trả và
									bảo hành khá tốt !. Hy vọng nobita sẽ ngày càng phát triển hơn
									nữa trong tương lai. Tôi nghĩ rằng nobita làm được và số lượng
									khách hàng sẽ tăng lên đáng kể.</p>
								<div class="post__time">
									<span class="day">30/10/2019</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love"
													style="color: #007bff"></i>42</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble"
													style="color: #007bff"></i>7</a></li>
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
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {
				myIndex = 1
			}
			x[myIndex - 1].style.display = "block";
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
			if (n > x.length) {
				slideIndex = 1
			}
			if (n < 1) {
				slideIndex = x.length
			}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-white", "");
			}
			x[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " w3-white";
		}
	</script>
	<script>
		$("#slideshow > div:gt(0)").hide();

		setInterval(function() {
			$('#slideshow > div:first').fadeOut(1000).next().fadeIn(1000).end()
					.appendTo('#slideshow');
		}, 3000);
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