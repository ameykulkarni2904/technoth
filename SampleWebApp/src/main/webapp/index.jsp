<%@page import="com.psl.model.Admin"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
<h2>Hello World! Welcome to the session on Maven</h2>
${admin }
<sf:form modelAttribute="admin1" method="POST">
		name:<sf:input path="name"/><sf:errors path="name"></sf:errors><br>
		email ID:<sf:input path="emailID"/><sf:errors path="emailID"></sf:errors><br>
		employee ID:<sf:input path="empID"/><sf:errors path="empID"></sf:errors><br>
		<input type="submit" value="Submit">
	</sf:form>
	
</body>
</html>
