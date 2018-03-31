<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Quản lý tin tức</h1>
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
				Tin tức <a style="float: right"
					href="${pageContext.request.contextPath}/admin/news/add">Thêm
					tin tức</a>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>Tiêu đề</th>
								<th>Loại tin</th>
								<th>Ngày đăng(cập nhập)</th>
								<th>Lượt xem</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listNews}" var="objNews">
								<tr>
									<td>${objNews.id}</td>
									<td>${objNews.title}</td>
									<td>${objNews.name_cat}</td>
									<fmt:parseDate value="${objNews.created_at}" type="date" pattern="yyyy-MM-dd HH:mm:ss.S" var="created_at"/> 
									<fmt:parseDate value="${objNews.updated_at}" type="date" pattern="yyyy-MM-dd HH:mm:ss.S" var="updated_at"/>     
									<fmt:formatDate var="created" value="${created_at}" pattern="dd-MM-yyyy HH:mm:ss"/> 
									<fmt:formatDate var="updated" value="${updated_at}" pattern="dd-MM-yyyy HH:mm:ss"/> 
									<c:if test="${updated >created}">
									<td>${updated}</td>
									</c:if>
									<c:if test="${updated == created}">
										<td>${created}</td>
									</c:if>
									<td>${objNews.view}</td>
									<c:set var="editUrl"
										value="${pageContext.request.contextPath}/admin/news/edit/${objNews.id}"></c:set>
									<c:set var="delUrl"
										value="${pageContext.request.contextPath}/admin/news/del/${objNews.id}"></c:set>
									<td><a href="${editUrl}"><img src="<c:url value="/resources/admin/image/icon-update.png"/>" alt="Xóa" width="20" height="20" /></a> | <a
										onclick="return confirm('Xóa tin tức này?')"
										href="${delUrl}"><img src="<c:url value="/resources/admin/image/icon-delete.png"/>" alt="Xóa" width="20" height="20" /></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="text-center">
					<ul class="pagination">
						<c:forEach var="i" begin="1" end="${total}">
							<c:set var="url"
								value="${pageContext.request.contextPath}/admin/news?p=${i}"></c:set>
							<li><a href="${url}" title="">${i}</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
