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
	<section>
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-10 ml-auto pl-5 pr-5">
				<div class="row pt-5 mt-3 mb-2 border-bottom">
					<h3>서치중 프로젝트</h3>

					<table class="table table-hover">
						<colgroup>
							<col width="5%" />
							<col width="5%" />
							<col width="5%" />
							<col width="5%" />
							<col width="5%" />
							<col width="5%" />
							<col width="5%" />
							<col width="5%" />
							<col width="5%" />
							<col width="5%" />
						</colgroup>


						<thead class="thead-dark">
							<tr>
								<th>번호</th>
								<th>프로젝트 이름</th>
								<th>주관기관/주관사</th>
								<th>프로젝트 지역</th>
								<th>시작일시</th>
								<th>종료일시</th>
								<th>기타설명</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${result}" var="list">
								<tr>
									<td>${list.prjctNo}</td>
									<td>${list.prjctNm}</td>
									<td>${list.prjctMnnst}/${list.prjctTruentpr}</td>
									<td>${list.lcAtpt}</td>
									<td>${list.prjctBgnde}</td>
									<td>${list.prjctEndde}</td>
									<td>${list.prjctRm}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	</section>
</body>
</html>