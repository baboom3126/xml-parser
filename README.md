#Student_Grade_System
------------------
XML + JSP + Tomcat

According to different operating system, it's necessary to change the path of the xml file.

Ubuntu 16.04:
document=builder.parse("../webapps/xml/students.xml");

Windows 8/10:
document=builder.parse("/webapps/xml/students.xml");



