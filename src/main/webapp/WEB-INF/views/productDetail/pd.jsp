<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Product</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">



<link rel="stylesheet"
	href="<c:url value="/productDetail/css/op04.css" />" type="text/css" />


<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />"
	type="text/css" />
<!-- animate css -->
<link rel="stylesheet" href="<c:url value="/css/animate.css" />"
	type="text/css" />
<!-- jquery-ui.min css -->
<link rel="stylesheet" href="<c:url value="/css/jquery-ui.min.css" />"
	type="text/css" />
<!-- meanmenu css -->
<link rel="stylesheet" href="<c:url value="/css/meanmenu.min.css" />"
	type="text/css" />
<!-- nivo slider css -->
<link rel="stylesheet" href="<c:url value="/css/nivo-slider.css" />"
	type="text/css" />
<link rel="stylesheet" href="<c:url value="/css/preview.css" />"
	type="text/css" />
<!-- owl.carousel css -->
<link rel="stylesheet" href="<c:url value="/css/owl.carousel.css" />"
	type="text/css" />
<!-- font-awesome css -->
<link rel="stylesheet"
	href="<c:url value="/css/font-awesome.min.css" />" type="text/css" />
<!-- style css -->
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<!-- responsive css -->
<link rel="stylesheet" href="<c:url value="/css/responsive.css" />"
	type="text/css" />
<!-- modernizr js -->

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<script type="text/javascript">
	let imgofon, imgsision, count = 0, a, flag = true;

	document.addEventListener("DOMContentLoaded", function() {
		imgofon = document.querySelectorAll("img.off,img.on");
		imgsision = document.querySelectorAll("img.no_side,img.side");
		document.getElementById("idpauseplay").addEventListener("click",
				idpauseplay);
		document.getElementById("idback").addEventListener("click", backf);
		document.getElementById("idnext").addEventListener("click", nextf);
	});

	function gif() {

		imgofon[count].className = "on";
		imgsision[count].className = "no_side";
		count++;
		if (count > 1)
			count = 0;
		imgofon[count].className = "off";
		imgsision[count].className = "side";
	}
	a = window.setInterval(gif, 1500);

	function idpauseplay() {
		if (flag) { // flag=true
			flag = false;
			window.clearInterval(a); //clearInterval 取消  setInterval() 设置的 timeout = 時間。
			document.getElementById("idpauseplay").src = "images/imagesPD/play.png";
		} else {
			flag = true;
			a = window.setInterval(gif, 1500);
			document.getElementById("idpauseplay").src = "images/imagesPD/pause.png";
		}
	}

	function backf() {
		imgofon[count].className = "on";
		imgsision[count].className = "no_side";
		count--;
		if (count < 0)
			count = 1;
		imgofon[count].className = "off";
		imgsision[count].className = "side";
		window.clearInterval(a);
	}
	function nextf() {
		imgofon[count].className = "on";
		imgsision[count].className = "no_side";
		count++;
		if (count > 1)
			count = 0;
		imgofon[count].className = "off";
		imgsision[count].className = "side";
		window.clearInterval(a);
	}
</script>

<style type="text/css">
.off {
	width: 360px;
	height: 360px;
}
</style>

<style>
.event {
	line-height:30px;
}
</style>

