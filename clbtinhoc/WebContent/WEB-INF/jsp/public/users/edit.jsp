<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="content-grids">
	<div class="col-md-12 content-main">
	<h1 class="title" style="text-align: center;">Cập nhập thông tin cá nhân</h1>
	<hr>
		<div>
			<form action="${pageContext.request.contextPath}/cap-nhap-thong-tin" method="post">
			<div class="col-lg-6 col-centered" >
				<input type="hidden" name="id" value="${objUser.id}">
				<div class="form-group">
					<label>Tên</label>
					<input type="text" class="form-control" name="firstname" value="${objUser.firstname}">
					<p style='color:red'><form:errors path="objUser.firstname"></form:errors></p>
				</div>
				<div class="form-group">
					<label>Họ</label>
					<input type="text" class="form-control" name="lastname" value="${objUser.lastname}">
					<p style='color:red'><form:errors path="objUser.lastname"></form:errors></p>
				</div>
				<div class="form-group">
					<label>Địa chỉ email</label>
					<input type="text" class="form-control" name="email" value="${objUser.email}">
					<p style='color:red'><form:errors path="objUser.email"></form:errors></p>
				</div>
				<div class="form-group">
					<label>Lớp</label>
					<input type="text" class="form-control" name="klass" value="${objUser.klass}">
				</div>
				<div class="form-group">
					<label>Số điện thoại</label>
					<input type="text" class="form-control" name="phone" value="${objUser.phone}">
					<p style='color:red'><form:errors path="objUser.phone"></form:errors></p>
				</div>
				<button type="submit" class="btn btn-default">Cập nhập</button>
			</div>
			</form>
		</div>
	</div>
	<div class="clearfix"></div>
</div>