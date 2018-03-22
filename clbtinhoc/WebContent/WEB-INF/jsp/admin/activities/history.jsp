<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Quản lý hoạt động</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Lịch sử đăng ký hoạt động
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Tên hoạt động</th>
								<th>Ngày đăng ký</th>
								<th>Số lượng giới hạn</th>
								<th>Đã đăng ký</th>
								<th>Trạng thái</th>
								
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listActivities}" var="objActivity">
								<tr>
									<td>${objActivity.id}</td>
									<td><a href="${pageContext.request.contextPath}/admin/activities/history/${objActivity.id}">${objActivity.title}</a></td>
									<td>${objActivity.start_at} - ${objActivity.end_at}</td>
									<td>${objActivity.limited}</td>
									<td>${objActivity.joined}</td>
									<td>${objActivity.status}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="text-center">
					<ul class="pagination">
						<c:forEach var="i" begin="1" end="${total}">
							<c:set var="url"
								value="${pageContext.request.contextPath}/admin/activities?p=${i}"></c:set>
							<li><a href="${url}" title="">${i}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>