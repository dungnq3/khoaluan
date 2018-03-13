<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Quản lý tài khoản</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Tài khoản <a style="float: right"
					href="${pageContext.request.contextPath}/admin/users/add">Thêm
					tài khoản</a>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Tài khoản</th>
								<th>Họ</th>
								<th>Tên</th>
								<th>Lớp</th>
								<th>Email</th>
								<th>Số điện thoại</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listUsers}" var="objUser">
								<tr>
									<td>${objUser.id}</td>
									<td>${objUser.username}</td>
									<td>${objUser.lastname}</td>
									<td>${objUser.firstname}</td>
									<td>${objUser.klass}</td>
									<td>${objUser.email}</td>
									<td>${objUser.phone}</td>
									<c:set var="editUrl"
										value="${pageContext.request.contextPath}/admin/users/edit/${objUser.id}"></c:set>
									<c:set var="delUrl"
										value="${pageContext.request.contextPath}/admin/users/del/${objUser.id}"></c:set>
									<td><a href="${editUrl}">Cập nhập</a> | <a
										onclick="return confirm('Xóa tài khoản này?')"
										href="${delUrl}">Xóa</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="text-center">
					<ul class="pagination">
						<c:forEach var="i" begin="1" end="${total}">
							<c:set var="url"
								value="${pageContext.request.contextPath}/admin/users?p=${i}"></c:set>
							<li><a href="${url}" title="">${i}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
