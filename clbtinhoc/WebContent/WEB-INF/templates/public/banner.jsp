<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="banner">				
	 <div class="header">  
		  <div class="container">
			  <div class="logo">
					<a href="${pageContext.request.contextPath}/"> <img src='<c:url value="/resources/public/images/logo.png"></c:url>' title="soup" width="60px"/></a>
			 </div>
			 <!---start-top-nav---->
			 <sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_ACCESS_ADMIN')">
			 <div class="top-menu">
				  <span class="menu"> </span> 
				   <ul>				
						<li><a href="${pageContext.request.contextPath}/admin">Quản lý</a></li>	
						<div class="clearfix"> </div>
				 </ul>
			 </div>
			 </sec:authorize>
			 <div class="clearfix"></div>
					<script>
					$("span.menu").click(function(){
					$(".top-menu ul").slideToggle("slow" , function(){
					});
					});
					</script>
		 </div>
	 </div>
</div>