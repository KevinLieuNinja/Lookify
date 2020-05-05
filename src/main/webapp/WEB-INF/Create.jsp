<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		
		<title>Create</title>
</head>
<body>
	<div class="container">
		<h1>Create your world</h1>
		<form:form action="/songs/new" method="POST" modelAttribute="song">
		
			<p>
				Title:
				<form:input path="title"/>
				<form:errors path="title"/>
			</p>
			<p>
				Artist:
				<form:input path="artist"/>
				<form:errors path="artist"/>
			</p>
			<p>
				Rating:
				<form:select path="rating">
					<form:option value="1">1</form:option>
					<form:option value="2">2</form:option>
					<form:option value="3">3</form:option>
					<form:option value="4">4</form:option>
					<form:option value="5">5</form:option>
					<form:option value="6">6</form:option>
					<form:option value="7">7</form:option>
					<form:option value="8">8</form:option>
					<form:option value="9">9</form:option>
					<form:option value="10">10</form:option>
				</form:select>
				<form:errors path="rating"/>					
			</p>
			<button type="submit" class="btn btn-danger">submit</button>
		</form:form>
	</div>
</body>
</html>