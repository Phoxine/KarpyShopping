<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<!-- style css -->
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>

<style>
	/* custom scrollbar  */
#new_cart_section::-webkit-scrollbar{
	width:0.5em;
}
#new_cart_section::-webkit-scrollbar-track{
	-webkit-box-shadow:inset 0 0 6px rgb(0,0,0,0,3);
	border-radius:10px;
}
#new_cart_section::-webkit-scrollbar-thumb{
	border-radius:10px;
	background-color:darkgrey;
	outline:1px solid slategrey;
}

</style>

<%
response.setHeader( "Pragma", "no-cache" );
response.addHeader( "Cache-Control", "must-revalidate" );
response.addHeader( "Cache-Control", "no-cache" );
response.addHeader( "Cache-Control", "no-store" );
response.setDateHeader("Expires", 0);
%>
<body>
		<!--header middle area start-->
	<div class="header_middle">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="logo_area">
						<a href="home"><img
							src="<c:url value="/images/logo-pic/logo.png" />" alt="image" /></a>
					</div>
				</div>
				<div class="col-md-9">
					<div class="header_all search_box_area">

						<form class="new_search" role="search" action="getProductsBy"
							method="POST">
							<input id="searchBy" class="search-field"
								placeholder="請輸入搜尋資料..." name="searchBy" title="Search for:"
								type="text"> <input id="searchBtn" value="Search"
								type="submit">
						</form>
						<div class="Test2">

							<ul>
								<li style="margin-left:70px">熱門☆</li>
								<c:forEach var="hot" items="${hotSearch}">
									<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=${hot.searchBy}'/>">${hot.searchBy}</a></li>
								</c:forEach>
