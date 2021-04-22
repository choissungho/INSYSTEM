<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>테스트하는페이지 2</title>
<%@ include file="../common/jsList.jspf" %>
</head>
<style>
html, body {
    margin: 0;
    height: 100%;
    overflow: hidden;
}
</style>
<body>
	<div class="h-100">
		<div class="row h-100">
			<%@ include file="../common/sidebar.jspf" %>
			
			<div class="col-md-10 h-100 bg-primary">
				<form class="row g-3">
				  <div class="col-md-6">
				    <label for="inputEmail4" class="form-label">이름</label>
				    <input type="email" class="form-control" id="inputEmail4">
				  </div>
				  <div class="col-md-6">
				    <label for="inputPassword4" class="form-label">개발자 구분</label>
				    <input type="password" class="form-control" id="inputPassword4">
				  </div>
				  <div class="col-12">
				    <label for="inputAddress" class="form-label">연락처</label>
				    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
				  </div>
				  <div class="col-12">
				    <label for="inputAddress2" class="form-label">거주지</label>
				    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
				  </div>
				  <div class="col-md-6">
				    <label for="inputCity" class="form-label">이메일</label>
				    <input type="text" class="form-control" id="inputCity">
				  </div>
				  <div class="col-md-4">
				    <label for="inputState" class="form-label">등급</label>
				    <select id="inputState" class="form-select">
				      <option selected>Choose...</option>
				      <option>...</option>
				    </select>
				  </div>
				  <div class="col-md-2">
				    <label for="inputZip" class="form-label">정규직</label>
				    <input type="text" class="form-control" id="inputZip">
				  </div>
				  <div class="col-12">
				    <div class="form-check">
				      <input class="form-check-input" type="checkbox" id="gridCheck">
				      <label class="form-check-label" for="gridCheck">
				        Check me out
				      </label>
				    </div>
				  </div>
				  <div class="col-12">
				    <button type="submit" class="btn btn-primary">Sign in</button>
				  </div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>