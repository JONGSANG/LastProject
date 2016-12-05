<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>개인정보 수정</title>
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
                    	변경할 새로운 비밀번호를 입력해 주세요.<br>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">Password</label>

                  <div class="col-sm-10">
                    <input type="password" name="pwd" class="form-control" id="inputPassword3" placeholder="최대 12자 영문/숫자" maxlength="12" required>
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