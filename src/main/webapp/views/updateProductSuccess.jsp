<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file = "header1.jsp" %>
<%@ include file = "footer.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img src="https://challengepost-s3-challengepost.netdna-ssl.com/photos/production/challenge_thumbnails/000/660/594/datas/original.png"  width=40 height=40 align="left">CAPSTORE</a>
  <div class="header-right">
    <a href="addProduct">Add</a>
    <a href="removeProduct">Remove</a>
    <a href="updateProduct">Update</a>
    <a href="getAllProducts">View Inventory</a>
    <a href="">Customer Orders</a>
    <a href='<c:url value="myProfilesuccess"><c:param name="merchantId" value="${pageContext.request.userPrincipal.name}"/></c:url>' data-toggle="tab">MyProfile</a>
  </div>
</div>
<br>
<br>
<br>
<h1> ${product.productName} </h1>
<h1> ${product.productId} updated successfully</h1>
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