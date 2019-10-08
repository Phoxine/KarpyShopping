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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery_3_4_1.js"></script>

<script>
	var total = ${totalPages};

	$(function() {
		console.log("ready!");

		//add select page option
		for (var i = 1; i <= total; i++) {
			$('#selectPage').append(
					'<option value="'+i+'">第' + i + '頁</option>');
		}
		//selected page
		$('#selectPage').val('${currentPageNo}');
		//select change page
		$('#selectPage').on('change', function() {
			window.location = "changePage?currentPageNo=" + $(this).val();
		});
	});
</script>
<style>
.navi_area::after {
	width: 0px;
}
</style>
<%
response.setHeader( "Pragma", "no-cache" );
response.addHeader( "Cache-Control", "must-revalidate" );
response.addHeader( "Cache-Control", "no-cache" );
response.addHeader( "Cache-Control", "no-store" );
response.setDateHeader("Expires", 0);
%>


</head>
<body>



	<!-- TOP -->
	<jsp:include page="/WEB-INF/views/fragment/top.jsp" />

	<jsp:include page="/WEB-INF/views/fragment/header.jsp" />

	<!-- TOP END -->
	<!--header area end-->

	<!--shop area start-->
	<div class="shop_area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="shop_menu">
						<ul class="cramb_area cramb_area_5">
							<li><a href="home">Home /</a></li>
							<li class="br-active"><a href="#">Shop</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!--bar area start-->


			<div class="row">
				<div class="col-md-12">
					<div class="bar">
						<p class="result_show">Showing ${(currentPageNo - 1) * 5 + 1} of ${listSize} results</p>
						<div class="bar_box" style="height: 50px">
							<form action="#">
<!-- 								<select> -->
<!-- 									<option value="Default sorting">Default sorting</option> -->
<!-- 																		<option value="Sort by popularity">Sort by popularity</option> -->
<!-- 																		<option value="Sort by average rating">Sort by average -->
<!-- 																			rating</option> -->
<!-- 																		<option value="Sort by newness">Sort by newness</option> -->
<!-- 																		<option value="Sort by price: low to high">Sort by -->
<!-- 																			price: low to high</option> -->
<!-- 																		<option value="Sort by price: low to low">Sort by -->
<!-- 																			price: low to low</option> -->
<!-- 								</select> -->
							</form>
						</div>

					</div>
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane" id="home">
							<div class="row"></div>
						</div>
						<div role="tabpanel" class="tab-pane active" id="profile">
					<c:if test="${empty resultPage}">
						<h1 style="text-align: center;">查無商品資料</h1>
						</c:if>
							<!--foreach start line -->
							<c:forEach var="product" items='${resultPage}'>
								<div class="row">
									<div class="col-md-12">
										<div class="all-pros br-ntf">
											<div class="row">

												<!-- picture -->
												<div class="col-md-4 col-sm-4 pl pr">
													<div class="sngl-pro">
														<div
															class="single_product single_product_2 single_product_3rd">
															<span>hot</span>
														</div>
														<div class="sinle_pic sngl-pc sinle_pic_2xd">
															<a
																href="<spring:url value='productById02?pId=${product.pId}'/>">
																<img style="height: 200px; width: auto; margin: 0 auto;"
																src="data:image/jpg;base64,${product.base64Image}"
																alt="" /> <!-- 									class="primary-img"							<img class="secondary-img" style="height:200px;width:auto;margin:0 auto;" -->
																<%-- 																src="data:image/jpg;base64,${product.base64Image1}" alt="" /> --%>
															</a>
														</div>
														<!-- 														<div class="product-action" data-toggle="modal" -->
														<!-- 															data-target="#myModal"> -->
														<!-- 															<button type="button" -->
														<!-- 																class="btn btn-info btn-lg quickview quickview_2" -->
														<!-- 																data-toggle="tooltip" title="Quickview">Quick -->
														<!-- 																View</button> -->
														<!-- 														</div> -->
													</div>
												</div>
												<!-- product name and detail -->
												<div class="col-md-8 col-sm-8 pl pr">
													<div class="product_content product_content_nx">
														<div class="usal_pro">
															<div class="product_name_2 product_name_3 prnm">
																<!-- product name -->
																<h2>
																	<a
																		href="<spring:url value='productById02?pId=${product.pId}'/>">
																		${product.pname}</a>
																</h2>
																<!-- product description -->
																<div class="pro_discrip">
																	<p>${product.detail}</p>
																</div>
															</div>
															<div class="action actionmm">
