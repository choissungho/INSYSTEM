<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>프로젝트 등록</title>
<%@ include file="../common/jsList.jspf"%>
</head>
<body>
	<%@ include file="../common/sidebar.jspf"%>
	<section>
	<div class="container-fluid">
		<div class="row justify-content-center align-items-center">
			<div class="col-lg-9 ml-auto">
				<div class="row pt-5 mt-3 mb-2 border-bottom">
					<h3>프로젝트 등록</h3>
				</div>

				<div class="container">

					<form class="form-inline" method="post"
						action="/project_insystem/project/p_reg.do">
						<div class="col-sm-12 pt-3">
							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title">
										<i class="fas fa-square"></i> 프로젝트 기본사항
									</h4>
									<p class="card-catagory"></p>
								</div>

								<table class="table">
									<tbody>
										<tr style="line-height: 32px;">
											<td>프로젝트 이름</td>
											<td><input type="text" id="prjct_nm" name="prjct_nm"
												class="form-control"></td>

											<td>관리자</td>
											<td><input type="text"
												class="form-control" value="관라지이름" maxlength="4"
												id="reg_admin" name="reg_admin"></td>
										</tr>

										<tr style="line-height: 32px;">
											<td>프로젝트 시작일</td>
											<td><div class="form-group">
													<div>
														<input type="date" id="prjct_bgnde" name="prjct_bgnde">
													</div>
												</div></td>

											<td>프로젝트 종료일</td>
											<td><div class="form-group">
													<div>
														<input type="date" id="prjct_endde" name="prjct_endde">
													</div>
												</div></td>
										</tr>

										<tr style="line-height: 32px;">
											<td>프로젝트 주관기관</td>
											<td><select class="form-control" id="prjct_mnnst"
												name="prjct_mnnst">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
											</select></td>
											<td>프로젝트 수탁회사</td>
											<td><select class="form-control" id="prjct_truentpr"
												name="prjct_truentpr">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
											</select></td>
										</tr>

										<tr style="line-height: 32px;">
											<td>위치</td>
											<td><select class="form-control" id="lc_atpt"
												name="lc_atpt">
													<option>서울</option>
													<option>경기</option>
													<option>제주</option>
											</select> <input type="text" class="form-control" style="width: 70px;"
												placeholder="용산" maxlength="4" id="lc_signgu"
												name="lc_signgu"></td>

											<td>위치 기타</td>
											<td><input type="text"
												class="form-control" placeholder="위치 - 기타" id="lc_etc"
												name="lc_etc"></td>
										</tr>

										<tr style="line-height: 32px;">
											<td>프로젝트 사업비</td>
											<td><input type="text" class="form-control"
												placeholder="" id="prjct_wct" name="prjct_wct"></td>

											<td>프로젝트 지분률</td>
											<td><input type="text" class="form-control"
												placeholder="" id="prjct_qota" name="prjct_qota"></td>
										</tr>

										<tr style="line-height: 32px;">
											<td>희망 투입 인원</td>
											<td><input type="text" class="form-control"
												placeholder="숫자만 입력해주세요." id="hope_inpt_nmpr"
												name="hope_inpt_nmpr"></td>

											<td>자사 투입 인원</td>
											<td><input type="text" class="form-control"
												placeholder="숫자만 입력해주세요." id="mmny_inpt_nmpr"
												name="mmny_inpt_nmpr"></td>
										</tr>


										<tr style="line-height: 32px;">
											<td>코사 증빙 요구</td>
											<td><label style="width: 50px;"> <input
													type="checkbox" class="form-control" value="Y"
													id="cosa_pruf_demand" name="cosa_pruf_demand" />해당
											</label></td>

											<td>자격증 증빙 요구</td>
											<td><label style="width: 50px;"> <input
													type="checkbox" class="form-control" value="Y"
													id="CRQFC_PRUF_DEMAND" name="CRQFC_PRUF_DEMAND" />해당
											</label></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 카드 끝나는 div -->


							<div class="card">
								<div class="card-header card-header-primary">
									<h4 class="card-title">
										<i class="fas fa-square"></i> 요구 자격증
									</h4>
									<p class="card-catagory"></p>
								</div>

								<table class="table">
									<tbody>
										<tr style="line-height: 32px;">
											<td>자격증</td>
											<td><input type="text" class="form-control" value=""
												id="" name=""></td>
											<td>사용언어</td>
											<td><input type="text" class="form-control" value=""
												id="" name=""></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- 카드 끝나는 div -->

							<div class="text-center mt-2">
								<button type="submit" class="btn btn-primary">등록하기</button>
								<button type="button" class="btn btn-secondary"
									onclick="location.href='/project_insystem/main.do'">취소하기</button>
							</div>
						</div>
					</form>
				</div>
				<!-- div컨테이너 끝 -->
			</div>
		</div>
	</div>
	</section>
</body>
</html>