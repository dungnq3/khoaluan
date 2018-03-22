<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-default navbar-static-top" role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand"
			href="${pageContext.request.contextPath}/admin">Câu lạc bộ tin
			học</a>
	</div>

	<ul class="nav navbar-top-links navbar-right">
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
		</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i> User
						Profile</a></li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
				<li class="divider"></li>
				<li><a href="${pageContext.request.contextPath}/logout"><i
						class="fa fa-sign-out fa-fw"></i> Logout</a></li>
			</ul></li>
	</ul>

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li><a href="${pageContext.request.contextPath}/admin"><i
						class="fa fa-dashboard fa-fw"></i> Trang chủ</a></li>
				<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_VICE')">
					<li><a href="${pageContext.request.contextPath}/admin/users"><i
							class="fa fa-dashboard fa-fw"></i> Quản lý thành viên</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/rules"><i
							class="fa fa-dashboard fa-fw"></i> Quản lý nội quy</a></li>
					<li><a
						href="${pageContext.request.contextPath}/admin/activities"><i
							class="fa fa-dashboard fa-fw"></i> Quản lý hoạt động<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a
								href="${pageContext.request.contextPath}/admin/activities">Hoạt
									động</a></li>
							<li><a
								href="${pageContext.request.contextPath}/admin/activities/history">Lịch
									sử đăng ký</a></li>
						</ul></li>
				</sec:authorize>
			</ul>
		</div>
	</div>
</nav>