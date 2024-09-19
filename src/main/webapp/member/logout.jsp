<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 세션 삭제 : 서버와 클라인언트의 연결이 끊어진다.
	session.invalidate();
%>

<script>
	alert("로그아웃");
	location.href="loginform.html";
</script>