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
<%@ include file="../common/jsList.jspf"%>
</head>
<body>
	<%@ include file="../common/sidebar.jspf"%>
	<!--@@@@@@@@@@@@@@@ 	콘텐츠부분 	@@@@@@@@@@@@@@@@@-->
	<div class="container" style="margin-top: 5%;">
		<h1>서칭중 프로젝트</h1>
	</div>

	<table class="container table table-striped">
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">프로젝트명</th>
				<th scope="col">주관기관/주관사</th>
				<th scope="col">프로젝트 지역</th>
				<th scope="col">시작일시</th>
				<th scope="col">종료일시</th>
				<th scope="col">기타설명</th>
			</tr>
		</thead>
		<c:forEach items="${result}" var="list">
			<tr>
				<td>${list.prjctNo}</td>
				<td>${list.prjctNm}</td>
				<td>${list.prjctMnnst}/ ${list.prjctTruentpr}</td>
				<td>${list.lcAtpt}</td>
				<td>${list.prjctBgnde}</td>
				<td>${list.prjctEndde}</td>
				<td>${list.prjctRm}</td>
			</tr>

			</tbody>
		</c:forEach>
	</table>
</body>
</html>