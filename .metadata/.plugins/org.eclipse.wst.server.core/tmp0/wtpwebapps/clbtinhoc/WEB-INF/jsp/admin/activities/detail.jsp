<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Lịch sử đăng ký hoạt động</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				${activity_name}
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>STT</th>
								<th>Tên thành viên</th>
								<th>Ngày đăng ký</th>
								<th>Trạng thái nộp phí</th>
								<th>Ngày nộp phí</th>
							</tr>
						</thead>
						<tbody>
							<c:set var="i" value="0"></c:set>
							<c:forEach items="${listActivityUsers}" var="objActivityUser" >
								<tr>
									<td>${i = i + 1}</td>
									<td>${objActivityUser.lastname} ${objActivityUser.firstname}</td>
									<td>${objActivityUser.joined_at}</td>
									<td>${objActivityUser.pay}</td>
									<td>${objActivityUser.paid_at}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
