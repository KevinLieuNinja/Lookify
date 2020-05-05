<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		
		<title>Show</title>
</head>
<body>

	<div class="container">
		<h1>${song.title}</h1>
		<br/>
		<h3>Artist: ${song.artist}</h3>
		<br/>
		<h3>Rating (1-10): ${song.rating}</h3>
		<br/>
		
		<form action="/song/${song.id}" method="POST">
			<input type="hidden" name="_method" value="delete">
			<input type="submit" value="Delete">
		</form>
		<a href="/dashboard">Dashboard</a>
	</div>
</body>
</html>