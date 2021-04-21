<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><spring:message code="title.sample" /></title>
<link type="text/css" rel="stylesheet"
	href="<c:url value='/css/egovframework/sample.css'/>" />
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
</head>
<body>
	<div class="col-md-3">
	<!-- 사이드 바 메뉴-->
		  <!-- 패널 타이틀1 -->
		<div class="panel panel-info">
		    <div class="panel-heading">
		      <h3 class="panel-title">Panel Title</h3>
		    </div>
		    <!-- 사이드바 메뉴목록1 -->
		    <ul class="list-group">
		      <li class="list-group-item"><a href="#">HTML</a></li>
		      <li class="list-group-item"><a href="#">CSS</a></li>
		      <li class="list-group-item"><a href="#">ECMAScript5</a></li>
		    </ul>
		</div>
		  <!-- 패널 타이틀2 -->
		<div class="panel panel-default">
		  <div class="panel-heading">
		    <h3 class="panel-title">Panel Title</h3>
		  </div>
		    <!-- 사이드바 메뉴목록2 -->
		      <ul class="list-group">
		        <li class="list-group-item"><a href="#">jQuery</a></li>
		        <li class="list-group-item"><a href="#">BootStrap</a></li>
		      </ul>
		</div>      
		  <!-- 패널 타이틀3 -->
		<div class="panel panel-info">
		  <div class="panel-heading">
		    <h3 class="panel-title">Panel Title</h3>
			  	</div>
			      <!-- 사이드바 메뉴목록3 -->
			      <ul class="list-group">
			        <li class="list-group-item"><a href="#">About</a></li>
			        <li class="list-group-item"><a href="#">Help</a></li>
			      </ul>
		    	</div>
		</div> 
</body>
</html>