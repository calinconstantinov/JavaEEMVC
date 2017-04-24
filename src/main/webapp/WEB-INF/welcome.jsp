<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <title>Page Title</title>
</head>

<body>
Hello
<c:out value="${user.firstName}"/>
<c:out value="${user.lastName}"/>
</body>

</html>
