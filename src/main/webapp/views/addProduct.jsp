<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file = "header1.jsp" %>
<%@ include file = "footer.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
<style>

input[type=text] {
    width: 100%;
    padding: 7px 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid black;
    border-radius: 5px;
}
input[type=button], input[type=submit]{
    background-color: #3794e5;
    border: none;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
input[type=reset] {
    background-color: #3794e5;
    border: none;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}

</style>
</head>
<body>
<div class="header">
  <a href="#default" class="logo"><img src="https://challengepost-s3-challengepost.netdna-ssl.com/photos/production/challenge_thumbnails/000/660/594/datas/original.png"  width=40 height=40 align="left">CAPSTORE</a>
  <div class="header-right">
    <a href='<c:url value="addProduct"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>Add</a>
    <a href='<c:url value="removeProduct"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>Remove</a>
    <a href='<c:url value="updateProduct"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>Update</a>
    <a href='<c:url value="getAllProducts"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>View Inventory</a>
    <a href='<c:url value="CustomerOrders"><c:param name="abc" value="${pageContext.request.userPrincipal.name}"/></c:url>'>Customer Orders</a>
    <a href='<c:url value="myProfilesuccess"><c:param name="merchantId" value="${pageContext.request.userPrincipal.name}"/></c:url>' data-toggle="tab">MyProfile</a>
  </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
		<div align="center">
			<form:form action="ProductSuccessPage/${merchantId}" method="post"
				modelAttribute="product">
				<table>
					<tr>
						<td>Product Name: <form:input path="productName" size="30" /></td>
						<td><form:errors path="productName" cssClass="error" /></td>

					</tr>
					<tr>
						<td>Brand:<form:input path="brand" size="30" /></td>
						<td><form:errors path="brand" cssClass="error" /></td>

					</tr>
					<tr>
						<td>Quantity: <form:input path="productQuantityAvailable"
								size="30" /></td>
						<td><form:errors path="productQuantityAvailable"
								cssClass="error" /></td>

					</tr>
					<tr>
						<td>Price: <form:input path="productPrice" size="30" /></td>
						<td><form:errors path="productPrice" cssClass="error" /></td>

					</tr>
					<tr>
						<td>Description:<form:input path="productDesc" size="30" /></td>
						<td><form:errors path="productDesc" cssClass="error" /></td>

					</tr>
					<%-- <tr>
						<td><form:input path="productImageURL" size="30" /></td>
						<td><form:errors path="productImageURL" cssClass="error" /></td>
					</tr>
					<tr>
						<td><form:input path="productBannerURL" size="30" /></td>
						<td><form:errors path="productBannerURL" cssClass="error" /></td>
					</tr> --%>
					<tr>
						<td>Status: <form:input path="productStatus" size="30" /></td>
						<td><form:errors path="productStatus" cssClass="error" /></td>

					</tr>
					<tr>
						<td>Category :<select id="dropdown">
								<option value="Select Category" selected>SelectCategory</option>
								<option value="Electronic Devices">Electronic Devices
								<option value="Clothing">Clothing
								<option value="Accessories">Accessories
								<option value="Books">Books
								<option value="Groceries">Groceries
						</select></td>
					</tr>
					<tr>
					<td>
					<br>
					
					</td>
					</tr>
					<tr>
						<td><input type="submit" name="submit" value="Add Product"></td>
						<td><input type="reset" name="reset" value="Reset"></td>
					</tr>
				</table>
			</form:form>
			<br/><br/><br/><br/>
		</div>
	
</body>
</html>

