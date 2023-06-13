<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="pojos.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h5>Hello, ${param.fn}</h5>
<%
//get student details form request scope
Student s=(Student)request.getAttribute("student_info");
if(s.isAdmitted()){
%>
<h5 style="colour:green;">Congratulations, You are admitted in 
${requestScope.student_info.selectedCourse}</h5>
<%
}else{
%>
<h5 style="colour:red;">Sorry!!!, You are not admitted in 
${requestScope.student_info.selectedCourse}</h5>
<% 
}
%>
</body>
</html>