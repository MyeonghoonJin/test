<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String className = request.getParameter("className");
		String profName = request.getParameter("profName");
		String description = request.getParameter("description");
		String ClassNum = request.getParameter("classNum");
		
		ArrayList<String> Classinfo = new ArrayList<>();
		
		Classinfo.add(className);
		Classinfo.add(profName);
		Classinfo.add(description);
		Classinfo.add(ClassNum);
		
		session.setAttribute("Classinfo",Classinfo);      
		//Classinfo -> C[0] = ClassName, C[1] = profName, C[2] = description, C[3] = ClassNum
	%>
	<jsp:forward page="TeamPage.jsp"/>
</body>
</html>