<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		 <div class="content-grids">
			 <div class="col-md-8 content-main">
			 <div class="row">
			  <h1 class="title">Danh sách các hoạt động cho phép đăng ký</h1>
				<table class="table">
					<tr>
						<th style="text-align: center;">STT</th>
						<th>Tiêu hoạt động</th>
						<th style="text-align: center;">Lượt xem</th>
					</tr>
					<c:forEach items="${listNews}" var="objNews" varStatus="loop">
					<tr>
						<td style="text-align: center;">${loop.index + 1}</td>
						<td><a href="${pageContext.request.contextPath}/${slug.makeSlug(objNews.name_cat)}-${objNews.id_cat}/${slug.makeSlug(objNews.title)}-${objNews.id}">${objNews.title}</a></td>
						<td style="text-align: center;">${objNews.view}</td>
					</tr>
					</c:forEach>
				</table>
					 <div class="text-center">
					<ul class="pagination">
						<c:forEach var="i" begin="1" end="${total}">
							<c:set var="url"
								value="${pageContext.request.contextPath}/${slug.makeSlug(objCat.name_cat)}-${objCat.id}?p=${i}"></c:set>
							<li><a href="${url}" title="">${i}</a></li>
						</c:forEach>
					</ul>
				</div>
				</div>
				<div class="row">
					<h1 class="title">Danh sách các hoạt động đang diễn ra</h1>
				</div>
			 </div>
		
			 <div class="col-md-4 content-main-right">
				 <div class="search">
						 <h3>TÌM KIẾM TIN TỨC</h3>
						<form>
							<input type="text" value="" onfocus="this.value=''" onblur="this.value=''">
							<input type="submit" value="">
						</form>
				 </div>
				 
				 <div class="categories">
					 <h3>Tin tức mới nhất</h3>
					 <ul>
					 <c:forEach items="${newList}" var="newObj">
					 		<li><a href="${pageContext.request.contextPath}/${slug.makeSlug(newObj.name_cat)}-${newObj.id_cat}/${slug.makeSlug(newObj.title)}-${newObj.id}">${newObj.title}</a></li>
					 </c:forEach>
					 </ul>
				 </div>
				   <div class="categories">
					 <h3>Thông tin liên hệ</h3>
					 <p>Chủ nhiệm câu lạc bộ: ${chunhiem.lastname} ${chunhiem.firstname}</p>
					 <p>Email: ${chunhiem.email}</p>
					 <p>SĐT: ${chunhiem.phone}</p>
					 <p>Địa chỉ sinh hoạt: Trường đại học Sư Phạm Đà Nẵng</p>
				 </div>
			 </div>
			 <div class="clearfix"></div>
		 </div>