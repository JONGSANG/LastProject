<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div class="col-md-9">
	<form method="post">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">관리자 단체 메일 발송</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="form-group">
                <input class="form-control" name="subject" placeholder="제목 : ">
              </div>
              <div class="form-group">
                    <textarea id="compose-textarea" rows="20" name="text" cols="105" class="form-control" style="height: 300px; resize: none;"></textarea>
              </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <div class="pull-right">
                <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> 메일 발송</button>
              </div>
            </div>
            </form>
            <!-- /.box-footer -->
          </div>
</body>
</html>