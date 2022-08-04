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
    <title>Giới thiệu</title>
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

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" media="screen"
          href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.css"/>


<!--	Font awesome-->
<script src="https://kit.fontawesome.com/c25baca2b9.js"
	crossorigin="anonymous"></script>
<script src="<c:url value="/assets/user/js/swdslideshow.js"/>"></script>

    <link rel="stylesheet" href="<c:url value="/assets/user/css/plugins/styleform.css"/>" />
<style >
body{
background: white;
}
.er{
	color: red;
	display: block;
	padding: 5px 0px;
}
.de p {
margin-top:-318px;
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
   color: black
    
}
ul.ui-autocomplete.ui-menu li:first-child a{
    color:blue;
    
}


</style>

<script src="${pageContext.request.contextPath }/resources/js/jquery-1.4.2.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-ui-1.8.2.custom.js"></script>
<link
	href="${pageContext.request.contextPath }/resources/css/themes/base/jquery.ui.all.css"
	rel="stylesheet" type="text/css">
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
    <div class="ht__bradcaump__area" >
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="bradcaump__inner text-center">

                            <nav class="bradcaump-content">
                              <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                              <span class="brd-separetor">/</span>
                              <span class="breadcrumb_item active">Giới thiệu</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start About Area -->
        <div class="page-about about_area bg--white section-padding--lg">
        	<div class="container">
				<div class="row">
        			<div class="col-lg-12">
        				<div class="section__title--3 text-center pb--30">
        					<h2>Giới thiệu Nobita</h2>

        				</div>
        			</div>
        		</div>
			</div>
		</div>

					<div class="footer-feature">
						<div class="container">
							<div class='Module Module-219'><div class='ModuleContent'><div class="row">
								<div class="col-12 col-sm-6 col-md-3">
									<div class="feature-col">
								
										<div class="icon">
											<img src="<c:url value="/assets/user/images/icon-books.png"/>" height="50" width="50"/></div>
										<div class="caption">
											<div class="title2">HƠN 14.000 TỰA SÁCH HAY</div>
											<div class="des">Tuyển chọn bởi Nobita</div>
										</div>
									</div>
								</div>
								<div class="col-12 col-sm-6 col-md-3">
									<div class="feature-col">
										<div class="icon">
											<img src="<c:url value="/assets/user/images/icon-ship.png"/>" height="50" width="50"/></div>
										<div class="caption">
											<div class="title2">MIỄN PHÍ GIAO HÀNG </div>
											<div class="des">Từ 150.000đ ở TP.HCM<br />
												Từ 300.000đ ở tỉnh thành khác</div>
										</div>
									</div>
								</div>
								<div class="col-12 col-sm-6 col-md-3">
									<div class="feature-col">
										<div class="icon"><img src="<c:url value="/assets/user/images/icon-gift.png"/>" height="50" width="50"/>
										</div>
										<div class="caption">
											<div class="title2">QUÀ TẶNG MIỄN PHÍ</div>
											<div class="des">Tặng Bookmark<br />
												Bao sách miễn phí</div>
										</div>
									</div>
								</div>
								<div class="col-12 col-sm-6 col-md-3">
									<div class="feature-col">
										<div class="icon1"><img src="<c:url value="/assets/user/images/testimonial/icon-dt.png"/>" height="50"
															   width="50"/>
										</div>
										<div class="caption">
											<div class="title1">ĐỔI TRẢ NHANH CHÓNG</div>
											<div class="des1">Hàng bị lỗi được đổi trả nhanh <br> chóng</div>
										</div>
									</div>
								</div>
							</div></div></div>
						</div>
					</div>
		<div class="wn__addres__wreapper1">
		<div class="wn__addres__wreapper">

			<div id="ab" >
			<div class="single__address">
				<i class="icon-location-pin icons"></i>
				<div class="content1">
					<p>NHÀ SÁCH Nobita OFFLINE</p>
				</div>
				<div class="content2">
					<p>(hoạt động từ 8h - 21h mỗi ngày)</p>
					<p>99 Nguyễn Bỉnh Khiêm, Phường Đakao, Quận 1, TP. HCM</p>
				</div>
			</div>

			<div class="single__address">
				<i class="icon-phone icons"></i>
				<div class="content1">
					<p>Số điện thoại:</p>
				</div>
				<div class="content2">
					<p>028 7300 7684</p>
				</div>
			</div>

			<div class="single__address">
				<i class="icon-envelope icons"></i>
				<div class="content1">
					<p>Email :</p></div>
					<div class="content2">
					<p>hotro@nobita.com</p>
				</div>
			</div>
			</div>
			<!--        						<div class="single__address">-->
			<!--        							<i class="icon-globe icons"></i>-->
			<!--        							<div class="content">-->
			<!--        								<span>website address:</span>-->
			<!--        								<p>716-298-1822</p>-->
			<!--        							</div>-->
			<!--        						</div>-->

		</div>
		<div class=" ba" >
			<div class="de"><p>HỖ TRỢ KHÁCH HÀNG</p>
				<div class="to">
		<li><a href='<c:url value="/quydinh"/>'>Quy định sử dụng</a></li>
											<li><a href='<c:url value="/huongdan"/>'>Hướng dẫn đặt hàng</a></li>
											<li><a href='<c:url value="/phuongthuc"/>'>Phương thức thanh toán</a></li>
											<li><a href='<c:url value="/vanchuyen"/>'>Phương thức vận chuyển</a></li>
											<li><a href='<c:url value="/chinhsach"/>'>Chính sách đổi trả</a></li>
											<li><a href='<c:url value="/lienhe"/>'>Liên hệ</a></li>
				</div>
		</div>
		</div>
		<div class="ht">
			<div class="th"><p>HỢP TÁC VÀ LIÊN KẾT</p></div>
			<div class="ti"><img class="p1" src="<c:url value="/assets/user/images/dathongbao.png" />"height="67" width="170"/></div>
		</div>
		</div>

