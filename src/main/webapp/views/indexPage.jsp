<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file = "header.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

input[type=button], input[type=submit], input[type=reset] {
    background-color: #3794e5;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
body {
   background-image: url("http://cdn.bemis.com/Bemis/media/Library/images/markets/dairy/integrapeel-video-background.png?ext=.png");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
	height:100%;
	background-blend-mode: lighten;
}
/* .div1{ */
     
/*      position: relative; */
/*      left: 490px; */
/*      background-color: #b3b3b3; */
/* 	 width: 500px; */
/*     border: 3px solid black; */
/*     padding: 25px; */
/*     margin: 25px; */
/* } */
/* td:nth-child(2) { */
/*     padding-right: 20px; */
/* }​ */
</style>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br><br>
<br>
<div align=center>
<font size="13" color="black"><b> Welcome to CapStore</b> </font>
<table cellspacing="20">
<tr>
<td><form action="SignIn">
    <font size="10"><input type="submit" value="SignUp" style="font-size : 20px; width: 100%; height: 50px;"  /></font>
</form>
</td>

<td><form action="login">
    <font size="3"><input type="submit" value="Login" style="font-size : 20px; width: 100%; height: 50px;" /></font>
</form>
</td>
</tr>

</table>

</div>
<div>
<marquee behavior="scroll" direction="right" vspace="15%">
<!--     <img src="http://cdn.bemis.com/Bemis/media/Library/images/markets/dairy/integrapeel-video-background.png?ext=.png" width="120" height="80" alt="W3docs" /> -->
  </marquee>
</div>
<%@ include file = "footer.jsp" %>
</body>
</html>