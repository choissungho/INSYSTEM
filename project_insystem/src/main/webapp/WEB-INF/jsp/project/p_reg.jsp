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
	<div class="container body" style="margin-top: 5%;">
		<%@ include file="../common/sidebar.jspf"%>
		<!--@@@@@@@@@@@@@@@ 	콘텐츠부분 	@@@@@@@@@@@@@@@@@-->
		<form>
			<fieldset>
				<h2>프로젝트 등록</h2>

				<div class="form-group  col-md-6">
					<label for="exampleInputEmail1">프로젝트명</label> <input type=""
						class="form-control" id="project_name" placeholder="프로젝트명을 입력하세요">
				</div>

				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12">프로젝트 지역</label>
					<div class="col-sm-2">
						<select class="form-control" name="project_locat">
							<option value="미상">미상</option>
							<option value="서울">서울</option>
							<option value="부산">부산</option>
							<option value="대구">대구</option>
							<option value="인천">인천</option>
							<option value="광주">광주</option>
							<option value="대전">대전</option>
							<option value="울산">울산</option>
							<option value="세종">세종</option>
							<option value="경기">경기</option>
							<option value="강원">강원</option>
							<option value="충북">충북</option>
							<option value="충남">충남</option>
							<option value="전북">전북</option>
							<option value="전남">전남</option>
							<option value="경북">경북</option>
							<option value="경남">경남</option>
							<option value="제주">제주</option>
						</select>
					</div>

					<div class="col-sm-3">
						<input type="text" class="form-control" name="pjAreaGun"
							placeholder="시/군/구를 등록하세요">
					</div>
				</div>

				<div class="form-group col-md-3">
					<label for="exampleInputEmail1">필요인원</label> <input type=""
						class="form-control" id="exampleInputEmail1" placeholder="인원을 입력하세요.">
				</div>

				<div class="form-group col-md-3">
					<label for="exampleInputEmail1">주요기관</label> <input type=""
						class="form-control" id="exampleInputEmail1" placeholder="주관기관명을 입력하세요.">
				</div>


				<div class="form-group col-md-3">
					<label for="exampleInputEmail1">주관사</label> <input type=""
						class="form-control" id="exampleInputEmail1" placeholder="주관사명을 입력하세요.">
				</div>


				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12">시작일시</label>
					<div class="col-md-2 col-sm-2 col-xs-12">
						<input type="date" name="pjStartdt">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-md-3 col-sm-3 col-xs-12">시작일시</label>
					<div class="col-md-2 col-sm-2 col-xs-12">
						<input type="date" name="pjStartdt">
					</div>
				</div>


				<fieldset class="form-group col-md-3">
					<legend>자격증</legend>
					<div class="form-check">
						<label class="form-check-label col-sm-12"> <input
							class="form-check-input" type="checkbox" value="" checked="">정보처리기사
						</label> <label class="form-check-label col-sm-12"> <input
							class="form-check-input" type="checkbox" value="" checked="">리눅스마스터
						</label> <label class="form-check-label col-sm-12"> <input
							class="form-check-input" type="checkbox" value="" checked="">보안기사
						</label> <label class="form-check-label col-sm-12"> <input
							class="form-check-input" type="checkbox" value="" checked="">정보처리산업기사
						</label>
					</div>

				</fieldset>

				<div class="form-group col-md-4">
					<label for="exampleTextarea">기타 설명</label>
					<textarea class="form-control" id="exampleTextarea" rows="3"  placeholder="프로젝트 내용에 대한 설명을 쓰세요."></textarea>
				</div>

				<button type="submit" class="btn btn-primary col-sm-2" >Submit</button>
			</fieldset>
		</form>
	</div>
</body>
</html>