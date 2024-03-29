<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Quản lý hoạt động</h1>
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
		
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Hoạt động <a style="float: right"
					href="${pageContext.request.contextPath}/admin/activities/add">Thêm
					hoạt động</a>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th style="text-align: center;" width="5%">STT</th>
								<th>Tên hoạt động</th>
								<th style="text-align: center;" width="20%">Ngày đăng ký - Kết thúc</th>
								<th style="text-align: center;">Số lượng tối đa</th>
								<th style="text-align: center;">Đã đăng ký</th>
								<th style="text-align: center;">Trạng thái</th>
								<th  style="text-align: center;" width="15%">Chức năng</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listActivities}" var="objActivity" varStatus="loop">
								<tr>
									<td style="text-align: center;">${loop.index + 1}</td>
									<td><a href="${pageContext.request.contextPath}/admin/activities/${objActivity.id}">${objActivity.title}</a></td>
									<td style="text-align: center;">${objActivity.start_at} - ${objActivity.end_at}</td>
									<td style="text-align: center;">${objActivity.limited}</td>
									<td style="text-align: center;">${objActivity.joined}</td>
									
									<td style="text-align: center;" class="ajax${objActivity.id}">
										<c:if test="${objActivity.status eq 1}">
											<a href="javascript:void(0)" onclick="return getStatus(${objActivity.id},${objActivity.status})">
												<img src="<c:url value="/resources/admin/image/open-sign-up.jpg"/>"/>
											</a>
										</c:if>
										<c:if test="${objActivity.status eq 0}">
											<a href="javascript:void(0)" onclick="return getStatus(${objActivity.id},${objActivity.status})">
												<img src="<c:url value="/resources/admin/image/close-sign-up.jpg"/>"/>
											</a>
										</c:if>
										<c:if test="${objActivity.status eq 2}">
												<img src="<c:url value="/resources/admin/image/finish-activity.jpg"/>" alt="Kết thúc"/>
										</c:if>
									</td>
									
									
									<c:set var="editUrl"
										value="${pageContext.request.contextPath}/admin/activities/edit/${objActivity.id}"></c:set>
									<c:set var="delUrl"
										value="${pageContext.request.contextPath}/admin/activities/del/${objActivity.id}"></c:set>
									<td style="text-align: center;" ><a href="${editUrl}"><img src="<c:url value="/resources/admin/image/icon-update.png"/>" width="20" height="20" alt="Cập nhập"/></a> | <a
										onclick="return confirm('Xóa hoạt động này?')"
										href="${delUrl}"><img src="<c:url value="/resources/admin/image/icon-delete.png"/>"  width="20" height="20" alt="Xóa"/></a>
										<c:if test="${objActivity.status ne 2}"> | <a href="javascript:void(0)" onclick="return Finish(${objActivity.id})" ><img src='<c:url value="/resources/admin/image/finish.png"/>' width="20" height="20" alt="Đóng hoạt động"/></a></c:if></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<script type="text/javascript">
					function getStatus(id,status){
						if (confirm('Thay đổi trạng thái đóng mở cửa đăng ký?')) {
							$.ajax({
								url: '${pageContext.request.contextPath}/admin/activities/status',
								type: 'POST',
								cache: false,
								data: {
										ajId: id,
										ajStatus: status
										},
								success: function(data){
									$('.ajax'+id).html(data);
								},
								error: function (){
									alert("Lỗi");
								}
							});
						};
					};					
				</script>
				<script type="text/javascript">
					function Finish(id){
						if (confirm('Đóng hoạt động?')) {
							$.ajax({
								url: '${pageContext.request.contextPath}/admin/activities/finish',
								type: 'POST',
								cache: false,
								data: {
										ajId: id
										},
								success: function(data){
									$('.ajax'+id).html(data);
								},
								error: function (){
									alert("Lỗi");
								}
							});
						};
					};					
				</script>
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
