<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

      <tiles:insertAttribute name="header" />
   		
      <tiles:insertAttribute name="body" />
  
      <tiles:insertAttribute name="footer" />

</body>
</html>