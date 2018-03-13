<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Thêm thành viên</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Thông tin tài khoản</div>
			<div class="panel-body">
				<div class="row">
					<form action="${pageContext.request.contextPath}/admin/users/add" method="post">
						<div class="col-lg-5 ">
							<div class="form-group">
								<label>Tên</label> <input class="form-control" type="text"
									name="firstname">
								<p class="help-block">Ví dụ: Dũng</p>
							</div>
							<div class="form-group">
								<label>Tài khoản</label> <input class="form-control" type="text"
									name="username">
								<p class="help-block">Ví dụ: nguyenquangdung</p>
							</div>
							<div class="form-group">
								<label>Email</label> <input class="form-control"
									type="text" name="email">
								<p class="help-block">Ví dụ: nguyenquangdung5560@gmail.com</p>
							</div>
							<div class="form-group">
								<label>Ngày sinh</label> <input class="form-control"
									type="date" name="birthday">
								<p class="help-block">Ví dụ: 04/07/1996</p>
							</div>
							<div class="form-group">
								<label>Quyền hạn</label> 
								<select class="form-control" name="role">
									<option selected="selected">Phân quyền</option>
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
						</div>
						<div class="col-lg-5">
							<div class="form-group">
								<label>Họ</label> <input class="form-control" type="text"
									name="lastname">
								<p class="help-block">Ví dụ: Nguyễn Quang</p>
							</div>
							<div class="form-group">
								<label>Mật khẩu</label> <input class="form-control"
									type="password" name="password">
								<p class="help-block">Bao gồm 6 đến 16 ký tự</p>
							</div>
							<div class="form-group">
								<label>Số điện thoại</label> <input class="form-control" type="text"
									name="phone">
								<p class="help-block">Ví dụ: 0935634876</p>
							</div>
							<div class="form-group">
								<label>Lớp</label> <input class="form-control"
									type="text" name="klass">
								<p class="help-block">Ví dụ: 14CNTT</p>
							</div>
						</div>
						<div style="clear:both"></div>
						<button type="submit" class="btn btn-default">Thêm</button>
						<button type="reset" class="btn btn-default">Nhập lại</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
