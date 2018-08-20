<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<%@ include file = "header1.jsp" %>
<%@ include file = "footer.jsp" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides { 
width:600px;
    height:500px;
    text-align:center;
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
<br/><br/><br/><br/><br/>
<div class="w3-content w3-section" style="max-width:500px; text-align:center;">
  <img class="mySlides" src="http://trulyhappylife.com/wp-content/uploads/2014/09/Selling-Products-Online-e1425709775329-1024x681.jpg" >
  <img class="mySlides" src="http://itvoir.com/wp-content/uploads/2016/09/shutterstock_217080976.jpg" style="width:100%">
  <img class="mySlides" src="http://www.topsbagonline.com/wp-content/uploads/2018/01/beauty2.jpg" style="width:100%">

</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
</body>
</html>	