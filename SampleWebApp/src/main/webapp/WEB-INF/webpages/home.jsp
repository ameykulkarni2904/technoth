<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Hello World! Welcome to the session on Maven</h2>
${admin }
<sf:form modelAttribute="admin" method="POST">
		name:<sf:input path="name"/><sf:errors path="name"></sf:errors><br>
		email ID:<sf:input path="emailID"/><sf:errors path="emailID"></sf:errors><br>
		employee ID:<sf:input path="empID"/><sf:errors path="empID"></sf:errors><br>
		<input type="submit" value="Submit">
	</sf:form>
</body>
</html>