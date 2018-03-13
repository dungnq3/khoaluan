<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Cập nhập thành viên</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Thông tin tài khoản</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-lg-6">
						<form action = "${pageContext.request.contextPath}/admin/users/edit/${objUser.id}" method="post">
							<div class="form-group">
								<label>Mật khẩu</label> <input class="form-control" type="password" name="password">
								<p class="help-block">Bao gồm 6 đến 16 ký tự</p>
							</div>
							<div class="form-group">
								<label>Quyền hạn</label> 
								<c:set var="role" value="${objUser.role}"></c:set>
								<select class="form-control" name="role">
									<option selected="selected" value="${objUser.role}">
										<c:choose>
											<c:when test="${role == 'ADMIN'}">
												Chủ nhiệm
											</c:when>
											<c:when test="${role == 'VICE'}">
												Phó nhiệm
											</c:when>
											<c:when test="${role == 'TREASURER'}">
												Thủ quỹ
											</c:when>
											<c:when test="${role == 'TEACHER'}">
												Giảng viên
											</c:when>
											<c:otherwise>
												Thành viên
											</c:otherwise>
										</c:choose>
									</option>
                                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                                    	<option value="VICE">Phó nhiệm</option>
                                    </sec:authorize> 
                                    <sec:authorize access="hasAnyRole('ROLE_ADMIN,ROLE_VICE')">
                                    	<option value="TREASURER">Thủ quỹ</option>
                                    </sec:authorize>
                                    <option value="MEMBER">Thành viên</option>
                                    <option value="TEACHER">Giảng viên</option>
                                </select>
								<p class="help-block">Ví dụ: Thành viên</p>
							</div>
							<button type="submit" class="btn btn-default">Cập nhập</button>
							<button type="reset" class="btn btn-default">Nhập lại</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
