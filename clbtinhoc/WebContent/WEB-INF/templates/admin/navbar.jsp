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
				<li><a href="#"><i class="fa fa-user fa-fw"></i> Thông tin
						tài khoản</a></li>
				<li class="divider"></li>
				<li><a href="${pageContext.request.contextPath}/logout"><i
						class="fa fa-sign-out fa-fw"></i> Đăng xuất</a></li>
			</ul></li>
	</ul>

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li><a href="${pageContext.request.contextPath}/admin"><i
						class="fa fa-dashboard fa-fw"></i> Trang chủ</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/users"><i
						class="fa fa-user fa-fw"></i> Quản lý thành viên</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/rules"><i
						class="fa fa-pencil fa-fw"></i> Quản lý nội quy</a></li>
				<li><a
					href="${pageContext.request.contextPath}/admin/activities"><i
						class="fa fa-list-alt fa-fw"></i> Quản lý hoạt
						động</a></li>

				<li><a href="#"><i class="fa fa-tasks fa-fw"></i> Quản
						lý tin tức<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="${pageContext.request.contextPath}/admin/news">Tin
								tức</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/news/no-cat">Tin tức chưa có thể loại</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/categories">Loại
								tin</a></li>
					</ul></li>
				<li><a href="${pageContext.request.contextPath}/admin/roles"><i
						class="fa fa-user-secret fa-fw"></i> Quản lý chức vụ</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/contacts"><i
						class="fa fa-envelope fa-fw"></i> Quản lý ý kiến</a></li>
				<li><a href="#"><i class="fa fa-tasks fa-fw"></i>Thống kê<span class="fa arrow"></span></a>
					<ul class="nav nav-second-level">
						<li><a href="${pageContext.request.contextPath}/admin/thong-ke-tai-khoan">Tài Khoản</a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/thong-ke-hoat-dong">Hoạt động</a></li>
					</ul></li>
			</ul>
			
			
		</div>
	</div>
</nav>