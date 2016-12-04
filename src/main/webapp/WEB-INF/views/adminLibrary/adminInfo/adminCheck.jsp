<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	var fail='${fail}';
	
    if(fail=='fail'){
    	alert("비밀번호가 맞지 않습니다");
    }
</script>
<title>관리자정보 수정</title>
</head>
<body>
	 <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">관리자 비밀번호 수정</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form class="form-horizontal"method="post">
              <div class="box-body">
                <div class="form-group">
                <div class="col-sm-2"></div>
                 <div class="col-sm-10">
                    	초기 아이디를 발급받은 관리자는 반드시 비밀번호를 변경해주세요.<br>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">Password</label>

                  <div class="col-sm-10">
                    <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="Password" required>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
<!--                 <button class="btn btn-default" onclick="javascript:history.back()">취소하기</button> -->
                
                <button type="submit" class="btn btn-info pull-right">수정</button>
                </form>
                <button class="btn btn-default" onclick="location.href='/adminLibrary'">취소하기</button>
              </div>
              <!-- /.box-footer -->
            
          </div>
          <!-- /.box -->
</body>
</html>