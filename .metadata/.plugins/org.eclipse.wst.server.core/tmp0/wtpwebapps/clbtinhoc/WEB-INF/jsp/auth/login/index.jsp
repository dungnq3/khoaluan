<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	
</div>
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form action="${pageContext.request.contextPath}/login" method="POST" class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						Welcome
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
					</span>
					<c:if test="${param['error'] eq 'true' }">
						<div style="margin-bottom: 15px">
							<span style="color:red;">Sai tài khoản hoặc mật khẩu</span>
						</div>
					</c:if>
					<div class="wrap-input100 validate-input" data-validate = "Tên đăng nhập bỏ trống">
						<input class="input100" type="text" name="username">
						<span class="focus-input100" data-placeholder="Tên tài khoản"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Mật khẩu bỏ trống">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="password">
						<span class="focus-input100" data-placeholder="Mật khẩu"></span>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Đăng nhập
							</button>
						</div>
					</div>

					<div class="text-center p-t-115">
						<span class="txt1">
							Chưa có tài khoản?
						</span>

						<a class="txt2" href="${pageContext.request.contextPath}/register">
							Đăng ký
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