<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Quản lý tài khoản</h1>
		<c:if test="${param['msg'] eq 'add-success'}">
			<div class="alert alert-success alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Thêm thành công
			</div>
		</c:if>
		<c:if test="${param['msg'] eq 'edit-success'}">
			<div class="alert alert-success alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Cập nhập thành công
			</div>
		</c:if>
		<c:if test="${param['msg'] eq 'del-success'}">
			<div class="alert alert-success alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Xóa thành công
			</div>
		</c:if>
		<c:if test="${param['msg'] eq 'add-error'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Thêm không thành công
			</div>
		</c:if>
		<c:if test="${param['msg'] eq 'edit-error'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Cập nhập không thành công
			</div>
		</c:if>
		<c:if test="${param['msg'] eq 'del-error'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Xóa không thành công
			</div>
		</c:if>
		<c:if test="${param['msg'] eq 'access-denied'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Từ chối truy cập
			</div>
		</c:if>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<form class="search-form"
					action="${pageContext.request.contextPath}/admin/users/search">
					<input class="lastname" type="text" name="lastname"
						placeholder="Họ"> <input class="firstname" type="text"
						name="firstname" placeholder="Tên"> <input type="submit"
						value="Tìm kiếm">
				</form>
				<a style="float: right"
					href="${pageContext.request.contextPath}/admin/users/add">Thêm
					tài khoản</a>
			</div>

			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th style="text-align: center;">STT</th>
								<th>Tài khoản</th>
								<th>Họ và tên</th>
								<th>Chức vụ</th>
								<th>Email</th>
								<th>Số điện thoại</th>
								<th style="text-align: center;">Chức năng</th>
							</tr>
						</thead>
					<tbody>
							<c:forEach items="${listUsers}" var="objUser" varStatus="loop">
								<tr>
									<td style="text-align: center;">${loop.index + 1}</td>
									<td>${objUser.username}</td>
									<td>${objUser.lastname} ${objUser.firstname}</td>
									<td>${objUser.role}</td>
									<td>${objUser.email}</td>
									<td>${objUser.phone}</td>
									<c:set var="editUrl"
										value="${pageContext.request.contextPath}/admin/users/edit/${objUser.id}"></c:set>
									<c:set var="delUrl"
										value="${pageContext.request.contextPath}/admin/users/del/${objUser.id}"></c:set>
									<td style="text-align: center;"><c:choose>
											<c:when test="${objUser.role eq 'Chủ nhiệm'}">
											</c:when>
											<c:otherwise>
												<a href="${editUrl}"> <img
													src="<c:url value="/resources/admin/image/icon-update.png"/>"
													alt="Cập nhập" width="20" height="20" />
												</a>
											<c:if test="${objUser.id ne user.id}">
											| <a onclick="return confirm('Xóa tài khoản này?')"
													href="${delUrl}"> <img
													src="<c:url value="/resources/admin/image/icon-delete.png"/>"
													alt="Xóa" width="20" height="20" />
												</a>
											</c:if>	
												<c:if test="${user.role eq 'Chủ nhiệm'}">
													| <a
														onclick="return confirm('Chuyển quyền chủ nhiệm câu lạc bộ?')"
														href="${pageContext.request.contextPath}/admin/transfer/${objUser.id}"><img
														src="<c:url value="/resources/admin/image/transfer-icon.png"/>"
														alt="Xóa" width="20" height="20" /></a>
												</c:if>
											</c:otherwise>
										</c:choose></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="text-center">
					<ul class="pagination">
						<c:forEach var="i" begin="1" end="${total}">
							<c:set var="url"
								value="${pageContext.request.contextPath}/admin/users/search?p=${i}"></c:set>
							<li><a href="${url}" title="">${i}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
