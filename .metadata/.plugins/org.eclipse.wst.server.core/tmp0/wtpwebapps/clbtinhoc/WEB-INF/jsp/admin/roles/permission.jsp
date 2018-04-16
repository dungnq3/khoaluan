<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Quản lý quyền truy cập</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Danh sách quyền truy cập <a style="float:right;"
					href="${pageContext.request.contextPath}/admin/roles/${id}/permissions/add">Thêm quyền truy cập</a>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th style="text-align: center;">STT</th>
								<th>Quyền truy cập</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listPermissions}" var="objPermis"
								varStatus="loop">
								<tr>
									<td style="text-align: center;">${loop.index + 1}</td>
									<td>${objPermis.name}</td>
									<c:set var="delUrl"
										value="${pageContext.request.contextPath}/admin/roles/${id}/permissions/del/${objPermis.id}"></c:set>
									<td><c:if
											test="${objRole.role ne 'Chủ nhiệm' && objRole.role ne 'Thành viên'}">
											<a onclick="return confirm('Xóa chức vụ này?')"
												href="${delUrl}"><img
												src="<c:url value="/resources/admin/image/icon-delete.png"/>"
												alt="Xóa" width="20" height="20" /></a>

										</c:if></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>