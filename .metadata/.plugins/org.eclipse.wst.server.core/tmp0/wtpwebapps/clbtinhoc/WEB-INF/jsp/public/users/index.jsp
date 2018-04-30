<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="content-grids">
	<div class="col-md-12 content-main">
	<h1 class="title" style="text-align: center;">Thông tin cá nhân</h1>
	<hr>
		<c:if test="${param['msg'] eq 'update-success'}">
			<div class="alert alert-success alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Cập nhập thông tin thành công
			</div>
		</c:if>
			<c:if test="${param['msg'] eq 'update-error'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Cập nhập thông tin thất bại
			</div>
		</c:if>
		
		<c:if test="${param['msg'] eq 'password-success'}">
			<div class="alert alert-success alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Cập nhập mật khẩu thành công
			</div>
		</c:if>
			<c:if test="${param['msg'] eq 'password-error'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Cập nhập mật khẩu thất bại
			</div>
		</c:if>
		<div class="row">
			<div class="col-md-6 col-pad">
				<p>Họ và tên: ${objUser.lastname} ${objUser.firstname}</p>
				<p>Lớp: ${objUser.klass}</p>
				<p>Ngày tham gia: ${objUser.created_at}</p>
			</div>
			<div class="col-md-6 col-pad">
				<p>Email: ${objUser.email}</p>
				<p>Số điện thoại: ${objUser.phone}</p>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-centered" style="text-align: center;">
			<a href="${pageContext.request.contextPath}/cap-nhap-thong-tin"><img alt="Cập nhập" src='<c:url value="/resources/public/images/update.png"></c:url>'></a>
			</div>
		</div>
			<div class="clearfix"></div>
			
		</div>
	<div class="clearfix"></div>
</div>