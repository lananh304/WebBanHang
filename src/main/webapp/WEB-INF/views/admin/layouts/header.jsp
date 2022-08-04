<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
				<div class = "nav-side-menu">
					<div class = "brand"><a href = "#"><img  class = "img-responsive margin0auto" src="<c:url value="/assets/admin/images/nobitavn-103639.jpg"/>" height="343" width="800"/></a></div>
					<div class = "toggle-btn" data-toggle = "collapse" data-target = "#menu-content"></div>
					<div class = "menu-list">
						<ul id = "menu-content" class = "menu-content collapse">
							<li><a href = "<c:url value="/quantri"/>"><i class="fas fa-globe-americas" style="font-size: 17px"></i> Tổng quan</a></li>

							<li data-toggle = "collapse" data-target = "#product" class = "collapsed">
								<a href = "#"><i class="fas fa-cookie" style="font-size: 17px"></i>  Sản phẩm<span class = "caret"></span></a>
							</li>
							<ul class = "sub-menu collapse" id = "product">
													<li><a href = "<c:url value="/danhmuc"/>"><i class="fas fa-folder-open"></i> Danh mục sản phẩm</a></li>
								<li><a href = "<c:url value="/plsanpham"/>"><span class = "glyphicon glyphicon-paperclip" aria-hidden = "true">&nbsp;</span>Tất cả sản phẩm</a></li>
		
							</ul>
							<li data-toggle = "collapse" data-target = "#media" class = "collapsed">
								<a href = "#"><i class="fas fa-file-invoice" style="font-size: 17px"></i>  Đơn hàng<span class = "caret"></span></a>
							</li>
							<ul class = "sub-menu collapse" id = "media">
								<li><a href = "<c:url value="/donhang"/>"><i class="fas fa-copy" style="font-size: 17px"></i>  Quản lý đơn hàng</a></li>

							</ul>
					<li><a href = "<c:url value="/taikhoan"/>"><i class="fas fa-users" style="font-size: 17px" ></i>  Quản lý tài khoản</a></li>

						</ul>
					</div>
				</div>
			</header>