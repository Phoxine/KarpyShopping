<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta charset="UTF-8">
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/css/styles.css'
	type="text/css" />
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Members</title>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>信用卡清單</h1>

			</div>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">
	<section class="container">
		<div class="row">
			<c:forEach var="card" items='${creditCard}'>
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail" style="width: 320px; height: 340px">
						<div class="caption">
							<p>
								<b style='font-size: 16px;'>信用卡名稱 : ${card.cname}</b>
							</p>
							<a href="<spring:url value='CreditCard?cId=${card.cId}'/>"
								class="btn btn-primary"> <span
								class="glyphicon-info-sigh glyphicon"></span>詳細資料

							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>
