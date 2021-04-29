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
				</div>
			</div>
		</div>
	</section>
</body>
</html>