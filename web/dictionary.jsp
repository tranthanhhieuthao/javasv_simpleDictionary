<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: hieuthao
  Date: 22/06/19
  Time: 18:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String , String> dic = new HashMap<>();
%>

<%
    dic.put("hello","Xin chao");
    dic.put("how","the nao");
    dic.put("book","Quyen vo");
    dic.put("computer","May tinh");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result !=null) {
        out.println("Word: " + search);
        out.println("Result: " + result);
    } else {
        out.println("Not found");
    }
%>
</body>
</html>
