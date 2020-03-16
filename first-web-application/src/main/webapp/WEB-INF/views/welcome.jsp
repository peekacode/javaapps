<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Peek-A-Tech</title>
</head>
<body>
	<div class="container">

		<h1>Welcome ${name}. You are now authenticated.</h1>
		<h6>Today's date: <%= (new java.util.Date()).toLocaleString()%></h6>
		<div class="menu">
			<p>
				<a href="/logout" title="logout">Logout</a>
			</p>
		</div>
		<div class="japps">
			<h1>Java Applications</h1>
			<p>
				<a href="/todo" title="todo">To-do Lists</a>
			</p>
		</div>
	</div>


</body>
</html>