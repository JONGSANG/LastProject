<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>도서 등록</title>
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
    </script>
</head>
<body>

	<div class="box box-info" style="width: 740px;">
		<div class="box-header with-border">
			<h3 class="box-title">신규 도서 등록</h3>
		</div>
		<!-- /.box-header -->
		<!-- form start -->
		<div class="box-body">
		<form action="registBook" method="post"  enctype="multipart/form-data">
<table class="viewtable" style="width: 700px;">
		<tr>
			<th width="150" rowspan="6">
				<img id="img_preview" width="150">
				<input type="file" name = "file" id = "file" accept="image/*" required="required">
			</th>
			<th width="90">번호</th>
			<th width="250">${BNO}</th>
			<input type="hidden" value="${BNO}" name="bNo">
		</tr>
		<tr>
			<th width="50">제목 명</th>
			<th width="250"><input type="text" name="bTitle" placeholder=" * 제목을 입력해주세요"></th>
		</tr>
		<tr>
			<th width="50">저자 명</th>
			<th width="100"><input type="text" name="bWriter"placeholder=" ex) 이OO"></th>
		</tr>
		<tr>
			<th width="50">출판사 명</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100"><input type="text" name="bCompany" placeholder=" ex) kosta"></th>
		</tr>
		<tr>
			<th width="50">출간년도</th>
			<%-- <th width="50">${bookVO.bNo }</th> --%>
			<th width="100"><input type="text" name="bYear" maxlength="4" placeholder=" ex) 2016"> 년</th>
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
			<th colspan="3"style=" height: 200px;" align="left">
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


</body>
</html>