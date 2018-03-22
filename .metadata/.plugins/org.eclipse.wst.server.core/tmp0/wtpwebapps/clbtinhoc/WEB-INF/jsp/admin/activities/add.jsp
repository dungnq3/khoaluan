<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Thêm hoạt động</h1>
	</div>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Thông tin hoạt động</div>
			<div class="panel-body">
				<div class="row">
					<form
						action="${pageContext.request.contextPath}/admin/activities/add"
						method="post">
						<div class="col-lg-12">
							<div class="form-group">
								<label>Tên hoạt động</label> <input class="form-control"
									type="text" name="title">
							</div>
							<div class="form-group">
								<label>Nội dung</label> <textarea  id = "ckeditor" class="form-control"
								 name="content"></textarea>
							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<label>Ngày đăng ký</label> <input class="form-control"
										type="date" name="start_at">
								</div>
								
								<div class="form-group">
									<label>Phí tham gia (VNĐ)</label> <input class="form-control"
										type="number" min = "0" name="fee">
								</div>
								
							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<label>Ngày kết thúc đăng ký</label> <input class="form-control"
										type="date" name="end_at">
								</div>
								<div class="form-group">
									<label>Số lượng giới hạn</label> <input class="form-control"
										type="number" min = "1" name="limited">
								</div>
							</div>
							<div style="clear:both"></div>
							<button type="submit" class="btn btn-default">Thêm</button>
							<button type="reset" class="btn btn-default">Nhập lại</button>
						</div>
					</form>
					<script type="text/javascript">
						var editor = CKEDITOR.replace("ckeditor");
						CKFinder.setupCKEditor(editor, '${pageContext.request.contextPath}/resources/ckfinder/');
					</script>
				</div>
			</div>
		</div>
	</div>
</div>
