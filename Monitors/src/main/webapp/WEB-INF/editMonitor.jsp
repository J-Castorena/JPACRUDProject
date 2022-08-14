<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Monitor</title>
<!-- CSS only -->
<jsp:include page="bootstrapHead.jsp"/>
<jsp:include page="navbar.jsp"/>
</head>
<body>
<main class="container-fluid">

<h1>Edit Monitor</h1>

<form action="submitEditMonitorForm.do" method="POST">
  <div class="form-group">
  <input type="hidden" name="id" value="${monitor.id}">
    <label for="make"></label>
    <input type="text" name="make" class="form-control" id="make" value="${monitor.make}">
  </div>
  <div class="form-group">
    <label for="model"></label>
    <input type="text" name="model" class="form-control" id="model" value="${monitor.model}">
  </div>
  <div class="form-group">
    <label for="screenSize"></label>
    <input type="text" name="screenSize" class="form-control" id="screenSize" value="${monitor.screenSize}">
  </div>
  <br>
  <button type="submit" class="btn btn-secondary">Submit</button>
</form>


</main>

<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>