<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/styles.css"
	type="text/css">
<title>UpdateOrders</title>
</head>
<body>
	<section>
		<div>
			<div class="container" style="text-align: center">
				<h1>更新訂單</h1>
			</div>
		</div>
	</section>
	<hr
		style="height: 1px; border: none; color: #333; background-color: #333;">

	<section class="container">
	<form:form modelAttribute="order" method="POST" accept-charset="UTF-8" enctype="multipart/form-data">
		<div class="row">
				<div class="col-sm-6 col-md-3" style="width: 360px; height: 360px">
					<div class="thumbnail" style="width: 320px; height: 340px">
						<div class="caption">
							<p>
								<b style='font-size: 16px;'>訂單編號:${order.oId}</b>
							</p>
				
							<p>會員:${order.memberBean.mId}</p>
							<p>日期:${order.odate}</p>
							<p>金額:${order.price}</p>
							<p>
								貨單號碼:
								<form:input id="shippingNo" path="shippingNo"  type="text"/>
							</p>						
							<p>運送狀態:
								<select id="status" name="status">								
									<option>未出貨</option>
									<option>已出貨</option>
								</select>
							</p>
<%-- 							<form:input id="status" path="status"  type="text"/></p> --%>
						
							<p>連絡電話:${order.tel}</p>
							<p>取貨人:${order.consignee}</p>
							<p>地址:${order.addr}</p>
							
							<p>
							<form:input id="oid" path="oId"  type="hidden"/>
							<form:input id="addr" path="addr"  type="hidden"/>
							<form:input id="consignee" path="consignee"  type="hidden"/>
							<form:input id="mId" path="mId" type="hidden"/>
							<form:input id="odate" path="odate"  type="hidden"/>
							<form:input id="price" path="price"  type="hidden"/>
							<form:input id="tel" path="tel"  type="hidden"/>
							
							
							
							</p>							
							
							<p>
								
								<a href="<spring:url value='${header.referer}' />"
									class="btn btn-default"> <span
									class="glyphicon-hand-left glyphicon"></span>返回
								</a>
								<a href="<spring:url value='/orderItemByOid?oId=${order.oId}' />"
									class="btn btn-primary"> <span
									class="glyphicon-info-sigh glyphicon"></span>詳細資料
								</a> 								

									<input class="btn btn-primary" id="btn" type="submit" value="確定"/>
							</p>

						</div>
					</div>
				</div>
		
		</div>
	</form:form>
	</section>
	
</body>
</html>
