 <%@ page session="true" %>
<%
    String name = request.getParameter("username");

    // Create session and store name
    session.setAttribute("user", name);

    // Set session timeout to 60 seconds (1 minute)
    session.setMaxInactiveInterval(60);
%>

<html>
<body>

<h2>Hello <%= name %>!</h2>
<p>Your session will expire in 1 minute.</p>

<a href="check.jsp">Check Session Status</a>

</body>
</html>