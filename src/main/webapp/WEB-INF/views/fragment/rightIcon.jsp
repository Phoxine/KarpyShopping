<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<!-- style css -->
<link rel="stylesheet" href="<c:url value="/css/style.css" />"
	type="text/css" />
		<link rel="stylesheet" href="<c:url value="/css/all.css" />"
	type="text/css" />
			<link rel="stylesheet" href="<c:url value="/css/font-awesome.min.css" />"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/vendor/modernizr-2.8.3.min.js"></script>
	
	 <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
</head>
<body>
	<div class="link_area">
		<div class="container">
			<div class="row">
				<div class="social_design on_right">
					<ul>
						<li><a style="background-color: #db4a39" target="_blank" href="cartConfirm"> <span>
									<i class="fa fa-shopping-cart"></i> <span class="social-text">購物車</span>
									
							</span>
						</a></li>
						<li><a class="twitter" target="_blank" href="membercentre"> <span>
									<i class="fa fa-user"></i> <span class="social-text">會員中心</span>
							</span>
						</a></li>
						<li><a style="background-color:#007799" target="_blank" href="memberQandA"> <span>
									<i class="fa fa-neuter"></i> <span class="social-text">常見問題</span>
							</span>
						</a></li>
								<li><a class="mail-to" target="_blank"
							href="#"> <span> <i
									class="fa fa-envelope-o"></i> <span class="social-text">寄信給卡痞</span>
							</span>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>