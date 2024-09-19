<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	System.out.println("id:"+ id);
	
	MemberDAO dao = MemberDAO.getInstance();
	int result = dao.memberAuth(id);	// ID중복검사
	System.out.println("result:"+ result);
// result : 1 (중복 ID)
// result : -1 (사용 가능한 ID)

	// 웹브라우저에 출력되는 값이 callback 함수로 리턴된다.
	out.println(result);
%>