<!-- 																<div class="product_price product_price_tz"> -->
<!-- 																	<div class="price_rating"> -->
<!-- 																		<a href="#"><i class="fa fa-star"></i></a> <a href="#"><i -->
<!-- 																			class="fa fa-star"></i></a> <a href="#"> <i -->
<!-- 																			class="fa fa-star"></i> -->
<!-- 																		</a> <a href="#"> <i class="fa fa-star"></i> -->
<!-- 																		</a> <a href="#"> <i class="fa fa-star"></i> -->
<!-- 																		</a> <a href="#"> <i class="fa fa-star"></i> -->
<!-- 																		</a> <a href="#"> <i class="fa fa-star"></i> -->
<!-- 																		
<!-- 																			 </a> -->
<!-- 																	</div> -->
<!-- 																</div> -->
																<!-- price -->
																<div class="price_box price_box_tz">
																	<span class="spical-price">$ ${product.price}</span>
																</div>
																<div class="last_button_area">
																	<ul class="add-to-links clearfix">
																		<li>
																			<div class="new_act">
																				<%-- 																				<form:form modelAttribute="product" --%>
																				<%-- 																					class="cart-btn-area" method="POST" --%>
																				<%-- 																					enctype="multipart/form-data"> --%>
																				<!-- 																					<input type="number" name="quantity" id="quantity" -->
																				<!-- 																						value="1" /> -->
																				<%-- 																					<form:input name="pId" path="pId" type="hidden" /> --%>
																				<%-- 																					<form:input name="pname" path="pname" type="hidden" /> --%>
																				<%-- 																					<form:input name="price" path="price" type="hidden" /> --%>
																				<%-- 																					<form:input name="vId" path="vId" type="hidden" /> --%>
																				<%-- 																					<form:input name="category" path="category" --%>
																				<%-- 																						type="hidden" /> --%>
																				<!-- 																					<button class="button_act button_act_2 button_act_hts" -->
																				<!-- 																					data-quick-id="45"  -->
																				<!-- 																					data-toggle="tooltip" -->
																				<!-- 																					data-original-title="Donec non est at" type="submit">加入購物車</button> -->
																				<%-- 																				</form:form> --%>
																				<a class="button_act button_act_2 button_act_hts"
																					data-quick-id="45"
																					href="<spring:url value='productById02?pId=${product.pId}'/>"
																					title="" data-toggle="tooltip"
																					data-original-title="Donec non est at">詳細資料</a>
																			</div>
																		</li>
																		<li class="addwishlist">
																			<div class="yith-wcwl-add-button  show">
																				<a class="add_to_wishlist_3 add_to_wishlist_tz"
																					href="" rel="nofollow" data-product-id="45"
																					data-product-type="external" data-toggle="tooltip"
																					title="" data-original-title="Add to Wishlist"><i
																					class="fa fa-heart"></i></a>
																			</div>
																		</li>
																		<li class="addcompare">
																			<div class="woocommerce product compare-button">
																				<a class="compare_3 compare_3r button" href=""
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
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							<!-- foreach end line -->
							<jsp:include page="/WEB-INF/views/fragment/rightIcon.jsp" />
							<!-- change page -->

							<table border="1"
								style="margin-left: auto; margin-right: auto; margin-top: 20px;">
								<tr>
									<!-- first -->
									<td width='76'>
										<div id="pfirst">
											<c:if test="${currentPageNo > 1}">
												<a href="<spring:url value='changePage?currentPageNo=1' />">第一頁</a>
											</c:if>
											<c:if test="${currentPageNo == 1}">
												第一頁
											</c:if>
										</div>
									</td>
									<!-- previous -->
									<td width='76'>
										<div id="pprev">
											<c:if test="${currentPageNo > 1}">
												<a
													href="<spring:url value='changePage?currentPageNo=${currentPageNo-1}' />">上一頁</a>
											</c:if>
											<c:if test="${currentPageNo == 1}">
					上一頁
					</c:if>
										</div>
									</td>
									<!-- select -->
									<td width='76'>
										<div id="pselect">
											<select class="selectPage" id="selectPage">
											</select>
										</div>
									</td>

									<!-- next -->
									<td width='76'>
										<div id="pnext">
											<c:if test="${currentPageNo != totalPages}">
												<a
													href="<spring:url value='changePage?currentPageNo=${currentPageNo+1}' />">下一頁</a>
											</c:if>
											<c:if test="${currentPageNo == totalPages}">
					下一頁
					</c:if>
										</div>
									</td>
									<!-- last -->
									<td width='76'>
										<div id="plast">
											<c:if test="${currentPageNo != totalPages}">
												<a
													href="<spring:url value='changePage?currentPageNo=${totalPages}' />">最末頁</a>
											</c:if>
											<c:if test="${currentPageNo == totalPages}">
					最末頁
					</c:if>
										</div>
									</td>
									<td width='176' align="center">第${currentPageNo}頁
										/共${totalPages}頁</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br>
		<!--shop area end-->

		<!--newsletter area start-->

		<!--newsletter area end-->
		<jsp:include page="/WEB-INF/views/footer/footer.jsp" />
		<!--modal content start-->

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
</body>
</html>


