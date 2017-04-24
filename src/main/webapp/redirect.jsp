<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>

<head>
    <title>Page Title</title>
</head>

<body>
Redirected
<h2>
    Current date:
    <c:set var="now" value="<%=new java.util.Date()%>"/>
    <c:out value="${now}"/>
</h2>

</body>

</html>
