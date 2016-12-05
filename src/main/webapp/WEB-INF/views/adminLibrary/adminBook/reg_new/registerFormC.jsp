<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>연속간행물 등록</title>
<style type="text/css">
tr{text-align: center;}
th{text-align: center;}
</style>
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
	<div class="box box-info" style="width: 740px;">
		<div class="box-header with-border">
			<h3 class="box-title">연속간행물 등록</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<div class="box-body">
<form action="registBook" method="post"  enctype="multipart/form-data">
<table class="viewtable" style="width: 700px;">
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
			<th width="50">간행물종류</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100">${lastBook.bCompany}</th>
			<input type="hidden" value="${lastBook.bCompany}" name="bNo">
		</tr>
		
		<tr>
			<th width="50">전체 이름</th>
			<th width="250"><input type="text" name="bTitle" placeholder=" ex) ${lastBook.bCompany} : 1월 [2015] "></th>
		</tr>
		<tr>
			<th width="50">저자 명</th>
			<th width="100"><input type="text" name="bWriter"placeholder=" ex) kosta 편집부"></th>
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
				<textarea style="resize: none;" name="bIntro" rows="16" cols="82"
				placeholder=" 
					* 간단한 책소개를 입력하세요.
					" ></textarea>
			</th>
		</tr>
		<tr>
			<td colspan="3" >
				<button type="submit" class="btn btn-info pull-right" >등록</button>
				<button onclick="location.href='index'"
				class="btn btn-info pull-right">취소</button>
			</td>
		</tr>
	</table>
</form>

		</div>
		<!-- /.box-body -->
		<div class="box-footer">
		</div>
		<!-- /.box-footer -->

	</div>
	<!-- /.box -->



<h3>연속간행물 등록</h3>

</body>
</html>