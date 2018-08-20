<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file = "header1.jsp" %>
<%@ include file = "footer.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style >
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
button{
 
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

<br/><br/><br/><br/><br/><br/>
<div class="a" align="center">
<br>
<br>
<h1><font size="6" color="black">Change password</font></h1>

	<form action="changePasswordSuccess1/${merchantId}" method="post">
	 <table cellpadding="6" cellspacing="10" align="center">
		
		<tr>
			<td><font size="3" >Old Password</font></td>
			<td><input type="text" name="oldPassword"/></td>
		</tr>
		
		<tr>
			<td><font size="3">New Password</font></td>
			<td><input type="text" name="newPassword" /></td>
		</tr>
		
		<tr>
			<td><font size="3">Confirm New Password</font></td>
			<td><input type="text" name="confirmNewPassword" /></td>
		</tr>
		<tr>
			<td><font size="10"><input type="submit"class="button" name="submit" value="Change Password"/></font></td>
			<td><font size="10"><input type="reset" class="button"name="reset" value="Reset" /></font></td>
		</tr>
		
		</table>
<!-- 		<div style="bottom:5px;left:6px"> -->
<!-- 		<img src="https://www.drupal.org/files/Capgemini_Logo_2COL_RGB.png " size=10 /> -->
<!-- 		</div> -->
		</form>
		</div>
	<%@ include file = "footer.jsp" %>
</body>

</html>