<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>도서 등록</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">
        $(function() {
            $("#file").on('change', function(){
                readURL(this);
            });
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                    $('#img_preview').attr('src', e.target.result);
                }
              reader.readAsDataURL(input.files[0]);
            }
        }
    	function onlyNumber(event){
    		event = event || window.event;
    		var keyID = (event.which) ? event.which : event.keyCode;
    		if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
    			return;
    		else
    			return false;
    	}
    	
    	function removeChar(event) {
    		event = event || window.event;
    		var keyID = (event.which) ? event.which : event.keyCode;
    		if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
    			return;
    		else
    			event.target.value = event.target.value.replace(/[^0-9]/g, "");
    	}
    </script>
</head>
<body>
<h3>도서 등록</h3>
<form action="registBook" method="post"  enctype="multipart/form-data">
	<table width="600" border="1" >
		<tr>
			<th width="150" rowspan="6">
				<img id="img_preview" width="200">
				<input type="file" name = "file" id = "file" accept="image/*" required="required">
			</th>
			<th width="90">번호</th>
			<th width="250">${BNO}</th>
			<input type="hidden" value="${BNO}" name="bNo">
		</tr>
		<tr>
			<th width="50">제목 명</th>
			<th width="250">${lastBook.bTitle}</th>
			<input type="hidden" value="${lastBook.bTitle}" name="bTitle">
		</tr>
		<tr>
			<th width="50">저자 명</th>
			<th width="250">${lastBook.bWriter}</th>
			<input type="hidden" value="${lastBook.bWriter}" name="bWriter">
		</tr>
		<tr>
			<th width="50">출판사 명</th>
			<th width="250">${lastBook.bCompany}</th>
			<input type="hidden" value="${lastBook.bCompany}" name="bCompany">
		</tr>
		<tr>
			<th width="50">출간년도</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">
				<input type="text" name="bYear"  onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' 
				style='ime-mode:disabled;' maxlength="4" placeholder=" ex) 2016"> 년</th>
			</tr>
			<tr>
			<th width="50">구입 일자</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">
				<input type="date" name="buyDate">
			</th>
		</tr>
		<tr>
			<th colspan="3">책 소개</th>
		</tr>
		<tr>
			<th colspan="3" height="300" align="left">
			${lastBook.bIntro}
			<input type="hidden" value="${lastBook.bIntro}" name="bIntro">
			</th>
		</tr>
		<tr>
			<td colspan="3">
				<input type="submit" value="등록">
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>

</body>
</html>