<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login200">
				<form action="${pageContext.request.contextPath}/register" method="post" class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						Đăng ký
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>
					<div class="div-left">
						<div class="wrap-input1001 validate-input" data-validate = "Tên bỏ trống">
							<input class="input1001" type="text" name="firstname">
							<span class="focus-input1001" data-placeholder="Tên"></span>
						</div>
						
						<div class="wrap-input1001 validate-input" data-validate = "Họ bỏ trống">
							<input class="input1001" type="text" name="lastname">
							<span class="focus-input1001" data-placeholder="Họ"></span>
						</div>
						
						<div class="wrap-input1001 validate-input" data-validate = "Tên tài khoản bỏ trống">
							<input class="input1001" type="text" name="username">
							<span class="focus-input1001" data-placeholder="Tên tài khoản"></span>
						</div>
						
						<div class="wrap-input1001 validate-input" data-validate="Mật khẩu bỏ trống">
							<span class="btn-show-pass">
								<i class="zmdi zmdi-eye"></i>
							</span>
							<input class="input1001" type="password" name="password">
							<span class="focus-input100" data-placeholder="Mật khẩu"></span>
						</div>
					</div>
					<div class="div-right">
						<div class="wrap-input1001 validate-input" data-validate = "Email không hợp lệ">
							<input class="input1001" type="text" name="email">
							<span class="focus-input1001" data-placeholder="Email"></span>
						</div>
						
						<div class="wrap-input1001 validate-input" data-validate = "Lớp bỏ trống">
							<input class="input1001" type="text" name="klass">
							<span class="focus-input1001" data-placeholder="Lớp"></span>
						</div>
						
						<div class="wrap-input1001 validate-input">
							<input class="input1001" type="date" name="birthday">
							<span class="focus-input1001" data-placeholder="Ngày sinh"></span>
						</div>
						
						<div class="wrap-input1001 validate-input">
							<input class="input1001" type="text" name="phone">
							<span class="focus-input1001" data-placeholder="Số điện thoại"></span>
						</div>
					</div>
					<div style="clear:both"></div>
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Đăng ký
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Đã có tài khoản?
						</span>

						<a class="txt2" href="${pageContext.request.contextPath}/login">
							Đăng nhập
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	

	<script src="<c:url value="/resources/auth/vendor/jquery/jquery-3.2.1.min.js"/>"></script>

	<script src="<c:url value="/resources/auth/vendor/animsition/js/animsition.min.js"/>"></script>

	<script src="<c:url value="/resources/auth/vendor/bootstrap/js/popper.js"/>"></script>
	<script src="<c:url value="/resources/auth/vendor/bootstrap/js/bootstrap.min.js"/>"></script>

	<script src="<c:url value="/resources/auth/vendor/select2/select2.min.js"/>"></script>

	<script src="<c:url value="/resources/auth/vendor/daterangepicker/moment.min.js"/>"></script>
	<script src="<c:url value="/resources/auth/vendor/daterangepicker/daterangepicker.js"/>"></script>

	<script src="<c:url value="/resources/auth/vendor/countdowntime/countdowntime.js"/>"></script>

	<script src="<c:url value="/resources/auth/js/main.js"/>"></script>