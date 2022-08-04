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
    <title>Chính sách đổi trả</title>
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

    <link rel="stylesheet" href="<c:url value="/assets/user/css/plugins/styleform.css"/>" />
<style >

.er{
	color: red;
	display: block;
	padding: 5px 0px;
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

                        <nav class="bradcaump-content1">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item ">Hỗ trợ khách hàng</span>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Chính sách đổi trả</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
<div id="nd" style="background: white; width: 86%; margin-left: 5%;margin-top: -6%;margin-bottom: 3%" >
    <div class="c" ><h3><b>Đổi / Trả Hàng</b></h3></div>
    <div class="c1"><p>Trường hợp sách bị hư hỏng do quá trình vận chuyển hoặc Nobita giao nhầm/  không đúng với sách đặt mua, Nobita sẽ đổi sách mới hoặc hoàn trả tiền theo yêu cầu của Khách hàng. </p></div>
<div class="c2"><p>I. Điều kiện đổi - trả</p></div>
    <div class="c3"><p>1. Trường hợp sách bị hư hỏng do quá trình vận chuyển, Quý khách vui lòng chụp lại hình ảnh và gửi cho Nobita qua email hotro@nobita.vn hoặc inbox tại fanpage của Nobita.</p>
    </div>
        <div class="c4">
        <p>2. Trường hợp sách không đúng yêu cầu do Nobita giao nhầm/  không đúng với sách đặt mua, Quý khách có thể trả lại sản phẩm đã mua trong vòng 07 ngày kể từ khi nhận hàng khi thỏa mãn các điều kiện Sách không có dấu hiệu đã qua sử dụng, hoặc còn nguyên màn co của nhà sản xuất.</p>
    </div>
    <div class="c5"><p>II. Phương thức hoàn tiền:</p></div>
    <div class="c6"><p>Nobita sẽ hỗ trợ quý khách trả lại sản phẩm và không thu thêm bất kỳ chi phí nào. Quý khách vui lòng gửi hàng về Nobitatheo hướng dẫn từ nhân viên hỗ trợ để được hoàn phí vận chuyển.</p></div>
    <div class="c7"><p>Nobita sẽ tiến hành hoàn phí vận chuyển / hoàn tiền đơn hàng bằng phương thức chuyển khoản hoặc cấn trừ vào đơn hàng sau (nếu quý khách đồng ý). Thời gian hoàn tiền trong vòng 03 ngày kể từ ngày Quý khách cung cấp tài khoản nhận tiền hoàn.</p></div>
</div>

<%@include file="layouts/footer.jsp"%>	
    <!-- //Footer Area -->

</div>
<!-- //Main wrapper -->

<!-- JS Files -->

<!-- Google Map js -->
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
</body>
</html>