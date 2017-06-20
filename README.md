#學生成績系統
------------------
XML + JSP + Tomcat

------------------
不同作業系統要依據TOMCAT變數的資料夾修改XML檔案路徑
Ubuntu下
document=builder.parse("../webapps/xml/students.xml");

Windows下
document=builder.parse("/webapps/xml/students.xml");

------------------


