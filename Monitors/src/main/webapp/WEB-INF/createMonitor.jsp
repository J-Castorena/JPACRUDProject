<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Monitor</title>
<!-- CSS only -->
<jsp:include page="bootstrapHead.jsp"/>
<jsp:include page="navbar.jsp"/>
</head>
<body>
<main class="container-fluid">

<h1>Create Monitor</h1>

<form action="submitCreateMonitorForm.do" method="POST">
  <div class="form-group">
    <label for="make"></label>
    <input type="text" name="make" class="form-control" id="make" aria-describedby="emailHelp" placeholder="Monitor MAKE:">
  </div>
  <div class="form-group">
    <label for="model"></label>
    <input type="text" name="model" class="form-control" id="model" aria-describedby="emailHelp" placeholder="Monitor MODEL:">
  </div>
  <div class="form-group">
    <label for="screenSize"></label>
    <input type="text" name="screenSize" class="form-control" id="screenSize" aria-describedby="emailHelp" placeholder="Monitor SCREEN SIZE:">
  </div>
  <br>
  <button type="submit" class="btn btn-secondary">Submit</button>
</form>


</main>

<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>