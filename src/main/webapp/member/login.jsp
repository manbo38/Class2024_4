<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="member" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="member"/>

<%
	MemberDAO dao = MemberDAO.getInstance();
	int result = dao.memberCheck(member);	// 회원인증 처리
	
	if(result == 1){		// 회원인증 성공
		
		// 세션 공유 설정
		session.setAttribute("id", member.getId());
%>
	<script>
		alert("로그인 성공");
		location.href="main.jsp";
	</script>

<% }else{	// 회원인증 실패 %>
	<script>
		alert("로그인 실패");
// 		location.href="loginform.html";
		history.go(-1);
	</script>

<% } %>
 