<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Quản lý ý kiến đóng góp</h1>
		<c:if test="${param['msg'] eq 'del-success'}">
			<div class="alert alert-success alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Xóa thành công
			</div>
		</c:if>
		<c:if test="${param['msg'] eq 'del-error'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Xóa không thành công
			</div>
		</c:if>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Ý kiến đóng góp
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Họ và tên</th>
								<th>Lớp</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listContacts}" var="objContacts">
								<tr>
									<td style="text-align: center;">${objContacts.id}</td>
									<td><a
										href="${pageContext.request.contextPath}/admin/contacts/${objContacts.id}">${objContacts.lastname} ${objContacts.firstname}</a></td>
									<td style="text-align: center;">${objContacts.klass}</td>
									<c:set var="delUrl"
										value="${pageContext.request.contextPath}/admin/activities/del/${objActivity.id}"></c:set>
									<td style="text-align: center;"><a
										onclick="return confirm('Xóa ý kiến này này?')"
										href="${delUrl}"><img
											src="<c:url value="/resources/admin/image/icon-delete.png"/>"
											width="20" height="20" alt="Xóa" /></a> </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<div class="text-center">
					<ul class="pagination">
						<c:forEach var="i" begin="1" end="${total}">
							<c:set var="url"
								value="${pageContext.request.contextPath}/admin/contacts?p=${i}"></c:set>
							<li><a href="${url}" title="">${i}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>