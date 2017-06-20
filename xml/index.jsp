<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page language="java" import="javax.xml.parsers.*" %>
    <%@ page language="java" import="org.xml.sax.*" %>
    <%@ page language="java" import="org.w3c.dom.*" %>
    <%@ page language="java" import="java.io.*" %>



    <%
    Document document;
    DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();
    DocumentBuilder builder=factory.newDocumentBuilder();

    /////////windows location="webapps/xml/students.xml"////////
try{
    document=builder.parse("../webapps/xml/students.xml");
}catch(Exception e){out.print(e);}
    %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>首頁</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">


  </head>
  <body>
    <nav>
      <div class="nav-wrapper">
        <a href="./index.jsp" class="brand-logo center"><i class="material-icons">cloud</i>XML</a>
        <ul class="right hide-on-med-and-down">
          <li><a href="sass.html"><i class="material-icons">search</i></a></li>
          <li><a href="badges.html"><i class="material-icons">view_module</i></a></li>
          <li><a href="collapsible.html"><i class="material-icons">refresh</i></a></li>
          <li><a href="mobile.html"><i class="material-icons">more_vert</i></a></li>
        </ul>
      </div>
    </nav>
    <div class="container">
<br><br><hr><br>
    <div class="row">
      <div class="col-md-3 center">
      <a href="./add.jsp" class="waves-effect waves-light btn">新增</a>
      </div>
      <div class="col-md-3 center">
        <a href="./change.jsp" class="waves-effect waves-light btn">修改</a>

      </div>
      <div class="col-md-3 center">
        <a href="./delete.jsp" class="waves-effect waves-light btn">刪除</a>

      </div>
      <div class="col-md-3 center">
        <a href="./query.jsp" class="waves-effect waves-light btn">查詢</a>
      </div>
    </div>

<br><br><hr>
    <div class="card">
      <div class="row">

      <div class="col-md-4">

      </div>
      <div class="col-md-4 center" >

<br>
  <h2>Welcome!</h2>
<h2>XML PARSE</h2>
      <br><br>
            </div>
            <div class="col-md-4">

            </div>
          </div>

    </div>
  </div>
<%


%>



  </body>
</html>
