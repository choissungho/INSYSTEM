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
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 ml-auto">
					<div class="row pt-5 mt-3 mb-2 border-bottom">
						<h3>개발자 등록</h3>
					</div>
					
					<div class="container">
					
			<form class="form-inline" method="post" action="/project_insystem/member/m_reg.do">
				<div class="col-sm-12 pt-3">
					<div class="card">
		                <div class="card-header card-header-primary">
		                	<h4 class="card-title"><i class="fas fa-square"></i> 개발자 기본사항</h4>
		                    <p class="card-catagory"></p>
		                </div>
		                
							<table class="table">
								<tbody>
									<tr style="line-height:32px;">
										<td>개발자 이름</td>
										<td>
											<input type="text" id="dvlpr_nm" name="dvlpr_nm" class="form-control" maxlength="4">
										</td>
										<td>개발자 구분</td>
		                                <td>
		                                    <select class="form-control" id="dvlpr_se" name="dvlpr_se">
										      <option>개발자</option>
										      <option>퍼블리셔</option>
										      <option>디자이너</option>
										      <option>DBA</option>
										      <option>TA</option>
										    </select>
		                                </td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>연락처</td>
										<td>
											<select class="form-control" id="tel_no1" name="tel_no1">
										      <option>010</option>
										      <option>011</option>
										      <option>017</option>
										    </select>
										    <input type="text" class="form-control" style="width:70px;" placeholder="1234" maxlength="4" id="tel_no2" name="tel_no2">
										    <input type="text" class="form-control" style="width:70px;" placeholder="1234" maxlength="4" id="tel_no3" name="tel_no3">
										</td>
							
										<td>거주지</td>
		                                <td>
		                                    <input type="text" class="form-control" placeholder="경기도-안양시" id="resdnc_atpt" name="resdnc_atpt">
		                                </td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>이메일</td>
										<td>
										    <input type="text" class="form-control" placeholder="test@test.com" id="email" name="email">
										</td>
							
										<td>등급</td>
		                                <td>
		                                    <select class="form-control" id="grad" name="grad">
										      <option>특급</option>
										      <option>고급</option>
										      <option>중급</option>
										      <option>초급</option>
										      <option>신입</option>
										    </select>
		                                </td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>정규직 경력</td>
										<td>
										    <input type="text" class="form-control" style="width:70px;" placeholder="년" maxlength="2" id="rgllbr_yy" name="rgllbr_yy"/>
										    <input type="text" class="form-control" style="width:70px;" placeholder="개월" maxlength="2" id="rgllbr_mt" name="rgllbr_mt"/>
										</td>
							
										<td>비정규직 경력</td>
		                                <td>
		                                    <input type="text" class="form-control" style="width:70px;" placeholder="년" maxlength="2" id="lrgllbr_yy" name="lrgllbr_yy"/>
										    <input type="text" class="form-control" style="width:70px;" placeholder="개월" maxlength="2" id="lrgllbr_mt" name="lrgllbr_mt"/>
		                                </td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>단가</td>
										<td>
										    <input type="text" class="form-control" placeholder="500" maxlength="4" id="untpc" name="untpc">
										</td>
							
										<td>관리자</td>
										<td>
											<input type="text" class="form-control" value="관라지" maxlength="4" id="reg_admin" name="reg_admin" readonly >
										</td>
									</tr>
									
									<tr style="line-height:32px;">
										<td>코사 여부</td>
										<td>
											<label style="width:50px;">
										    <input type="checkbox" class="form-control"  value="Y" id="cosa_yn" name="cosa_yn"/>해당
											</label>
										</td>
							
										<td>정규직 여부</td>
										<td>
											<label style="width:50px;">
											<input type="checkbox" class="form-control"  value="Y" id="rgllbr_yn" name="rgllbr_yn"/>해당
											</label>
										</td>
									</tr>
										
								
								</tbody>
							</table>			
				</div><!-- 카드 끝나는 div -->
		           
		           
		            <div class="card">
		                <div class="card-header card-header-primary">
		                    <h4 class="card-title"><i class="fas fa-square"></i> 개발자 자격사항</h4>
		                    <p class="card-catagory"></p>
		                </div>
		                    
		                        <table class="table">
		                            <tbody>
		                            <tr style="line-height:32px;">
		                                <td>자격증</td>
		                                <td>
		                                    <input type="text" name="admin_id" class="form-control" value="" id="" name="">
		                                </td>
		                                <td>사용언어</td>
		                                <td>
		                                    <input type="text" name="admin_name" class="form-control" value="" id="" name="">
		                                </td>                        
		                            </tr>
		                            <tr>
		                                <td>자격증</td>
		                                <td>
		                                    <input type="text" name="admin_passwd1" class="form-control" maxlength="10" value="" id="" name="">                                    
		                                </td>
		                                <td>사용언어</td>
		                                <td>
		                                    <input type="text" name="admin_passwd2" class="form-control" maxlength="10" value="" id="" name="">                                    
		                                </td>
		                            </tr>  
		                            </tbody>
		                        </table>
		            </div><!-- 카드 끝나는 div -->
					 
					 			<div class="text-center mt-2">
							        <button type="submit" class="btn btn-primary">등록하기</button>
							        <button type="button" class="btn btn-secondary" onclick="location.href='/project_insystem/main.do'">취소하기</button>
							    </div>
						</div>
			    	</form>
				</div><!-- div컨테이너 끝 -->
			</div>
		</div>
	</div>
</section>
</body>
</html>