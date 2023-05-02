<%@ page language="java" contentType="text/html; charset=UTF-8"
    isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.spring.diary.DiaryDAO, com.spring.diary.DiaryVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: forestgreen;
  color: white;
}
</style>
<script>
	function delete_ok(id){
		var a = confirm("정말로 삭제하겠습니까?");
		if(a) location.href='deleteok/' + id;
	}
</script>
</head>
<body>
<h1>나의 비밀정원</h1>
<%--<%
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> list = boardDAO.getBoardList();
	request.setAttribute("list",list);
%>--%>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Writer</th>
	<th>Regdate</th>
	<th>Content</th>
	<th>Mood</th>
	<th>Goal</th>
	<th>Wakeup</th>
	<th>Payment</th>
	<th>Exercise</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.writer}</td>
		<td>${u.regdate}</td>
		<td>${u.content}</td>
		<td>${u.mood}</td>
		<td>${u.goal}</td>
		<td>${u.wakeup}</td>
		<td>${u.payment}</td>
		<td>${u.exercise}</td>
		<td><a href="editform/${u.seq}">Edit</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
	</tr>
</c:forEach>
</table>
<br/><a href="add">Add New Post</a>
</body>
</html>