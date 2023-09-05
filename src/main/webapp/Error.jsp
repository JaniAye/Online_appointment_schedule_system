<%--
  Created by IntelliJ IDEA.
  User: janid
  Date: 05/09/2023
  Time: 02:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isErrorPage="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Error</title>
</head>
<body>
<center>
  <h1>Error</h1>
  <h2><%=exception.getMessage() %><br/> </h2>
</center>
</body>
</html>
