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
	 <sf:form modelAttribute="teamlogin" method="POST" action="teamLogin" accept-charset="UTF-8">
                                    <sf:input path="name" id="name" class="form-control" type="text" placeholder="Team Name" name="name"/>
                                    <sf:input path="password" id="password" class="form-control" type="password" placeholder="Password" name="password"/>
                                    <input class="btn btn-default btn-login" type="submit" value="Login">
                                    </sf:form>
</body>
</html>