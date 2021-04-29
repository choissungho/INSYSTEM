<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<body>
	<%@ include file="../common/sidebar.jspf" %>
	<section>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-10 ml-auto pl-5 pr-5">
					<div class="row pt-5 mt-3 mb-2 border-bottom">
						<h3>개2발자 리스트</h3>
								
								<table class="table table-hover border-bottom">
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
											<th>이름</th>
											<th>개발 구분</th>
											<th>거주지</th>
											<th>전화</th>
											<th>이메일</th>
											<th>코사</th>
											<th>단가</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="board" items="${listmember}">
							<%-- 				<tr style="cursor: pointer" onclick="aaa(${board.btNo});"> --%>				
											<tr style="cursor: pointer" onclick="location.href='./m_detail.do?member=${board.dvlprNo}'">
													<td>${board.dvlprNm}</td>
													<td>${board.dvlprSe} / ${board.grad}</td>
													<td>${board.resdncAtpt}</td>
													<td>${board.telno1}-${board.telno2}-${board.telno3}</td>
													<td>${board.email}</td>
													<td>
														<c:choose>
															<c:when test="${board.cosaYn eq 'Y'}">O</c:when>
															<c:otherwise>X</c:otherwise>
														</c:choose>
													</td>
													<td>${board.untpc}</td>
											</tr>
										</c:forEach>
										
								<!-- 	그리드 리스트에서 끝 쪽에 남는 공간을 빈 데이터로 채워주는 곳 -->
										<c:if test="${fn:length(listmember) < 10}">
											<c:forEach var="i" begin="${1}" end="${10 - fn:length(listmember)}">
									    		<tr>
									    			<td disabled>　　</td>
													<td>　　</td>
													<td>　　</td>
													<td>　　</td>
													<td>　　</td>
													<td>　　</td>
													<td>　　</td>
									    		</tr>
									    	</c:forEach>
								    	</c:if>	
									</tbody>
								</table>
								
								
								<!--@@@@@@@@@@@@페이징 네비게이션@@@@@@@@@@@@ -->
								
								
								
								<nav aria-label="Page navigation example" class="mx-auto">
								  <ul class="pagination justify-content-center">
								    <li class="page-item">
									<c:if test="${start - 10 > 0}">
						      		  <a class="page-link" href="./m_list.do?p=${start - 10}" aria-label="Previous">
							          <span aria-hidden="true">&laquo;</span>
							      	  </a>
									</c:if>
								    </li>
								    <c:forEach var="i" begin="${start}" end="${end}">
									    	<c:if test="${f_end >= i}">
									    		<c:choose>
									    		<c:when test="${index eq i}">
									    		<li class="page-item active"><a class="page-link" href="./m_list.do?p=${i}">${i}</a></li>
									    		</c:when>
									    		<c:otherwise>
									    		<li class="page-item"><a class="page-link" href="./m_list.do?p=${i}">${i}</a></li>
									    		</c:otherwise>
									    		</c:choose>
									    	</c:if>
								    </c:forEach>
						
								    <li class="page-item">
									<c:if test="${end + 1 < f_end}">
								      <a class="page-link" href="./m_list.do?p=${end + 1}" aria-label="Next">
								        <span aria-hidden="true">&raquo;</span>
								      </a>
									</c:if>
								    </li>
								  </ul>
								</nav>
								
								<!--@@@@@@@@@@@@페이징 네비게이션 끝@@@@@@@@@@@@ -->
								
								
								
								
								
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>