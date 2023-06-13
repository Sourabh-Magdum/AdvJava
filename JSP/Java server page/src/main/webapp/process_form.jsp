<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="pojos.Student" %>
    <%@page import="pojos.Course" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
//<h4> Form process form page......</h4>
<%
//out.flush();//exc
//1.read req param:students details
String fname=request.getParameter("fn");
String lname=request.getParameter("ln");
int score= Integer.parseInt(request.getParameter("score"));
Course c= Course.valueOf(request.getParameter("course").toUpperCase());
//2 wrap all the details under students object
//String firstName, String lastName, int score, Course selectedCourse
Student s1 = new Student(fname,lname,score,c);
if(score >c.getMinScore())
	s1.setAdmitted(true);
//server pull:forward
//min scope of attributes:page|request|appln---re
//add attribute
request.setAttribute("student_info",s1);
//RD
RequestDispatcher rd=request.getRequestDispatcher("result.jsp");
rd.forward(request,response);
System.out.println("exec control came back....");
	
%>

</body>
</html>