<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<!-- CSS only -->
<jsp:include page="bootstrapHead.jsp"/>
<jsp:include page="navbar.jsp"/>
</head>
<body>
<main class="container-fluid">


<c:choose>
	<c:when test="${! empty monitors}">
	
		<table class="table table-stripped">
			<thead class="table-dark"> 
				<tr>
					<th>ID</th>
					<th>Make</th>
					<th>Model</th>
					<th>Screen Size</th>
					<th>Delete</th>
					<th>Edit</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach var="monitor" items="${monitors}">
				<tr>
					<td>${monitor.id}</td>
					
					<td>${monitor.make}</td>
					
					<td>${monitor.model}</td>
					
					<td>${monitor.screenSize}</td>
					
					<td><a href="deleteMonitor.do?monitorId=${monitor.id}" type="button" class="btn btn-outline-danger btn-sm">x</a></td>
					<td><a href="editMonitor.do?monitorId=${monitor.id}" type="button" class="btn btn-outline-dark btn-sm">Edit</a></td>
					
				</tr>
				
			</c:forEach>
			
			</tbody>
		</table>
		
		
	</c:when>
	
	<c:otherwise>
		<h3>No Monitor Found</h3>
	</c:otherwise>
</c:choose>
<br>

<a href="createMonitor.do" type="button" class="btn btn-secondary">CREATE MONITOR</a>


</main>

<jsp:include page="bootstrapFoot.jsp" />

</body>
</html>