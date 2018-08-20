<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file = "header.jsp" %>
<style>
input[type=text] {
    width: 100%;
    padding: 7px 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid black;
    border-radius: 5px;
}
input[type=button], input[type=submit], input[type=reset] {
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
	<div align="center">
	<br>
	<br>
	<br>
	<br>
		<h1>Create Account</h1>
		<table cellpadding="4" cellspacing="2" align="center">
			<form:form action="merchantSignIn" method="post" modelAttribute="merchant">
				
				<tr>
					<td>Name:</td>
					<td><form:input path="merchantName" size="30" /></td>
					<td><form:errors path="merchantName" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Email:</td>
					<td><form:input path="email" size="30" /></td>
					<td><form:errors path="email" cssClass="error" /></td>
				</tr>

				<tr>
					<td>Password:</td>
					<td><form:input path="password" type ="password" size="30" /></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>

				<tr>
					<td>Mobile Number:</td>
					<td><form:input path="phoneNumber" size="30" /></td>
					<td><form:errors path="phoneNumber" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Merchant Type: </td>
					<td><input type = "radio" name = "type" value = "thirdparty"/>ThirdpartyMerchant<br/>
					<input type = "radio" name = "type" value = "direct"/>DirectMerchant</td>
				</tr>
				
				<tr>
					<td>Security Question:</td>
					<td><select name = "securityQuestion">
						<option value = "Please Select" selected>Please Select</option>
						<option value = "BirthPlace">What is your Birth Place?</option>
						<option value = "PetName">What is your pet name?</option>
						<option value = "schoolName">What is your School Name?</option>
					</select>
				</tr>
				
				<tr>
					<td>Security Answer:</td>
					<td><form:input path="securityAnswer" size="30" /></td>
					<td><form:errors path="securityAnswer" cssClass="error" /></td>
				</tr>
				
						
				<tr>
					
					<td><input type="submit" name="submit" value="register" />
					<td><input type="reset" name="submit" value="Clear Form" />
				</tr>
			</form:form>
		</table>
	</div>
	<%@ include file = "footer.jsp" %>
</body>
</html>