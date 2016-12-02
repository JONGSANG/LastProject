<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>방과후 학교</title>
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
	<section>
		<div id="word">
			<font style="font-size: 40px">방과후 학교</font>
		</div>
		<div id="link">
			<div id="link35">
				<a href="/">home ></a><a href="#">서비스 >&nbsp;</a>
			</div>
			<b>방과후 학교</b>
		</div>
	</section>
	<div id="insidebody">
<form enctype="multipart/form-data" method="post">
<input type = "hidden" name = "id" value = "${afterVO.id }">
	<table class="listread" style="margin-right: 20px;" >
	<tr>
	<th width="80px">카테고리</th><td align="center" valign="middle" width="80px">
	<select style="background-color: white; border: 0"  name = "aselect" required="required">
		<option value = "">카테고리</option>
		<option value = "맞고">맞고</option>
		<option value = "포커">포커</option>
		<option value = "고스톱">고스톱</option>
		<option value = "체스">체스</option>
	</select>
	</td>
	<th width="80px">시작 날짜</th><td align="center" valign="middle" width="100px">
		<input type="text" id="start_date" name="start_date" tabindex="1" size="23" 
								style="text-align: center; font-size: 13px; width : 70px; height: 25px; IME-MODE:disabled; text-align: center; background-color: white;"
								onkeypress="if (event.keyCode<7 || event.keyCode>9)  event.returnValue=false;" >
								<img src="/resources/images/login/login_56.png" style="margin-top: 3px" height="25" onClick="datePicker(event,'start_date')">
	</td>
	<th width="80px">종료 날짜</th><td align="center" valign="middle" width="100px">
		<input type="text" id="end_date" name="end_date" tabindex="1" size="23" 
								style="text-align: center; font-size: 13px; width : 70px; height: 25px; IME-MODE:disabled; text-align: center; background-color: white;"
								onkeypress="if (event.keyCode<7 || event.keyCode>9)  event.returnValue=false;" >
								<img src="/resources/images/login/login_56.png" style="margin-top: 3px" height="25" onClick="datePicker(event,'end_date')">
	</td>
	<th width="70px">인원수</th><td width="50px" align="center">
	<input type='text'  		placeholder="숫자"
								onkeypress="if (event.keyCode<48|| event.keyCode>57)  event.returnValue=false;"  
								style='IME-MODE:disabled; text-align: center; background-color: white; border: 0; margin-top: 4px'  
              					size="2" 
              					name="max_cnt" 
              					pattern=".{1,2,3}" 
              					maxlength="3">
	</tr>
	
	<tr>
		<th>제목</th>
		<td id="listcontents" colspan="4" valign="middle" style="padding-left: 10px; padding-top: 5px">
		<input id="write" style="width: 270px; " type="text" name='title' placeholder="제목을 입력해 주세요.">
		</td>
		<th width="110px">파일 업로드</th>
		<td align="center" valign="middle" colspan="2" width="150px">
		<input style="width: 100px; background-color: white; height: 25px; margin-top: 8px" type = "file" name = "file"  required="required">
		</td>
	</tr>
		<tr>
			<td colspan="8" style="padding-top: 10px" align="center">
			<img id="img_preview" width="200">
			<textarea style="padding: 10px 0 0 10px" id="regiwrite" name="content" rows="20" cols="105" placeholder="내용을 입력해 주세요." ></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="8" style="border: none; padding-top: 5px"><div class="fright"><button type="submit">글쓰기</button></div></td>
		</tr>
	</table>
</form>

</div>
</body>
</html>