<!-- 								<li><a href="#">美妝</a></li> -->
<!-- 								<li><a href="#">保健</a></li> -->
<!-- 								<li><a href="#">食品</a></li> -->
<!-- 								<li><a href="#">旅遊</a></li> -->
<!-- 								<li><a href="#">婦幼</a></li> -->
<!-- 								<li><a href="#">富田</a></li> -->
<!-- 								<li><a href="#">姊妹</a></li> -->
<!-- 								<li><a href="#">NYKD54</a></li> -->
<!-- 								<li><a href="#">3C</a></li> -->

							</ul>

						</div>
					</div>
					
					
					
					<div class="header_all shopping_cart_area">
							<div class="widget_shopping_cart_content">
								<div class="topcart">
									<c:choose>
									   <c:when test="${ShoppingCart.itemNumber == null || ShoppingCart.itemNumber == 0}">
											<a class="cart-toggler" href="<spring:url value='/cartConfirm'/>"> <img class="icon"
												src="<c:url value="/images/icon/icon_cart.png"/>"> <span
												class="my-cart">購物車</span> <span class="qty">尚無商品</span> <span
												class="fa fa-angle-down"></span>
											</a>
										</c:when>
										<c:otherwise>
											<a class="cart-toggler" href="<spring:url value='/cartConfirm'/>"> <img class="icon"
												src="<c:url value="/images/icon/icon_cart.png"/>"> <span
												class="my-cart">購物車</span> <span class="qty">${ShoppingCart.itemNumber}項商品</span> <span
												class="fa fa-angle-down"></span>
											</a>
										</c:otherwise>
									</c:choose>
								
									<div id="new_cart_section" class="new_cart_section">
										<ol class="new-list">
											<!-- single item -->
											
											<c:forEach varStatus="vs" var="anEntry" items="${ShoppingCart.content}">
												
											<li id="item${anEntry.value.productId}" class="wimix_area">
												<a class="pix_product" href="">
													<img alt="" src="<c:url value='/getPicture/${anEntry.value.productId}'/>">
												</a>
													<div class="product-details">
														<a href="<spring:url value='/productById02?pId=${anEntry.value.productId}'/>">${anEntry.value.description}</a> <span class="unitPrice sig-price">${anEntry.value.quantity}×$${anEntry.value.unitPrice * anEntry.value.discount }元</span>
													</div>
													<div class="cart-remove">
														<input class="pId" type="text" value="${anEntry.value.productId}" hidden="hidden"> 
														<a class="action" href="#"> <i class="fa fa-close"></i></a>
													</div>
											 </li>
												
												</c:forEach>
											<!-- single item -->
										</ol>
										
									<!-- checkout btn -->
									<div class="checkOutDiv">	
									<c:choose>
										<c:when test="${ShoppingCart.itemNumber == null || ShoppingCart.itemNumber == 0}">
											<span>尚無商品</span>											
										</c:when>
										<c:otherwise>
											<div class="top-subtotal">
												總金額: <span class="totalPrice sig-price">$<fmt:formatNumber value="${ShoppingCart.subtotal}" pattern="#,###" /></span>
											</div>
											<div class="cart-button">
												<ul>
													<li><a href="<spring:url value='/cartConfirm'/>">前往購物車 
														<i class="fa fa-angle-right"></i></a>
													</li>
													
														<li><a href="<c:url value='/addOrder' />">前往結帳 
															<i class="fa fa-angle-right"></i></a>
														</li>											
												</ul>
											</div>
										  </c:otherwise>									
									</c:choose>
									</div>
									<!-- checkout btn -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
	<!--header footer area start 購物車結束-->
	<div class="all_menu_area">
		<div class="menu_inner">
			<div class="container">
				<div class="full_menu clearfix">
					<div class="new_menu">
						<div class="drp-menu">
							<div class="col-md-3 pr pl">
								<div class="all_catagories">
									<div class="enable_catagories">
										<i class="fa fa-bars"></i> <span>3C/精品分類區</span> <i
											class="fa fa-angle-down"></i>
									</div>
								</div>
								<div class="catagory_menu_area">
									<div class="catagory_mega_menu">
										<div class="cat_mega_start">
											<ul class="list">
												<li class="next_area"><a class="item_link" href="#">
														<i class="fa fa-television"></i> <span
														class="link_content"> <span class="link_text">
																電腦用品 <span class="link_descr">3C/桌機/筆電/電競相關產品 </span>
														</span>
													</span>
												</a>
													<ul class="electronics_drpdown">
														<li class="parent"><a href="#"></a>
															<div class="mega_menu">
																<div class="mega_menu_coloumn">
																	<ul>
																		<li><a href="#">電競產品</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=電競滑鼠 遊戲滑鼠'/>">電競滑鼠</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=電競桌機 電競筆電 '/>">電競電腦</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=麥克風 喇叭 HDMI 隨身碟 高速碟 '/>">電競周邊</a></li>
																	</ul>
																</div>
																<div class="mega_menu_coloumn">
																	<ul>
																		<li><a href="#">電腦/筆電</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=滑鼠 Mouse'/>">滑鼠</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=鍵盤'/>">鍵盤</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=筆電'/>">筆電</a></li>
																	</ul>
																</div>
																<div class="mega_menu_coloumn">
																	<ul>
																		<li class="mega_content"><a href="#">3C家電</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=吹風機 電烤盤 電鬍刀 洗衣機 氣泡水機 氣炸鍋 章魚燒機 咖啡機 烤箱  '/>">家電用品</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=Dyson'/>">Dyson系列</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=SAMSUNG'/>">三星產品</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=吹風機 電烤盤 電鬍刀 洗衣機 氣泡水機 氣炸鍋 章魚燒機 咖啡機 烤箱'/>">相關家電</a></li>
																	</ul>
																</div>
																<div class="mega_menu_coloumn">
																	<ul>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=方向盤 電視 '/>">數位周邊</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=喇叭 藍芽喇叭 '/>">喇叭/藍芽喇叭</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=繪圖 '/>">繪圖/手寫板</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=HDMI 紫米  '/>">電腦周邊/線材</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=隨身碟 高速碟 硬碟  '/>">隨身碟/硬碟</a></li>
																	</ul>
																</div>
															</div></li>
													</ul></li>
												<li class="differ_sec_area"><a class="item_link"
													href="#"> <i class="fa fa-mobile"></i> <span
														class="link_content"> <span class="link_text">
																手機周邊 <span class="link_descr">手機/耳機/蘋果/安卓周邊產品 </span>
														</span>
													</span>
												</a>
													<ul class="another_drop_menu">
														<li class="discrip"><a class="new_link_2 with_icon"
															href="#" tabindex="1">手機</a>
															<ul class="new_miup_menu">
																<li>
																	<ul class="new_mixup_tm">
																		<li class="exact"><a class=" with_icon" href="<spring:url value='getProductsByNoSearchCount?searchBy=iphone'/>">蘋果手機</a></li>
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=Galaxy'/>">安卓手機</a></li>
																	</ul>
																</li>
															</ul></li>
														<li class="risk"><a
															class="new_link_2 new_link_3 with_icon" href="#"
															tabindex="1">Apple周邊產品 </a>
															<ul class="new_miup_menu">
																<li>
																	<ul class="new_mixup_tm">
																		<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=Watch'/>">Apple Watch</a></li>
																	</ul>
																</li>
																<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=Airpods'/>">Air Pods</a></li>
															</ul></li>
														<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=Magic'/>">蘋果3C周邊</a></li>
														<li><a href="<spring:url value='getProductsByNoSearchCount?searchBy=紫米'/>">安卓3C周邊</a></li>
													</ul></li>
												<li class="differ_sec_area"><a class="item_link "
													href="#"> <i class="fa fa-heart"></i> <span
														class="link_content"> <span class="link_text">
																精品名錶 <span class="link_descr">精品錶/機械錶</span>
														</span>
													</span>
												</a>
													<ul class="another_drop_menu">
														<li class="discrip"><a
															class="new_link_2 new_link_4 with_icon" href="<spring:url value='getProductsByNoSearchCount?searchBy=SEIKO G-SHOCK 機械錶'/>">精品錶</a></li>
													</ul></li>
