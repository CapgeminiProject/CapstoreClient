<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

<title>CapStore Login</title>
<link href="/bootstrap.min.css" rel="stylesheet">
<script src="/jquery-2.2.1.min.js"></script>
<script src="/bootstrap.min.js"></script>
<%@ include file = "header.jsp" %>
<style>
input[type=button], input[type=submit], input[type=reset] ,input[type=hidden]{
    background-color: #3794e5;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
.button{

    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;}
.button1{
	 background-color: #3794e5;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
</style>
</head>
<body>
<!-- 	<div class="container" -->
<!-- 		style="margin: 50px; border: 1px solid green; align-content: center;"> -->
		<br>
		<br>
		<br>
		<h3 align="center">CapStore Login</h3>
		<c:if test="${param.error ne null}">
			<div style="color: red">Invalid credentials.</div>
		</c:if>
		<form action="login" method="post" >
			<div class="form-group1" align=center>
				<label for="username">UserName:</label> <input type="text"
					class="form-control" id="username" name="username">
			</div>
			<div class="form-group" align=center>
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pwd" name="password">
			</div>
		<div align=center class="button">
			<input type="submit" >Submit>
			
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
				<a href = "forgotpassword1">forgot password</a>
		</div>
		</form>
	
	<%@ include file = "footer.jsp" %>
</body>
</html>