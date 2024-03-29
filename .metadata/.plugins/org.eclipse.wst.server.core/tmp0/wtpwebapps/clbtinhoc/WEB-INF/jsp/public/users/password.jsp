<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="content-grids">
	<div class="col-md-12 content-main">
	<h1 class="title" style="text-align: center;">Thay đổi mật khẩu</h1>
	<hr>
	<c:if test="${param['msg'] eq 'password-length'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Mật khẩu từ 6 đến 16 ký tự
			</div>
		</c:if>
			<c:if test="${param['msg'] eq 'password-confirm'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Xác nhận mật khẩu không đúng
			</div>
		</c:if>
		<div>
			<form action="${pageContext.request.contextPath}/thay-doi-mat-khau" method="post">
			<div class="col-lg-6 col-centered" >
				<input type="hidden" name="id" value="${objUser.id}">
				<div class="form-group">
					<label>Mật khẩu</label>
					<input type="password" class="form-control" name="password">
				</div>
					<div class="form-group">
					<label>Xác nhận mật khẩu</label>
					<input type="password" class="form-control" name="password_confirm">
				</div>
				<button type="submit" class="btn btn-default">Cập nhập</button>
			</div>
			</form>
		</div>
	</div>
	<div class="clearfix"></div>
</div>