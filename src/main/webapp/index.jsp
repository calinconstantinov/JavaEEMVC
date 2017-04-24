<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>

<head>
    <title>Page Title</title>
</head>

<body>
JSP - The content of the document
<h1>
    Current date:
    <%
        Date now = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/YYYY");
        out.println(sdf.format(now));
    %>
</h1>
<h2>
    Current date:
    <c:set var="now" value="<%=new java.util.Date()%>"/>
    <c:out value="${now}"/>
</h2>

</body>

</html>
