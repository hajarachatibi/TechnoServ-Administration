<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ma.fstt.entities.CV" import="java.util.List"%>
<!DOCTYPE html>
<% List<CV> lc=(List<CV>) request.getAttribute("lcv"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<div class="container">
<div class="row justify-content-center">
<div class="col-7">
<% for(int i=0;i<lc.size();i++){ %>
<div class="card" style="width: 18rem;">
  <img src="cv.png" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">FIle</h5>
    <p class="card-text">CV</p>
    <form method="get" action="delete.p">
   <input  type="hidden" name="val" value="<%=lc.get(i).getId()%>" />
   <input type="submit" class="btn btn-primary " value="Consulter">
  </form>
  </div>
  </div>
<%} %>
</div>
</div>
</div>
</body>
</html>