<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page language="java" import="javax.xml.parsers.*" %>
    <%@ page language="java" import="org.xml.sax.*" %>
    <%@ page language="java" import="java.io.*" %>
    <%@ page language="java" import="org.w3c.dom.*" %>
    <%@ page language="java" import="javax.xml.parsers.DocumentBuilder" %>
    <%@ page language="java" import="javax.xml.parsers.DocumentBuilderFactory" %>
    <%@ page language="java" import="javax.xml.transform.Transformer" %>
    <%@ page language="java" import="javax.xml.transform.TransformerFactory" %>
    <%@ page language="java" import="javax.xml.transform.dom.DOMSource" %>
    <%@ page language="java" import="org.w3c.dom.Attr" %>
    <%@ page language="java" import="org.w3c.dom.Document" %>
    <%@ page language="java" import="org.w3c.dom.Element" %>
    <%@ page language="java" import="javax.xml.transform.stream.StreamResult" %>


    <%
    request.setCharacterEncoding("UTF-8");

    String new_name=request.getParameter("name");
    String new_number=request.getParameter("number");
    String new_chinese=request.getParameter("chinese");
    String new_math=request.getParameter("math");
    %>
<%
request.setCharacterEncoding("UTF-8");

Document document;
DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();
DocumentBuilder builder=factory.newDocumentBuilder();
document=builder.parse("webapps/xml/students.xml");

Element stu=document.createElement("student");
stu.setAttribute("name", new_name);  

Element root=(Element)document.getFirstChild();

root.appendChild(stu);
Element name=document.createElement("name");
Element number = document.createElement("number");
Element chinese = document.createElement("chinese");
Element math = document.createElement("math");

name.setTextContent(new_name);
number.setTextContent(new_number);
chinese.setTextContent(new_chinese);
math.setTextContent(new_math);

stu.appendChild(name);
stu.appendChild(number);
stu.appendChild(chinese);
stu.appendChild(math);

TransformerFactory tf = TransformerFactory.newInstance();
Transformer former = tf.newTransformer();
former.setParameter("version", "1.0");
former.setParameter("encoding", "UTF-8");
DOMSource xmlSource = new DOMSource(document);
StreamResult outputTarget = new StreamResult(new File("webapps/xml/students.xml"));
former.transform(xmlSource, outputTarget);



%>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>首頁</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

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

    <h2>新增</h2><hr>
    <div class="card">
      <div class="row">

      <div class="col-md-4">

      </div>
      <div class="col-md-4 center" >

<br>
<h2>完成</h2>
<a href="./index.jsp" class="btn">返回主頁</a>
      <br><br>
            </div>
            <div class="col-md-4">

            </div>
          </div>

    </div>
  </div>


  </body>
</html>
