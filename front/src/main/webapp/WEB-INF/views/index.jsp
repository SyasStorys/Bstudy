<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath }" />

<spring:url var="css" value="/resources/css"/>
<spring:url var="js" value="/resources/js"/>
<spring:url var="img" value="/resources/img"/>
<spring:url var="vendor" value="/resources/vendor"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <!-- Title -->
    <title>Online Shopping - ${title }</title>
    
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${vendor}/bootstrap/css/bootstrap.min.css">
    
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${vendor}/font-awesome/css/font-awesome.min.css">
    
    <!-- owl carousel-->
    <link rel="stylesheet" href="${vendor}/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="${vendor}/owl.carousel/assets/owl.theme.default.css">
    
    <!-- 테마 stylesheet-->
    <link rel="stylesheet" href="${css}/style.default.css" id="theme-stylesheet">
    
    <!-- 커스텀 CSS-->
    <link rel="stylesheet" href="${css}/custom.css">
    
    <!-- 파비콘-->
    <link rel="shortcut icon" href="favicon.png">
    
    <!-- Bootstrap Datatable CSS -->
    <link href="${css }/dataTables.bootstrap4.css">
    
    <script>
    	window.contextRoot = '${contextRoot}'
    </script>
    
  </head>
<body>
    <!-- navbar-->
    <header class="header mb-5">
      <!-- *** TOPBAR *** -->
      <%@include file="./templates/header/topbar.jsp" %>
      <!-- TOPBAR End -->
      
      <!-- NAVBAR -->
      <%@include file="./templates/header/navbar.jsp" %>
      <!-- NAVBAR END -->
      
      <!-- SEARCH -->
      <%@include file="./templates/header/search.jsp" %>
      <!-- SEARCH END -->
    </header>
    
    
    <div id="all">
      <div id="content">
      	
      	<c:if test="${userClickHome == true }">
	      	<!-- SLIDER -->
	      	<%@include file="./templates/slider.jsp" %>  
	        
	        <!-- SLIDER END -->
	        <!-- *** ADVANTAGES HOMEPAGE *** -->
	        <%@include file="./templates/advantage.jsp" %>
	        <!-- *** ADVANTAGES END ***-->
	        
	        <!-- *** HOT PRODUCT SLIDESHOW *** -->
	        <%@include file="./templates/product_slideshow.jsp" %>
	        <!-- PRODUCT SLIDESHOW END -->
	        
	        <!-- *** GET INSPIRED *** -->
	        <%@include file="./templates/inspired.jsp" %>
	        <!-- *** GET INSPIRED END ***-->
	        <!-- *** BLOG HOMEPAGE *** -->
	        <%@include file="./templates/blog.jsp" %>
	        <!-- /.container-->
	        <!-- *** BLOG HOMEPAGE END ***-->
      	</c:if>
      	
      	
      	<c:if test="${userClickRegister == true }">
	      	<!-- Register -->
	      	<%@include file="./templates/user/register.jsp" %>  
	        <!-- Register END -->
      	</c:if>
      	
      	<c:if test="${userClickCategoryProducts == true}">
      		<%@include file="./templates/category/clothing.jsp" %>
      	</c:if>
      	
      </div>
    </div>
    
    <!-- *** FOOTER  ***-->
    <%@include file="./templates/footer.jsp" %>
    <!-- /#footer-->
    <!-- *** FOOTER END ***-->
    
    <!--
    *** COPYRIGHT ***
    _________________________________________________________
    -->
    <%@include file="./templates/copyright.jsp" %>
    <!-- *** COPYRIGHT END ***-->
    <!-- JavaScript files-->
    <script src="${vendor}/jquery/jquery.min.js"></script>
    <script src="${vendor}/popper.js/umd/popper.min.js"> </script>
    <script src="${vendor}/bootstrap/js/bootstrap.min.js"></script>
    <script src="${vendor}/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${vendor}/owl.carousel/owl.carousel.min.js"></script>
    <script src="${vendor}/owl.carousel2.thumbs/owl.carousel2.thumbs.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    
    <script src="${js}/jquery.dataTables.js"></script>
    <script src="${js}/dataTables.bootstrap4.js"></script>
    <script src="${js}/front.js"></script>
  </body>
</html>