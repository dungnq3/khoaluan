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
				Nội quy câu lạc bộ 
				<c:if test="${objRule eq null}">
					<a style="float: right" href="${pageContext.request.contextPath}/admin/rules/add">Thêm</a>  
				</c:if>
			</div>
			<div class="panel-body">
				<c:if test="${objRule ne null}">
					${objRule.content}
					<br>
					Người viết: <a href="${pageContext.request.contextPath}/">${writer.lastname} ${writer.firstname}</a>
					<br>
					<div style="float:right">
						<a href="${pageContext.request.contextPath}/admin/rules/edit/${objRule.id}">Cập nhập</a>
						 | 
						<a onclick="return confirm('Bạn chắc chắn muốn xóa nội dung này?')" href="${pageContext.request.contextPath}/admin/rules/del/${objRule.id}">Xóa</a>
					</div>
				</c:if>
				<c:if test="${objRule eq null}">
					Không có quy định nào.
				</c:if>
				
			</div>
		</div>
	</div>
</div>