<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<body>

	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />

	<div class="shop_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="shop_menu shop_menu_2"></div>
				</div>
			</div>
		</div>
		<div class="elavator_area">
			<div class="container">
				<div class="row">




					<!-- 輪播牆 -->
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">

						<div class="bend niceties preview-2" style="margin-top: 0;">
							<div id="ensign-nivoslider" class="off">
								<img src="data:image/jpg;base64,${productImage}" id="img01">
								<img src="data:image/jpg;base64,${productImage1}" id="img01" />
							</div>
							<!-- direction 1 -->
							<div id="slider-caption-1"
								class="t-cn slider-direction slider-one">
								<div class="layer-1-6 animated zoomIn">
									<img src="<c:url value=""/>">
								</div>
							</div>
						</div>
						<!-- direction 2 -->
						<div id="slider-caption-2" class="slider-direction slider-two">
							<div class="slider-progress"></div>
							<div class="sld-fl"></div>
						</div>
					</div>
					<!-- 輪播牆 -->

					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="elav_titel">
							<div class="elv_heading">
								<h1>${product.pname}</h1>

							</div>
							<div class="price_rating">
								<a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a href="#"> <i class="fa fa-star"></i>
								</a> <a class="not-rated" href="#"> <i class="fa fa-star-o"></i>
								</a> <a class="review-link" href="#"> ( <span class="count">2</span>
									customer reviews)
								</a>
							</div>
						</div>
						<div
							style="background-color: #DDDDDD; width: 360px; height: 37px;">
							<h3 style="font-weight: 500;">售價: ${product.price}</h3>
						</div>
						<div class="evavet_description">
							<h4 class="event">
								商品介紹:<br>${product.detail}</h4>
						</div>



						<div class="elavetor_social">

							<div class="evavet_description">
								<h4>供應商: ${product.vendorBean.vname}</h4>

							</div>

							<div class="price_box price_box_acr">
								<!-- <span class="old- price old- price-2">${product.price}打折</span> -->

								<p>商品分類: ${product.category}</p>
								<%-- 							<p>商品編號:  ${product.pId}</p> --%>
								<p>庫存: ${product.amount}</P>
							</div>
							<form id="cartForm" class="cart-btn-area" method="POST"
								enctype="multipart/form-data">
								<input type="number" name="quantity" id="quantity" min="1"
									max="99" value="1" style="width: 80px" />
								<%--                                 <input id="productId" name="pId" type="hidden" value="${product.pId }"/> --%>
								<%--                                 <input id="productName" name="pname" type="hidden" value="${product.pname }"/> --%>
								<%--                                 <input id="productPrice" name="price" type="hidden" value="${product.price }"/> --%>
								<%--                                 <input id="productVId" name="vId" type="hidden" value="${product.vId }"/> --%>
								<!--                                 <input id="productCategory" name="category" path="category" type="hidden"/>  -->
								<button id="cartBtn" class="add-tocart cart_zpf" type="submit">加入購物車</button>
							</form>


						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="elav_info">
						<!-- 						<div class="price_box price_box_acr"> -->
						<!-- 							<span class="old- price old- price-2">${product.price}打折</span> -->
						<%-- 							<span class="spical-price spical-price-2">售價:${product.price}</span> --%>
						<%-- 							<p>商品分類: ${product.category}</p> --%>
						<%-- 							<p>商品編號: ${product.pId}</p> --%>
						<%-- 							<p>庫存: ${product.amount}</P> --%>
						<!-- 						</div> -->


						<jsp:include page="/WEB-INF/views/fragment/rightIcon.jsp" />



						<div class="add_defi">


							<ul class="social-link">
								<li><a class="fb" data-original-title="facebook" href="#"
									title="" data-toggle="tooltip"><i class="fa fa-facebook"></i></a></li>
								<li><a class="twit" data-original-title="twitter" href="#"
									title="" data-toggle="tooltip"><i class="fa fa-twitter"></i></a></li>
								<li><a class="pinter" data-original-title="pinterest"
									href="#" title="" data-toggle="tooltip"><i
										class="fa fa-pinterest"></i></a></li>
								<li><a class="google+" href="#" title="Google+"
									data-target="#productModal" data-toggle="tooltip"><i
										class="fa fa-google-plus"></i></a></li>
								<li><a class="lindin" href="#" title="LinkedIn"
									data-target="#productModal" data-toggle="tooltip"><i
										class="fa fa-linkedin"></i></a></li>
							</ul>
							<a href="#" data-original-title="Add to Wishlist"
								data-toggle="tooltip"> <i class="fa fa-heart another_icon"></i>
								加到最愛
							</a>
						</div>
						<!-- 						<div class="add_defi_2"> -->
						<!-- 							<a data-original-title="Compare" title="" data-toggle="tooltip" -->
						<!-- 								rel="nofollow" data-product_id="45" href=""><i -->
						<!-- 								class="fa fa-refresh another_icon"></i> Compare</a> -->
						<!-- 						</div> -->

					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />


	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/vendor/jquery-1.12.0.min.js"></script>


	<!-- bootstrap js -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

	<!-- nivo slider js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.nivo.slider.js"></script>


	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/home.js"></script>
	<!-- owl.carousel js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/owl.carousel.min.js"></script>

	<!-- meanmenu js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.meanmenu.js"></script>
	<!-- jquery-ui js -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery-ui.min.js"></script>

	<!-- easing js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.easing.1.3.js"></script>
	<!-- mixitup js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.mixitup.min.js"></script>
	<!-- jquery.countdown js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.countdown.min.js"></script>
	<!-- wow js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/wow.min.js"></script>
	<!-- popup js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.magnific-popup.min.js"></script>
	<!-- plugins js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/plugins.js"></script>
	<!-- main js -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/main.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery.timers.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/time.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							var qty = $("#quantity").val();
							$("#quantity").on("change", function() {
								qty = $(this).val();
								console.log("newQty=" + qty);
							});
							var pId = $
							{
								product.pId
							}
							;
							var pname = '${product.pname}';
							var price = $
							{
								product.price
							}
							;
							var vId = $
							{
								product.vId
							}
							;

							console.log(pId);
							console.log(price);
							console.log(vId);
							console.log(pname);
							console.log("qty=" + qty);
							var product = new Product(pId, pname, price, vId);
							var productAsJSON = JSON.stringify(product);
							console.log(productAsJSON);

							$("#cartBtn")
									.click(
											function(e) {

												$
														.ajax({
															type : "POST",
															data : productAsJSON,
															contentType : "application/json",
															url : "productById02?pId="
																	+ pId
																	+ "&qty="
																	+ qty,
															success : function(
																	data) {

																if (data
																		.hasOwnProperty("error")) {
																	var error = data["error"];
																	alert(error);
																	$(
																			"#quantity")
																			.val(
																					"1");
																	qty = 1;
																} else if (data
																		.hasOwnProperty("success")) {
																	var success = data["success"];
																	alert(success);
																	$(
																			"#quantity")
																			.val(
																					1);
																	qty = 1;
																} else if (data
																		.hasOwnProperty("login")) {
																	alert(data["login"]);
																	window.location.href = "<spring:url value='/memberLogin' />";
																}
															}
														});
												return false;
											});

						});

		function Product(pId, pname, price, vId) {
			this.pId = pId;
			this.pname = pname;
			this.price = price;
			this.vId = vId;

		}
	</script>
	<script type="text/javascript">
		var amount = $
		{
			product.amount
		};
		var value = document.getElementById("quantity").value;
		function amountVSquantity() {

			if (value > amount) {
				alert("庫存不足");
			}

		}
	</script>

</body>