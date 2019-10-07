<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>

<html class="no-js" lang="en">
<head>
<!-- <meta charset="utf-8"> -->
<!-- <meta http-equiv="x-ua-compatible" content="ie=edge"> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- all css here -->
<!-- bootstrap v3.3.6 css -->

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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>

<script type="text/javascript">
	// 	function searchByF(){
	// 	$.ajax({
	// 		type: 'POST',
	// 		url: "getProductsBy",
	// 		data: "searchBy="+$("#searchBy").val(),
	// 		dataType: "text",
	// 		success: function(response) {

	// 		},
	// 		error: function(jqXHR, textStatus, errorThrown) {},
	// 	});
	// 	}
</script>


</head>

<%
	response.setHeader("Pragma", "no-cache");
	response.addHeader("Cache-Control", "must-revalidate");
	response.addHeader("Cache-Control", "no-cache");
	response.addHeader("Cache-Control", "no-store");
	response.setDateHeader("Expires", 0);
%>

<body>
	<!-- TOP -->
	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />

	<jsp:include page="/WEB-INF/views/fragment/header.jsp" />

	<!-- TOP END -->


	<!--slider area start-->
	<section class="slider-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="bend niceties preview-2">
						<div id="ensign-nivoslider" class="slides">

							<img alt="" title="#slider-caption-1"
								src="<c:url value="/images/slider/x11logo.jpg"  />"> <img
								alt="" title="#slider-caption-2"
								src="<c:url value="/images/slider/dyson.png" />">
						</div>
						<!-- direction 1 -->
						<div id="slider-caption-1"
							class="t-cn slider-direction slider-one">
							<div class="slider-progress"></div>
							<div class="tld-f1">
								<div class="layer-1-1 animated fadeInDown">
									<h1>$37900</h1>
								</div>
								<div class="layer-1-2 animated flipInX">
									<h2>$34110</h2>
								</div>
								<div class="layer-1-3 animated rotateInUpLeft">
									<h1 style="color: #FFFFFF;">Iphone X11</h1>
								</div>
								<div class="layer-1-4  animated rotateInUpLeft">
									<h3 style="color: red;">SALE UP TO 10%</h3>
								</div>
								<div class="layer-1-5 animated rotateInUpLeft">
									<a href="<spring:url value='productById02?pId=107'/>">點我下單</a>
								</div>
							</div>
							<div class="tld-f2">
								<div class="layer-1-6 animated zoomIn">

									<img src="<c:url value="/images/slider/xrlogo1.png"/>">
								</div>
							</div>
						</div>
						<!-- direction 2 -->
						<div id="slider-caption-2" class="slider-direction slider-two">
							<div class="slider-progress"></div>
							<div class="sld-fl">
								<div class="layer-2-1 animated fadeInLeftBig">
									<h1>$21840</h1>
								</div>
								<div class="layer-2-2 animated slideInLeft">
									<h2>$16800</h2>
								</div>
								<div class="layer-2-3 animated slideInLeft">
									<h1>Dyson吸塵機器人</h1>
								</div>
								<div class="layer-2-4 animated slideInLeft">
									<h3>SALE UP TO 30%</h3>
								</div>
								<div class="layer-2-5 animated bounceInUp">
									<a href="<spring:url value='productById02?pId=145'/>">點我下單</a>
								</div>
							</div>
							<div class="sld-fr">
								<div class="layer-2-6 animated zoomIn">
									<img src="<c//:url value="/images/slider/dyson.logo.png"/>">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--slider area end-->
	<!--social design arae start-->
	<!-- 右邊的那一條 -->
	<jsp:include page="/WEB-INF/views/fragment/rightIcon.jsp" />

	<!--social design arae end-->

	<!-- 左邊那一條 -->

	<!--about us area-->
	<div class="about_us_area">
		<div class="about_main">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="about_all">
							<div class="single_about">
								<div class="about_icon">
									<span class="fa fa-truck"></span>
								</div>
								<div class="about_content">
									<div class="about_text">免運活動中</div>
									<div class="about_prgph">全館不管消費金額多少，運費皆由卡痞購物買單！</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="about_all">
							<div class="single_about">
								<div class="about_icon">
									<span class="fa fa-history"></span>
								</div>
								<div class="about_content">
									<div class="about_text">全台24小時到貨</div>
									<div class="about_prgph">
										限定商品，全台24小時內到貨<br>(偏遠地區除外)
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="about_all">
							<div class="single_about">
								<div class="about_icon">
									<span class="fa fa-lock"></span>
								</div>
								<div class="about_content">
									<div class="about_text">限量商品熱賣中</div>
									<div class="about_prgph">
										限量商品到貨，熱賣搶購中！<br>售完為止。
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--about us end-->
	<!--product area start-->
	<section class="product_area">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-sm-9">
					<div class="all_product animated fadeInUp">
						<div class="new_product">
							<div class="product_heading">
								<i class="fa fa-play-circle"></i> <span>新貨商品</span>
							</div>
						</div>


						<c:forEach var="product01" items='${products}' begin="2" end="2">
							<div class="row">
								<div class="whole_product indicator-brand">
									<div class="col-md-12">
										<div class="all-pros animated fadeInUp">
											<div class="single_product">
												<span>New</span>
											</div>
											<div class="sinle_pic">
												<a
													href="<spring:url value='productById02?pId=${product01.pId}'/>">
													<img class="primary-img"
													src="data:image/jpg;base64,${product01.base64Image}" alt="">
													<img class="secondary-img"
													src="data:image/jpg;base64,${product01.base64Image1}"
													alt="">
												</a>
											</div>


											<div class="product_content">
												<div class="usal_pro">
													<div class="product_name_2">
														<h2>
															<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>
													<div class="price_box">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
													<div class="last_button_area">
														<ul class="add-to-links clearfix">
															<li class="addwishlist">
																<div class="yith-wcwl-add-button show">
																	<a class="add_to_wishlist" href="" rel="nofollow"
																		data-product-id="45" data-product-type="external"
																		data-toggle="tooltip" title=""
																		data-original-title="Add to Wishlist"><i
																		class="fa fa-heart"></i></a>
																</div>
															</li>
															<li>
																<div class="new_act">
																	<a class="button_act" data-quick-id="45"
																		href="<spring:url value='productById02?pId=${product01.pId}'/>"
																		title="" data-toggle="tooltip"
																		data-original-title="Donec non est at">詳細頁面</a>
																</div>
															</li>
															<li class="addcompare">
																<div class="woocommerce product compare-button">
																	<a class="compare button" href="" data-product_id="45"
																		rel="nofollow" data-toggle="tooltip" title=""
																		data-original-title="Compare"><i
																		class="fa fa-refresh"></i></a>
																</div>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
						</c:forEach>
						<c:forEach var="product01" items='${products}' begin="1" end="1">
							<div class="col-md-12">
								<div class="all-pros all-pros-2 animated fadeInUp">
									<div class="single_product">
										<span>New</span>
									</div>
									<div class="sinle_pic">
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro">
											<div class="product_name_2">
												<h2>
													<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
												</h2>
											</div>
											<div class="product_price"></div>
											<div class="price_box">
												<span class="spical-price">商品價錢 : ${product01.price}</span>
											</div>
											<div class="last_button_area">
												<ul class="add-to-links clearfix">
													<li class="addwishlist">
														<div class="yith-wcwl-add-button show">
															<a class="add_to_wishlist" href="" rel="nofollow"
																data-product-id="45" data-product-type="external"
																data-toggle="tooltip" title=""
																data-original-title="Add to Wishlist"><i
																class="fa fa-heart"></i></a>
														</div>
													</li>
													<li>
														<div class="new_act">
															<a class="button_act" data-quick-id="45"
																href="<spring:url value='productById02?pId=${product01.pId}'/>"
																title="" data-toggle="tooltip"
																data-original-title="Donec non est at">詳細頁面</a>
														</div>
													</li>
													<li class="addcompare">
														<div class="woocommerce product compare-button">
															<a class="compare button" href="" data-product_id="45"
																rel="nofollow" data-toggle="tooltip" title=""
																data-original-title="Compare"><i
																class="fa fa-refresh"></i></a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<c:forEach var="product01" items='${products}' begin="3" end="3">
							<div class="col-md-12">
								<div class="all-pros all-pros-3 animated fadeInUp">
									<div class="single_product">
										<span>New</span>
									</div>
									<div class="sinle_pic">
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro">
											<div class="product_name_2">
												<h2>
													<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
												</h2>
											</div>
											<div class="price_box">
												<span class="<spical-></spical->price">商品價錢 :
													${product01.price}</span>
											</div>
											<div class="last_button_area">
												<ul class="add-to-links clearfix">
													<li class="addwishlist">
														<div class="yith-wcwl-add-button show">
															<a class="add_to_wishlist" href="" rel="nofollow"
																data-product-id="45" data-product-type="external"
																data-toggle="tooltip" title=""
																data-original-title="Add to Wishlist"><i
																class="fa fa-heart"></i></a>
														</div>
													</li>
													<li>
														<div class="new_act">
															<a class="button_act" data-quick-id="45"
																href="<spring:url value='productById02?pId=${product01.pId}'/>"
																title="" data-toggle="tooltip"
																data-original-title="Donec non est at">詳細頁面</a>
														</div>
													</li>
													<li class="addcompare">
														<div
															class="woocommerce                                                       product compare-button">
															<a class="compare button" href="" data-product_id="45"
																rel="nofollow" data-toggle="tooltip" title=""
																data-original-title="Compare"><i
																class="fa fa-refresh"></i></a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<c:forEach var="product01" items='${products}' begin="4" end="4">
							<div class="col-md-12">
								<div class="all-pros all-pros-4 animated fadeInUp">
									<div class="single_product single_product_2">
										<span>hot</span>
									</div>
									<div class="single_product_3 ">
										<span>sale</span>
									</div>
									<div class="sinle_pic">
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro">
											<div class="product_name_2">
												<h2>
													<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
												</h2>
											</div>

											<div class="price_box">
												<span class="<spical-></spical->price">商品價錢 :
													${product01.price}</span>
											</div>
											<div class="last_button_area">
												<ul class="add-to-links clearfix">
													<li class="addwishlist">
														<div class="yith-wcwl-add-button show">
															<a class="add_to_wishlist" href="" rel="nofollow"
																data-product-id="45" data-product-type="external"
																data-toggle="tooltip" title=""
																data-original-title="Add to Wishlist"><i
																class="fa fa-heart"></i></a>
														</div>
													</li>
													<li>
														<div class="new_act">
															<a class="button_act" data-quick-id="45"
																href="<spring:url value='productById02?pId=${product01.pId}'/>"
																title="" data-toggle="tooltip"
																data-original-title="Donec non est at">詳細頁面</a>
														</div>
													</li>
													<li class="addcompare">
														<div
															class="woocommerce                                                       product compare-button">
															<a class="compare button" href="" data-product_id="45"
																rel="nofollow" data-toggle="tooltip" title=""
																data-original-title="Compare"><i
																class="fa fa-refresh"></i></a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
						<c:forEach var="product01" items='${products}' begin="5" end="5">
							<div class="col-md-12  animated fadeInUp">
								<div class="all-pros all-pros-5">
									<div class="single_product">
										<span>New</span>
									</div>
									<div class="sinle_pic">
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro">
											<div class="product_name_2">
												<h2>
													<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
												</h2>
											</div>

											<div class="price_box">
												<span class="spical-price"> 商品價錢 : ${product01.price}</span>
											</div>
											<div class="last_button_area">
												<ul class="add-to-links clearfix">
													<li class="addwishlist">
														<div class="yith-wcwl-add-button show">
															<a class="add_to_wishlist" href="" rel="nofollow"
																data-product-id="45" data-product-type="external"
																data-toggle="tooltip" title=""
																data-original-title="Add to Wishlist"><i
																class="fa fa-heart"></i></a>
														</div>
													</li>
													<li>
														<div class="new_act">
															<a class="button_act" data-quick-id="45"
																href="<spring:url value='productById02?pId=${product01.pId}'/>"
																title="" data-toggle="tooltip"
																data-original-title="Donec non est at">詳細頁面</a>
														</div>
													</li>
													<li class="addcompare">
														<div class="woocommerce product compare-button">
															<a class="compare button" href="" data-product_id="45"
																rel="nofollow" data-toggle="tooltip" title=""
																data-original-title="Compare"><i
																class="fa fa-refresh"></i></a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<c:forEach var="product01" items='${products}' begin="6" end="6">
			<div class="col-md-3 col-sm-12">

				<div class="cosmetc_area">
					<div class="cosmatics_heading">
						<h3 class="cosmatics_products">
							<i class="fa fa-tags"></i> <span>熱銷商品</span>
						</h3>
					</div>

					<div class="row">
						<div class="new_cosmatic indicator-brand indicator-brand-2">

							<div class="col-md-12">

								<div class="all-pros all-pros-8 animated fadeInUp">
									<div class="single_product_3 ">
										<span>sale</span>
									</div>
									<div class="sinle_pic">
										<a
											href="<spring:url value='productById02?pId=${product01.pId}'/>">
											<img class="primary-img"
											src="data:image/jpg;base64,${product01.base64Image}" alt="">
											<img class="secondary-img"
											src="data:image/jpg;base64,${product01.base64Image1}" alt="">
										</a>
									</div>

									<div class="product_content">
										<div class="usal_pro usal_pro_eb">
											<div class="product_name_2">
												<h2>
													<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
												</h2>
											</div>

											<div class="price_box price_box_dgr">
												<span class="spical-price">商品價錢 : ${product01.price}</span>
											</div>
											<div class="count-down-area">
												<div style="float: left; margin-left: 30px;">
													<span id=demo></span>
													<p>Days</p>
												</div>
												<div style="float: left; margin-left: 30px;">
													<span id=demo1></span>
													<p>Hour</p>
												</div>
												<div style="float: left; margin-left: 30px;">
													<span id=demo2></span>
													<p>Min</p>
												</div>
												<div style="float: left; margin-left: 30px;">
													<span id=demo3></span>
													<p>Sec</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
		</c:forEach>
		<c:forEach var="product01" items='${products}' begin="7" end="7">
			<div class="col-md-12">
				<div class="all-pros all-pros-8 animated fadeInUp">
					<div class="single_product_3 ">
						<span>sale</span>
					</div>
					<div class="sinle_pic">
						<a href="<spring:url value='productById02?pId=${product01.pId}'/>">
							<img class="primary-img"
							src="data:image/jpg;base64,${product01.base64Image}" alt="">
							<img class="secondary-img"
							src="data:image/jpg;base64,${product01.base64Image1}" alt="">
						</a>
					</div>

					<div class="product_content">
						<div class="usal_pro usal_pro_eb">
							<div class="product_name_2">
								<h2>
									<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
								</h2>
							</div>

							<div class="price_box price_box_dgr">
								<span class="spical-price">商品價錢 : ${product01.price}</span>
							</div>
							<div class="count-down-area">
								<div style="float: left; margin-left: 30px;">
									<span id=demo4></span>
									<p>Days</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo5></span>
									<p>Hour</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo6></span>
									<p>Min</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo7></span>
									<p>Sec</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<c:forEach var="product01" items='${products}' begin="8" end="8">
			<div class="col-md-12">
				<div class="all-pros all-pros-8 animated fadeInUp">
					<div class="single_product_3 ">
						<span>sale</span>
					</div>
					<div class="sinle_pic">
						<a href="<spring:url value='productById02?pId=${product01.pId}'/>">
							<img class="primary-img"
							src="data:image/jpg;base64,${product01.base64Image}" alt="">
							<img class="secondary-img"
							src="data:image/jpg;base64,${product01.base64Image1}" alt="">
						</a>
					</div>

					<div class="product_content">
						<div class="usal_pro usal_pro_eb">
							<div class="product_name_2">
								<h2>
									<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
								</h2>
							</div>

							<div class="price_box price_box_dgr">
								<span class="spical-price">商品價錢 : ${product01.price}</span>
							</div>
							<div class="count-down-area">
								<div style="float: left; margin-left: 30px;">
									<span id=demo8></span>
									<p>Days</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo9></span>
									<p>Hour</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo10></span>
									<p>Min</p>
								</div>
								<div style="float: left; margin-left: 30px;">
									<span id=demo11></span>
									<p>Sec</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>
	</section>

	<!--product area end-->
	<!--plus area start-->
	<div class="plus_area">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="plus_pic">
						<div class="pix_new coupon_pic">
							<a class="coupon-1"> <img
								src="<c:url value="/images/differ-pic/1.jpg" />" alt="">
							</a>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="plus_pic">
						<div class="pix_new coupon_pic">
							<a class="coupon-2"> <img
								src="<c:url value="/images/differ-pic/differ_pic_5.jpg" />"
								alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--plus area end-->
	<!--product catagory area start-->
	<div class="catagory_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="visible_product">
						<div class="new_product">
							<div class="product_heading">
								<i class="fa fa-star"></i> <span>男性專區</span>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12 text-right">
					<div class="my-tabs">
						<!-- Nav tabs -->
						<ul class="favtabs" role="tablist">
							<li role="presentation" class="active"><a href="#home"
								aria-controls="home" role="tab" data-toggle="tab">衣物</a></li>
							<li role="presentation"><a href="#profile"
								aria-controls="profile" role="tab" data-toggle="tab">3C/手錶</a></li>
							<!-- 							<li role="presentation"><a href="#messages" -->
							<!-- 								aria-controls="messages" role="tab" data-toggle="tab">Headlight</a></li> -->
						</ul>
						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="home">
								<div class="row">
									<div class="feature-carousel indicator-brand-3">

										<c:forEach var="product01" items='${products}' begin="22"
											end="22">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
																</h2>
															</div>

															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>

										<c:forEach var="product01" items='${products}' begin="44"
											end="44">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
																</h2>
															</div>

															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="product01" items='${products}' begin="1"
											end="1">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
																</h2>
															</div>

															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="product01" items='${products}' begin="60"
											end="60">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
																</h2>
															</div>

															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="product01" items='${products}' begin="58"
											end="58">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
																</h2>
															</div>

															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
										<c:forEach var="product01" items='${products}' begin="59"
											end="59">
											<div class="col-md-12">
												<div class="all-pros animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
																</h2>
															</div>

															<div class="price_box">
																<span class="spical-price"> 商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div
																			class="woocommerce product                                               compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>

							<c:forEach var="product01" items='${products}' begin="62"
								end="62">
								<div role="tabpanel" class="tab-pane" id="profile">
									<div class="row">
										<div class="feature-carousel indicator-brand-3">
											<div class="col-md-12">
												<div class="all-pros all-pros-2 animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
																</h2>
															</div>

															<div class="price_box">
																<span class="spical-price">商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div class="woocommerce product compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="63"
								end="63">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
													</h2>
												</div>

												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="64"
								end="64">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
													</h2>
												</div>

												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="111"
								end="111">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
													</h2>
												</div>

												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="113"
								end="113">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
													<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
													</h2>
												</div>

												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="112"
								end="112">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
													</h2>
												</div>

												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="117"
								end="117">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
													</h2>
												</div>

												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="122"
								end="122">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
													</h2>
												</div>

												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="130"
								end="130">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
														<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
													</h2>
												</div>

												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="product01" items='${products}' begin="120"
								end="120">
								<div class="col-md-12">
									<div class="all-pros all-pros-3 animated fadeInUp">
										<div class="single_product">
											<span>New</span>
										</div>
										<div class="sinle_pic">
											<a
												href="<spring:url value='productById02?pId=${product01.pId}'/>">
												<img class="primary-img"
												src="data:image/jpg;base64,${product01.base64Image}" alt="">
												<img class="secondary-img"
												src="data:image/jpg;base64,${product01.base64Image1}" alt="">
											</a>
										</div>

										<div class="product_content">
											<div class="usal_pro">
												<div class="product_name_2">
													<h2>
													<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
													</h2>
												</div>

												<div class="price_box">
													<span class="spical-price">商品價錢 : ${product01.price}</span>
												</div>
												<div class="last_button_area">
													<ul class="add-to-links clearfix">
														<li class="addwishlist">
															<div class="yith-wcwl-add-button show">
																<a class="add_to_wishlist" href="" rel="nofollow"
																	data-product-id="45" data-product-type="external"
																	data-toggle="tooltip" title=""
																	data-original-title="Add to Wishlist"><i
																	class="fa fa-heart"></i></a>
															</div>
														</li>
														<li>
															<div class="new_act">
																<a class="button_act" data-quick-id="45"
																	href="<spring:url value='productById02?pId=${product01.pId}'/>"
																	title="" data-toggle="tooltip"
																	data-original-title="Donec non est at">詳細頁面</a>
															</div>
														</li>
														<li class="addcompare">
															<div class="woocommerce product compare-button">
																<a class="compare button" href="" data-product_id="45"
																	rel="nofollow" data-toggle="tooltip" title=""
																	data-original-title="Compare"><i
																	class="fa fa-refresh"></i></a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	<!--catagory area end-->
	<!--differ pic area start-->
	<div class="differ_pic">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="plus_pic">
						<div class="pix_new">
							<a href="#"> <img
								src="<c:url value="/images/differ-pic/differ_pic_1.jpg" />"
								alt="">

							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="plus_pic">
						<div class="pix_new">
							<a href="#"> <img
								src="<c:url value="/images/differ-pic/differ_pic_2.jpg" />"
								alt="">

							</a>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="plus_pic">
						<div class="pix_new">
							<a href="#"> <img
								src="<c:url value="/images/differ-pic/differ_pic_3.jpg" />"
								alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--differ pic area end-->
	<!--product catagory area start-->
	<div class="catagory_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="visible_product">
						<div class="new_product">
							<div class="product_heading">
								<i class="fa fa-star"></i> <span>女性專區</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<c:forEach var="product01" items='${products}' begin="21" end="21">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12 text-right">
						<div class="my-tabs">
							<!-- Nav tabs -->

							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="elec">
									<div class="row">
										<div class="feature-carousel indicator-brand-3">
											<div class="col-md-12">
												<div class="all-pros all-pros-2 animated fadeInUp">
													<div class="single_product">
														<span>New</span>
													</div>
													<div class="sinle_pic">
														<a
															href="<spring:url value='productById02?pId=${product01.pId}'/>">
															<img class="primary-img"
															src="data:image/jpg;base64,${product01.base64Image}"
															alt=""> <img class="secondary-img"
															src="data:image/jpg;base64,${product01.base64Image1}"
															alt="">
														</a>
													</div>

													<div class="product_content">
														<div class="usal_pro">
															<div class="product_name_2">
																<h2>
																	<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
																</h2>
															</div>

															<div class="price_box">
																<span class="spical-price">商品價錢 :
																	${product01.price}</span>
															</div>
															<div class="last_button_area">
																<ul class="add-to-links clearfix">
																	<li class="addwishlist">
																		<div class="yith-wcwl-add-button show">
																			<a class="add_to_wishlist" href="" rel="nofollow"
																				data-product-id="45" data-product-type="external"
																				data-toggle="tooltip" title=""
																				data-original-title="Add to Wishlist"><i
																				class="fa fa-heart"></i></a>
																		</div>
																	</li>
																	<li>
																		<div class="new_act">
																			<a class="button_act" data-quick-id="45"
																				href="<spring:url value='productById02?pId=${product01.pId}'/>"
																				title="" data-toggle="tooltip"
																				data-original-title="Donec non est at">詳細頁面</a>
																		</div>
																	</li>
																	<li class="addcompare">
																		<div class="woocommerce product compare-button">
																			<a class="compare button" href=""
																				data-product_id="45" rel="nofollow"
																				data-toggle="tooltip" title=""
																				data-original-title="Compare"><i
																				class="fa fa-refresh"></i></a>
																		</div>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</div>
											</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="4" end="4">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
									<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
									</h2>
								</div>

								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="39" end="39">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
									<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
									</h2>
								</div>

								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="40" end="40">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
										<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
									</h2>
								</div>

								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="41" end="41">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
									<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
									</h2>
								</div>

								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach var="product01" items='${products}' begin="42" end="42">
				<div class="col-md-12">
					<div class="all-pros all-pros-3 animated fadeInUp">
						<div class="single_product">
							<span>New</span>
						</div>
						<div class="sinle_pic">
							<a
								href="<spring:url value='productById02?pId=${product01.pId}'/>">
								<img class="primary-img"
								src="data:image/jpg;base64,${product01.base64Image}" alt="">
								<img class="secondary-img"
								src="data:image/jpg;base64,${product01.base64Image1}" alt="">
							</a>
						</div>

						<div class="product_content">
							<div class="usal_pro">
								<div class="product_name_2">
									<h2>
										<a href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
									</h2>
								</div>

								<div class="price_box">
									<span class="spical-price">商品價錢 : ${product01.price}</span>
								</div>
								<div class="last_button_area">
									<ul class="add-to-links clearfix">
										<li class="addwishlist">
											<div class="yith-wcwl-add-button show">
												<a class="add_to_wishlist" href="" rel="nofollow"
													data-product-id="45" data-product-type="external"
													data-toggle="tooltip" title=""
													data-original-title="Add to Wishlist"><i
													class="fa fa-heart"></i></a>
											</div>
										</li>
										<li>
											<div class="new_act">
												<a class="button_act" data-quick-id="45"
													href="<spring:url value='productById02?pId=${product01.pId}'/>"
													title="" data-toggle="tooltip"
													data-original-title="Donec non est at">詳細頁面</a>
											</div>
										</li>
										<li class="addcompare">
											<div class="woocommerce product compare-button">
												<a class="compare button" href="" data-product_id="45"
													rel="nofollow" data-toggle="tooltip" title=""
													data-original-title="Compare"><i class="fa fa-refresh"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	<!--catagory area end-->
	<!--lumia area start-->
	<div class="lumia_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="plus_pic">
						<div class="pix_new">

							<a href="#"> <img
								src="<c:url value="/images/differ-pic/RAZER.jpg" />"
								alt="">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--lumia area end-->
	<!--top rate area start-->
	<div class="top_rate_area">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-12">
					<div class="rate-extra">
						<div class="new_product">
							<div class="product_heading">
								<i class="fa fa-shopping-bag"></i> <span>排名商品</span>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="all_ayntex indicator-brand-4">
							<div class="nyx_top_rte">
								<c:forEach var="product01" items='${products}' begin="0" end="0">
									<div class="col-md-12  ">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class="sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>

											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new price_box_new_3">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="1" end="1">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price"> 商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="2" end="2">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="3" end="3">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="4" end="4">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price"> 商品價錢 :
															${product01.price}</span>
													</div>

												</div>

											</div>

										</div>

									</div>
								</c:forEach>
							</div>

							<div class="nyx_top_rte">
								<c:forEach var="product01" items='${products}' begin="5" end="5">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class="sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>

												</div>

											</div>

										</div>

									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="6" end="6">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="7" end="7">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="8" end="8">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="9" end="9">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>

										</div>
									</div>
								</c:forEach>
							</div>

							<div class="nyx_top_rte">
								<c:forEach var="product01" items='${products}' begin="10"
									end="10">
									<div class="col-md-12  ">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class="sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new price_box_new_3">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="11"
									end="11">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="12"
									end="12">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<c:forEach var="product01" items='${products}' begin="13"
									end="13">
									<div class="col-md-12">
										<div class="all-pros-ex animated fadeInUp">
											<div class="llc_pro">
												<div class=" sinle_pic sinle_pic_2">
													<a
														href="<spring:url value='productById02?pId=${product01.pId}'/>">
														<img class="primary-img"
														src="data:image/jpg;base64,${product01.base64Image}"
														alt=""> <img class="secondary-img"
														src="data:image/jpg;base64,${product01.base64Image1}"
														alt="">
													</a>
												</div>
											</div>
											<div class="product_content_2">
												<div class="usal_pro">
													<div class=" product_name_new">
														<h2>
															<a
																href="<spring:url value='productById02?pId=${product01.pId}'/>">${product01.pname}</a>
														</h2>
													</div>

													<div class="price_box price_box_new">
														<span class="spical-price">商品價錢 :
															${product01.price}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>

						</div>

					</div>
				</div>

				<!--  end -->
				<div class="col-md-9 col-sm-12">
					<div class="haxico_main haxico_main_grf">
						<div class="fchered_area">
							<div class="new_product">
								<div class="product_heading">
									<i class="fa fa-list-ol"></i> <span>精選分類</span>
								</div>
							</div>
						</div>
						<div class="chard_ex_al">
							<div class="row">
								<div class="achard_all indicator-brand indicator-brand-5">
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">

												<img
													src="<c:url value="/images/featured-pic/blog_pic_1.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a
														href="<spring:url value='getProductsByCategory?searchBy=流行服飾'/>">流行服飾</a>
												</h3>
											</div>
											<a
												href="<spring:url value='getProductsByCategory?searchBy=流行服飾'/>"
												class="view_button">看我看更多</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img
													src="<c:url value="/images/featured-pic/f_pix_2.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a
														href="<spring:url value='getProductsByCategory?searchBy=3C產品'/>">3C產品</a>
												</h3>
											</div>
											<a
												href="<spring:url value='getProductsByCategory?searchBy=3C產品'/>"
												class="view_button">看我看更多</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img
													src="<c:url value="/images/featured-pic/f_pix_3.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a
														href="<spring:url value='getProductsByCategory?searchBy=精品名錶'/>">精品名錶</a>
												</h3>
											</div>
											<a
												href="<spring:url value='getProductsByCategory?searchBy=精品名錶'/>"
												class="view_button">看我看更多</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img
													src="<c:url value="/images/featured-pic/f_pix_1.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a
														href="<spring:url value='getProductsByCategory?searchBy=日常用品'/>">日常用品</a>
												</h3>
											</div>
											<a
												href="<spring:url value='getProductsByCategory?searchBy=日常用品'/>"
												class="view_button">看我看更多</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img src="<c:url value="/images/featured-pic/0.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a
														href="<spring:url value='getProductsByCategory?searchBy=飾品'/>">飾品</a>
												</h3>
											</div>
											<a
												href="<spring:url value='getProductsByCategory?searchBy=飾品'/>"
												class="view_button">看我看更多</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img src="<c:url value="/images/featured-pic/112234.jpg" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a
														href="<spring:url value='getProductsByCategory?searchBy=食品'/>">食品</a>
												</h3>
											</div>
											<a
												href="<spring:url value='getProductsByCategory?searchBy=食品'/>"
												class="view_button">看我看更多</a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="fchered_item">
											<div class="fechered_pix">
												<img src="<c:url value="/images/featured-pic/112232.png" />"
													alt="">
											</div>
											<div class="fechered_heading">
												<h3>
													<a
														href="<spring:url value='getProductsByCategory?searchBy=居家安全'/>">居家安全</a>
												</h3>
											</div>
											<a
												href="<spring:url value='getProductsByCategory?searchBy=居家安全'/>"
												class="view_button">看我看更多</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="blog">
								<div class="new_product">
									<div class="product_heading">
										<i class="fa fa-comments"></i> <span>部落客推薦</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="blog_carasel indicator-brand indicator-brand-6">
							<div class="col-md-12">
								<div class="blog_next">
									<div class="blog_thumb">

										<iframe width="280px" height="200px"
											src="https://www.youtube.com/embed/XY8oNoYRoxA"
											frameborder="0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">【電獺少女】Apple Watch Series 4 值不值得買？開箱體驗告訴你！</a>
										</h3>
										<div class="post-excerpt">
											● 內建 GPS 與 GLONASS <br>● 雙核心處理器 <br>● W3 無線晶片 <br>●
											容量 16GB <br>● 心率感測器 <br>● Ion-X 強化玻璃 😄 <br>●
											ISO 22810:2010 標準的防水 50 公尺等級
										</div>
										<a href="<spring:url value='productById02?pId=109'/>"> <span
											class="readmore-text">點此看商品</span>
										</a>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="blog_next">
									<div class="blog_thumb">
										<iframe width="280px" height="200px"
											src="https://www.youtube.com/embed/qfZz1DC051E"
											frameborder="0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>

									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">【滴妹】終於換新手機了！iPhoneXR上手一個月心得！</a>
										</h3>
										<div class="post-excerpt">
											● 6.1 吋 Liquid Retina 顯示器<br>● IP67 等級防潑抗水與防塵功能<br>●
											1200 萬像素相機 <br> ●
											700萬像素原深感測前置相機，均具備人像模式、人像光線、景深控制與智慧型HDR功能 <br>● Face
											ID，用於安全認證與 Apple Pay<br>● A12 仿生，具備新一代神經網路引擎
										</div>
										<a href="<spring:url value='productById02?pId=107'/>"> <span
											class="readmore-text">點此看商品</span>
										</a>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="blog_next">
									<div class="blog_thumb">
										<iframe width="280px" height="200px"
											src="https://www.youtube.com/embed/rNfCuPMpy20"
											frameborder="0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">【3C老實說】Dyson V7 Trigger：繼承 Dyson V8 靈魂的中階機種</a>
										</h3>
										<div class="post-excerpt">
											● 動態負載感應器，根據不同地板改變馬達速度 <br> ● 最新V11數位馬達 每秒監測系統效能8000次 <br>●
											LCD螢幕 顯示效能、剩餘時間 <br>● 優化電力及使用強勁電池,吸力提升20%(與v10相比) <br>●
											可濾除99.97%微塵與過敏源
										</div>
										<a href="<spring:url value='productById02?pId=110'/>"> <span
											class="readmore-text">點此看商品</span>
										</a>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="blog_next">
									<div class="blog_thumb">
										<iframe width="280px" height="200px"
											src="https://www.youtube.com/embed/LuIvZVT_XAQ"
											frameborder="0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>
									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">【3C TIM哥】Apple New Airpods(2代)藍芽耳機升級開箱！</a>
										</h3>
										<div class="post-excerpt">●輕點一下可為Apple裝置進行設定<br>●輕點兩下可快速存取 Siri 功能<br>
										●置於充電盒中可快速充電<br>
										●豐富、高品質的音訊與聲音表現<br>
										●可於不同裝置間順暢切換使用
										</div>
										<a href="<spring:url value='productById02?pId=119'/>"> <span
											class="readmore-text">點此看商品</span>
										</a>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="blog_next">
									<div class="blog_thumb">
										<iframe width="280px" height="200px"
											src="https://www.youtube.com/embed/JKFhBU6UxrY"
											frameborder="0"
											allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
											allowfullscreen></iframe>

									</div>
									<div class="blog_info">
										<h3 class="post-title">
											<a href="#">【阿哲】我買了人生中第三台筆電 [#044]</a>
										</h3>
										<div class="post-excerpt">
										●Razer Blade 15承襲Blade系列筆電廣獲盛讚的外型設計<br>
										●簡潔的霧面黑搭配鋁金屬材質，打造出時尚和耐用度兼具的筆電<br>
										●2公分的厚度和2公斤的重量下，又搭載了高效能的硬體規格<br>
										●RazerBlade 15在外型與效能中找到一個完美的平衡點。</div>
										<a href="<spring:url value='productById02?pId=92'/>"> <span
											class="readmore-text">點此看商品</span>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--blog area end-->

	<!--newsletter area start-->
	<div class="all_news_letter">
		<div class="news_letter">
			<div class="news_middele">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="news_heading">
								<h3>newsletter</h3>
							</div>
							<div class="full_form">
								<form id="form-newsletter1" class="widget_wysija" method="post"
									action="#wysija">
									<p class="wysija-paragraph">
										<input name="wysija[user][email]"
											class="wysija-input validate[required,custom[email]]"
											title="Enter Your Mail..." placeholder="Enter Your Mail..."
											value="" id="form-validation-field-0" style="" type="text">
									</p>
									<input class="wysija-submit wysija-submit-field"
										src="<c:url value="/images/icon/btn.png"/>" value="Subscribe!"
										type="image">

								</form>
							</div>
						</div>
						<div class="col-md-6 col-xs-12">
							<div class="dxpt_area">
								<div class="news_right">
									<div class="news_heading news_heading_3">
										<h3 class="follow_mix">Contact us:</h3>
									</div>
									<ul class="social-icons" style="margin-right: 90px;">
										<li><a class="facebook social-icon" href="#" title=""
											target="_blank" data-toggle="tooltip"
											data-original-title="Facebook"> <i class="fa fa-facebook"></i>
										</a></li>
										<li><a class="google-plus social-icon" href="#" title=""
											target="_blank" data-toggle="tooltip"
											data-original-title="Google"> <i class="fa fa-google"></i>
										</a></li>
										<li><a class="social-icon instagram" href="#" title=""
											target="_blank" data-toggle="tooltip"
											data-original-title="instagram"> <i
												class="fa fa-instagram"></i>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--newsletter area end-->
	<!--footer top area start-->
	<jsp:include page="/WEB-INF/views/footer/footer.jsp" />

	<!--footer bottom area end-->
	<!--modal content start-->
	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-dialog-2">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<div class="modal-product">
						<div class="row">
							<div class="new_port new_port_2">
								<div class="port_pix">
									<img src="img/product-pic/product_pic_2.jpg" alt="">
								</div>
							</div>
							<div class="elav_titel elav_titel_2">
								<div class="elv_heading elv_heading_therteen">
									<h3>Donec non est at</h3>
								</div>
								<div class="elav_info">
									<div class="price_box price_box_pb">
										<span class="spical-price spical-price-nk">$250.00</span>
									</div>
									<form class="cart-btn-area cart-btn-area-dec" action="#">
										<a class="see-all" href="#">See all features</a><br> <input
											type="number" value="1">
										<button class="add-tocart add-tocart-2" type="submit">Add
											to cart</button>
									</form>
								</div>
								<div class="evavet_description evavet_description_dec">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Fusce posuere metus vitae arcu imperdiet, id aliquet ante
										scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
								</div>
								<div class="elavetor_social">
									<h3 class="widget-title">Share this product</h3>
									<br>
									<ul class="social-link social-link-bbt">
										<li><a class="fb" data-original-title="facebook" href="#"
											title="" data-toggle="tooltip"><i class="fa fa-facebook"></i></a></li>
										<li><a class="twit" data-original-title="twitter"
											href="#" title="" data-toggle="tooltip"><i
												class="fa fa-twitter"></i></a></li>
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
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--modal content end-->






	<!-- all js here -->
	<!-- jquery latest version -->

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
		$(document).ready(function() {
			var qualification = "${memberLoginOK}";

			//getCoupon 1
			$(".coupon-1").click(function() {
				//not login yet
				if (qualification == "") {
					alert("Please login first.");
					location.href = "memberLogin";
				} else {
					var data = {
						category : "流行服飾",
						discount : 0.8,
						expdate : "2100-01-30",
						token : "thankyou9527"
					}
					$.ajax({
						type : 'POST',
						url : "http://localhost:8080/KarpyShopping/getCoupon",
						data : data,
						dataType : "json",
						success : function(data) {
							alert(data.result);
							console.log('${sessionScope.requestURI}');//取得攔截前的uri
							//location.href = 'http://localhost:8080/KarpyShopping';
						},
						error : function(jqXHR, textStatus, errorThrown) {
							console.log("jqXHR: " + jqXHR);
							console.log("textStatus: " + textStatus);
							console.log("errorThrown: " + errorThrown);

						},
					});
				}
			});

			//getCoupon-2
			$(".coupon-2").click(function() {
				//not login yet
				if (qualification == "") {
					alert("Please login first.");
					location.href = "memberLogin";
				} else {
					var data = {
						category : "飾品",
						discount : 0.7,
						expdate : "2100-01-30",
						token : "FQ"
					}
					$.ajax({
						type : 'POST',
						url : "http://localhost:8080/KarpyShopping/getCoupon",
						data : data,
						dataType : "json",
						success : function(data) {
							alert(data.result);
							console.log('${sessionScope.requestURI}');//取得攔截前的uri
							//location.href = 'http://localhost:8080/KarpyShopping';
						},
						error : function(jqXHR, textStatus, errorThrown) {
							console.log("jqXHR: " + jqXHR);
							console.log("textStatus: " + textStatus);
							console.log("errorThrown: " + errorThrown);

						},
					});
				}
			});
		});
	</script>	
		
</body>
</html>


