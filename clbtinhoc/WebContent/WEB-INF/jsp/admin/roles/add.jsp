<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Thêm chức vụ</h1>
		<c:if test="${param['msg'] eq 'exist'}">
			<div class="alert alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">&times;</button>
				Chức vụ đã tồn tại
			</div>
		</c:if>
		<form:errors path="objRole.role" cssClass="alert alert-danger" element="div"/>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Chức vụ</div>
			<div class="panel-body">
				<div class="row">
					<form action="${pageContext.request.contextPath}/admin/roles/add" method="post">
						<div class="col-lg-12 ">
							<div class="form-group">
								<label>Chức vụ</label> 
								<input  class="form-control" type="text" name="role">
							</div>
							<button type="submit" class="btn btn-default">Thêm</button>
							<button type="reset" class="btn btn-default">Nhập lại</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
