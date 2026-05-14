 <%@ page language="java" %>
<%@ page session="true" %>

<html>
<body>

<%
    String name = (String) session.getAttribute("username");

    if (name != null) {
%>

    <h2>Hello <%= name %>! Your session is still active.</h2>
    <p>Session ID: <%= session.getId() %></p>

<%
    } else {
%>

    <h2>Session Expired!</h2>
    <p>Please start again.</p>

<%
    }
%>

<br>
<a href="index.jsp">Go Back</a>

</body>
</html>