<!-- 												<li><a class="item_link item_link_2" href="#"> <i -->
<!-- 														class="fa fa-heart"></i> <span class="link_content"> -->
<!-- 															<span class="link_text"> 女性專區 <span -->
<!-- 																class="link_descr">精品名錶/皮夾/包/皮帶</span> -->
<!-- 														</span> -->
<!-- 													</span> -->
<!-- 												</a></li> -->

<!-- 												<li><a class="item_link item_link_2" href="#"> <i -->
<!-- 														class="fa fa-lightbulb-o"></i> <span class="link_content"> -->
<!-- 															<span class="link_text"> NYKD54 <span -->
<!-- 																class="link_descr">EEIT10804陳同學推薦專區</span> -->
<!-- 														</span> -->
<!-- 													</span> -->
<!-- 												</a></li> -->
<!-- 												<li class="cost-menu"><a class="item_link item_link_2" -->
<!-- 													href="#"> <i class="fa fa-pie-chart"></i> <span -->
<!-- 														class="link_content"> <span class="link_text"> -->
<!-- 																LEO <span class="link_descr">您今天LEO了嗎?</span> -->
<!-- 														</span> -->
<!-- 													</span> -->
<!-- 												</a></li> -->
<!-- 												<li class="showmore-items shwitm"><i -->
<!-- 													class="fa fa-plus-square-o"></i> <span>More -->
<!-- 														Categories</span></li> -->
											</ul>
										</div>
									</div>
								</div>
							</div>
							<!--menu area start-->
							<div class="col-md-9 pl">
								<div class="menu_area">
									<div class="menu1">
										<nav>
											<ul>
												<li><a href="<spring:url value='getProductsByCategory?searchBy=流行服飾'/>">流行服飾</a></li>
												<li><a href="<spring:url value='getProductsByCategory?searchBy=飾品'/>">飾品</a></li>
												<li><a href="<spring:url value='getProductsByCategory?searchBy=食品'/>">食品</a></li>
												<li><a href="<spring:url value='getProductsByCategory?searchBy=日常用品'/>">日常用品</a></li>
												<li><a href="<spring:url value='getProductsByCategory?searchBy=居家安全'/>">居家安全</a></li>
												<li><a href="<spring:url value='getProductsByCategory?searchBy=3C產品'/>">3C</a></li>
												<li><a href="<spring:url value='getProductsByCategory?searchBy=精品名錶'/>">精品名錶</a></li>
												<li><a href="<spring:url value='getProductsByCategory?searchBy=家電'/>">家電</a></li>
												<li><a href="<spring:url value='getProductsByCategory?searchBy=貼身衣物'/>">貼身衣物</a></li>

											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




<script>
	$(document).ready(function(){
		var counts = ${ShoppingCart.itemNumber};		
		if(counts > 4){
			$("#new_cart_section").css("overflow-y","auto");			
			$("#new_cart_section").css("max-height","400px");
			$("#new_cart_section").css("width","400px");
		}else{
			$("#new_cart_section").css("height","auto");
			$("#new_cart_section").css("width","400px");
		}		

		var cartTotal;
		var cartItems;
		
		function set_total(total,items){
			cartTotal = total;
			cartItems = items;
			
		}
		
		$(".action").on("click",function(){			
			var pId = $(this).closest("div").find(".pId").val();
			$.ajax({
				type:"GET",
				url:"cancelProductAJAJ?pId="+ pId,
				success:function(data){
// 					alert("success");
					$('#item' + pId).remove();
					console.log("total=" +data['total']);
					console.log("items=" +data['items']);
					set_total(data['total'],data['items']);
// 					alert(total)
					$('.totalPrice').text('$' + cartTotal);
					if(cartItems >0){
						$('.qty').text(cartItems + '項商品');							
					}else{
						$('.qty').text('尚無商品');
// 						$('.checkOutDiv').css("display",'none');
						$('.checkOutDiv').html('尚無商品');
					}
				}
			
			});			
					
		});
		
	
		
	});
	
</script>

</body>
</html>