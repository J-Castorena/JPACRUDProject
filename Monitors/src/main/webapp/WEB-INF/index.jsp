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
<div>

<img src="https://i01.appmifile.com/webfile/globalimg/products/pc/mi-23-8-desktop-monitor-1c/overview-3.jpg" class="img-fluid" alt="...">

</div>
<br>
<h1 style="text-align:center">Monitor Track App</h1>
<br>
<c:choose>
	<c:when test="${! empty monitors}">
	
		<table class="table table-stripped">
			<thead class="table-dark"> 
				<tr>
					<th>ID</th>
					<th>Make</th>
					<th>Model</th>
					<th>Screen Size</th>
					<th>Price</th>
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
					
					<td>${monitor.price}</td>
					
					<td><a href="deleteMonitor.do?monitorId=${monitor.id}" type="button" class="btn btn-danger btn-sm">x</a></td>
					<td><a href="editMonitor.do?monitorId=${monitor.id}" type="button" class="btn btn-primary btn-sm">Edit</a></td>
					
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