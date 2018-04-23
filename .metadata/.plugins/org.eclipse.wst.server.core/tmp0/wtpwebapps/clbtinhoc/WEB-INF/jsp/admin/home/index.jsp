<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Trang chủ</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-list-alt fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">${totalActivities}</div>
						<div>Hoạt động</div>
					</div>
				</div>
			</div>
			<a href="${pageContext.request.contextPath}/admin/activities">
				<div class="panel-footer">
					<span class="pull-left">Truy cập</span> <span
						class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-info">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-user fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">${totalAccount}</div>
						<div>Tài khoản</div>
					</div>
				</div>
			</div>
			<a href="${pageContext.request.contextPath}/admin/users">
				<div class="panel-footer">
					<span class="pull-left">Truy cập</span> <span
						class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-green">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-tasks fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">${totalCategories}</div>
						<div>Thể loại tin</div>
					</div>
				</div>
			</div>
				<a href="${pageContext.request.contextPath}/admin/categories">
				<div class="panel-footer">
					<span class="pull-left">Truy cập</span> <span
						class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-yellow">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-newspaper-o fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">${totalNews}</div>
						<div>Tin tức</div>
					</div>
				</div>
			</div>
				<a href="${pageContext.request.contextPath}/admin/news">
				<div class="panel-footer">
					<span class="pull-left">Truy cập</span> <span
						class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-red">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-envelope fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">${totalContacts}</div>
						<div>Ý kiến</div>
					</div>
				</div>
			</div>
				<a href="${pageContext.request.contextPath}/admin/contacts">
				<div class="panel-footer">
					<span class="pull-left">Truy cập</span> <span
						class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-warning">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-envelope fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">${totalRoles}</div>
						<div>Chức vụ</div>
					</div>
				</div>
			</div>
				<a href="${pageContext.request.contextPath}/admin/roles">
				<div class="panel-footer">
					<span class="pull-left">Truy cập</span> <span
						class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
	<div class="col-lg-3 col-md-6">
		<div class="panel panel-danger">
			<div class="panel-heading">
				<div class="row">
					<div class="col-xs-3">
						<i class="fa fa-envelope fa-5x"></i>
					</div>
					<div class="col-xs-9 text-right">
						<div class="huge">${totalRules}</div>
						<div>Nội quy</div>
					</div>
				</div>
			</div>
				<a href="${pageContext.request.contextPath}/admin/rules">
				<div class="panel-footer">
					<span class="pull-left">Truy cập</span> <span
						class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
					<div class="clearfix"></div>
				</div>
			</a>
		</div>
	</div>
</div>
<!-- /.row -->
