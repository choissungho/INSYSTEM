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
<body>
	<%@ include file="../common/sidebar.jspf" %>
	<section>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-10 ml-auto pl-5 pr-5">
					<div class="row pt-5 mt-3 mb-2 border-bottom">
						<h3>개발자 상세 페이지</h3>
						${memberdetail.dvlprNm}
						${memberdetail.telno1}
						${memberdetail.telno2}
						${memberdetail.telno3}
						
						
						${memberdetail.resdncAtpt}
						${memberdetail.email}
						${memberdetail.grad}
						${memberdetail.rgllbrYy}
						${memberdetail.rgllbrMt}
						${memberdetail.irgllbrYy}
						${memberdetail.irgllbrMt}
						${memberdetail.untpc}
						${memberdetail.rgllbrYn}
						${memberdetail.deleteYn}
						${memberdetail.blclstYn}
						${memberdetail.dvlprRm}
						${memberdetail.frstRegister}
						${memberdetail.frstRgsde}
						${memberdetail.lastUpdusr}
						${memberdetail.lastUpdde}
					</div>
					
					<div class="container">
					
			
				<div class="col-sm-12 pt-3">
					<div class="card">
		                <div class="card-header card-header-primary">
		                	<h4 class="card-title"><i class="fas fa-square"></i> 개발자 기본사항</h4>
		                    
		                </div>
		                
							<table class="table">
								<tbody>
									<tr style="line-height:32px;">
										<td>개발자 이름</td>
										<td class="font-weight-bold">
											${memberdetail.dvlprNm}
										</td>
										<td>개발자 구분</td>
		                                <td class="font-weight-bold">
		                                    ${memberdetail.dvlprSe}
		                                </td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>연락처</td>
										<td class="font-weight-bold">
											${memberdetail.telno1}-${memberdetail.telno2}-${memberdetail.telno3}
										</td>
							
										<td>거주지</td>
		                                <td class="font-weight-bold">
		                                	${memberdetail.resdncAtpt}
		                                </td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>이메일</td>
										<td class="font-weight-bold">
										    ${memberdetail.email}
										</td>
							
										<td>등급</td>
		                                <td class="font-weight-bold">
		                                    ${memberdetail.grad}
		                                </td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>정규직 경력</td>
										<td class="font-weight-bold">
											${memberdetail.rgllbrYy}년 ${memberdetail.rgllbrMt}개월
										</td>
							
										<td>비정규직 경력</td>
		                                <td class="font-weight-bold">
		                                	${memberdetail.irgllbrYy}년 ${memberdetail.irgllbrMt}개월
		                                </td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>단가</td>
										<td class="font-weight-bold">
										   ${memberdetail.untpc}
										</td>
							
										<td>관리자</td>
										<td class="font-weight-bold">
											${memberdetail.lastUpdusr}
										</td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>코사 여부</td>
										<td class="font-weight-bold">
											${memberdetail.cosaYn}
										</td>
							
										<td>정규직 여부</td>
										<td class="font-weight-bold">
											${memberdetail.rgllbrYn}
										</td>
									</tr>
										
								
								</tbody>
							</table>			
				</div><!-- 카드 끝나는 div -->
		           
		           
		            <div class="card">
		                <div class="card-header card-header-primary">
		                	<div class="row">
		                		<div class="col-ml-9">
		                    		<h4 class="card-title"><i class="fas fa-square"></i> 개발자 언어</h4>
                    			</div>
                    			
                    			<div class="col-ml-3 ml-auto mr-5">
		                    		<button id="language_add" type="button" class="btn btn-success">추가</button>
		                    		<button id="language_del" type="button" class="btn btn-danger">삭제</button>
                    			</div>
                    			
		                    </div>
		                    
		                </div>
		                    
		                        <table class="table">
		                            <tbody id="language">
		                            <tr id="language_table0" style="line-height:32px;">
		                                <td>언어　</td>
		                                <td>
		                                    <select class="form-control" id="la_0" name="la_0">
										      <c:forEach var="option" items="${lang_op}">
										     	<option value="${option.sclasCode}">${option.sclasCdnm}</option>
										      </c:forEach>
										    </select>
		                                </td>
		                                <td>
		                                	<select class="form-control" id="la2_0" name="la2_0">
										      <c:forEach var="option2" items="${lang_op2}">
										     	<option value="${option2.sclasCode}">${option2.sclasCdnm}</option>
										      </c:forEach>
										    </select>
		                                </td>
		                            </tr>
		                            </tbody>
		                        </table>
		            </div><!-- 카드 끝나는 div -->
					 
					 
					 <!-- 카드 시작하는 div -->
					 <div class="card">
		                <div class="card-header card-header-primary">
		                	<div class="row">
		                		<div class="col-ml-9">
		                    		<h4 class="card-title"><i class="fas fa-square"></i> 개발자 자격사항</h4>
                    			</div>
                    			
                    			<div class="col-ml-3 ml-auto mr-5">
		                    		<button id="licence_add" type="button" class="btn btn-success">추가</button>
		                    		<button id="licence_del" type="button" class="btn btn-danger">삭제</button>
                    			</div>
                    			
		                    </div>
		                   
		                </div>
		                    
		                        <table class="table">
		                            <tbody id="licence">
		                            <tr id="licence_table0" style="line-height:32px;">
		                                <td>자격증</td>
		                                <td>
		                                    <select class="form-control" id="li_0" name="li_0">
										      <c:forEach var="option3" items="${licence_op}">
										     	<option>${option3.sclasCdnm}</option>
										      </c:forEach>
										    </select>
		                                </td>
		                            </tr>
		                            </tbody>
		                        </table>
		            </div>
		            <!-- 카드 끝나는 div -->
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 
					 			<div class="text-center mt-2">
							        <button type="button" class="btn btn-primary" onclick="location.href='./m_modify.do?member=${memberdetail.dvlprNo}'">수정하기</button>
							        <button type="button" class="btn btn-danger" onclick="location.href='./m_delete.do?member=${memberdetail.dvlprNo}'">삭제하기</button>
							        <button type="button" class="btn btn-secondary" onclick="history.back()">취소하기</button>
							    </div>
						</div>
			    
				</div><!-- div컨테이너 끝 -->
					
					
					
					
					
				</div>
			</div>
		</div>
	</section>
</body>
</html>