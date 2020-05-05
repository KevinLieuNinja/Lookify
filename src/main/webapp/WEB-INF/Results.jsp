<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		
		<title>Results</title>
</head>
<body>
	<div class="container">
		<table class="table">
			<thead>
				<tr>
					<th>Title</th>
					<th>Artist</th>
					<th>Rating</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${results}" var="song">
					<tr>
						<td> 
							<a href="/song/${song.id}"><c:out value="${song.title }"/> </a> 
						</td>
						<td> <c:out value="${song.artist }"/> </td>
						<td><c:out value="${song.rating }"/> </td>
						<td>
							<form action="song/${ song.id }" method="POST">
								<input type="hidden" name="_method" value="delete">
								<input type="submit" value="Delete">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>