<%@include file="layouts/footer.jsp"%>	
    <!-- //Footer Area -->

</div>
<!-- //Main wrapper -->

<!-- JS Files -->

<!-- Google Map js -->


	<script
		src="<c:url value="/assets/user/js/vendor/jquery-3.2.1.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/popper.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/user/js/plugins.js"/>"></script>
	<script src="<c:url value="/assets/user/js/active.js"/>"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmGmeot5jcjdaJTvfCmQPfzeoG_pABeWo"></script>
<script>
    // When the window has finished loading create our google map below
    google.maps.event.addDomListener(window, 'load', init);

    function init() {
        // Basic options for a simple Google Map
        // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
        var mapOptions = {
            // How zoomed in you want the map to start at (always required)
            zoom: 12,

            scrollwheel: false,

            // The latitude and longitude to center the map (always required)
            center: new google.maps.LatLng(23.7286, 90.3854), // New York

            // How you would like to style the map.
            // This is where yu would paste anoy style found on Snazzy Maps.
            styles:
                [

                    {
                        "featureType": "administrative",
                        "elementType": "labels.text.fill",
                        "stylers": [
                            {
                                "color": "#444444"
                            }
                        ]
                    },
                    {
                        "featureType": "landscape",
                        "elementType": "all",
                        "stylers": [
                            {
                                "color": "#f2f2f2"
                            }
                        ]
                    },
                    {
                        "featureType": "poi",
                        "elementType": "all",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    },
                    {
                        "featureType": "road",
                        "elementType": "all",
                        "stylers": [
                            {
                                "saturation": -100
                            },
                            {
                                "lightness": 45
                            }
                        ]
                    },
                    {
                        "featureType": "road.highway",
                        "elementType": "all",
                        "stylers": [
                            {
                                "visibility": "simplified"
                            }
                        ]
                    },
                    {
                        "featureType": "road.arterial",
                        "elementType": "labels.icon",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    },
                    {
                        "featureType": "transit",
                        "elementType": "all",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    },
                    {
                        "featureType": "transit.station.bus",
                        "elementType": "labels.icon",
                        "stylers": [
                            {
                                "saturation": "-16"
                            }
                        ]
                    },
                    {
                        "featureType": "water",
                        "elementType": "all",
                        "stylers": [
                            {
                                "color": "#04b7ff"
                            },
                            {
                                "visibility": "on"
                            }
                        ]
                    }
                ]
        };

        // Get the HTML DOM element that will contain your map
        // We are using a div with id="map" seen below in the <body>
        var mapElement = document.getElementById('googleMap');

        // Create the Google Map using our element and options defined above
        var map = new google.maps.Map(mapElement, mapOptions);

        // Let's also add a marker while we're at it
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(23.7286, 90.3854),
            map: map,
            title: 'Dcare!',
            icon: 'images/icons/map.png',
            animation:google.maps.Animation.BOUNCE

        });
    }
</script>






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

		if (document.myForm.password.value == "") {
			showError('pass', 'Bạn không thể để trống dữ liệu này');
			document.myForm.password.focus();
			return false;
		} else {

			showError('pass', '');

		}

		if (document.myForm.password.value.length < 2) {
			showError('pass', 'Mật khẩu có ít nhất 3 kí tự.Thử lại');
			document.myForm.password.focus();
			return false;
		} else {

			showError('pass', '');

		}
		
		return (true);
	}
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


<!-- <script type="text/javascript"> -->

// $(document).ready(function() {
// 	$('#tags').autocomplete({
// 		 source: function( request, response ) {
//              $.ajax({
//             	 url : 'http://localhost:8080/WebBanSach/search'
//             		 dataType: "json",
//             		 data: {
//             			 term: request.term
//             			 },
//             			 success: function( data ) {
//             			 if(data.status == 1) // if data is available
//             			 response( data.data );
//             			 }
//             			 });
//             			 },
          
//                  });
//              },
// 	});
// });
<!-- </script> -->
<!-- <script type="text/javascript"> -->

// <script>
// $(document).ready(function () {
//     $('#tags').autocomplete({
//         source: 'http://localhost:8080/WebBanSach/search'
//     });
// });
<!-- </script> -->



</html>