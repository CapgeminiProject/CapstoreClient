<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="header1.jsp"%>
<%@ include file="footer.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
input[type=text] {
	width: 100%;
	padding: 7px 10px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 1px solid black;
	border-radius: 5px;
}

input[type=submit], input[type=reset] {
	background-color: #3794e5;
	border: none;
	color: white;
	padding: 10px 20px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

button {
	border: none;
	color: white;
	background-color: #f44242;
	padding: 10px 20px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="header">
		<a href="#default" class="logo"><img
			src="https://challengepost-s3-challengepost.netdna-ssl.com/photos/production/challenge_thumbnails/000/660/594/datas/original.png"
			width=40 height=40 align="left">CAPSTORE</a>
		<div class="header-right">
			<a
				href='<c:url value="addProduct"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>Add</a>
			<a
				href='<c:url value="removeProduct"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>Remove</a>
			<a
				href='<c:url value="updateProduct"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>Update</a>
			<a
				href='<c:url value="getAllProducts"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>View
				Inventory</a> <a
				href='<c:url value="CustomerOrders"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>Customer
				Orders</a> <a
				href='<c:url value="myProfilesuccess"><c:param name="merchantId" value="${pageContext.request.userPrincipal.name}"/></c:url>'
				data-toggle="tab">MyProfile</a>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<h1 align = "center">All Products</h1>

	<table cellpadding="2" cellspacing="2" border="1px solid black" align = "center">
		<tr>
			<th>Product Name</th>
			<th>Brand</th>
			<th>Description</th>
			<th>Price</th>
			<th>Quantity Available</th>
			<th>Status</th>
		</tr>
		<c:forEach items="${product}" var="product1">
					<tr>
						<td>${product1.productName}</td>
						<td>${product1.brand}</td>
						<td>${product1.productDesc}</td>
						<td>${product1.productPrice}</td>
						<td>${product1.productQuantityAvailable}</td>
						<td>${product1.productStatus}</td>
					</tr>
				</c:forEach>
	</table>

	<%-- <div class="container" style="margin: 50px">
		<div>
			<form action="/logout" method="post">
				<button type="submit" class="btn btn-danger">Log Out</button>
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div> --%>
</body>
</html>