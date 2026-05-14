 <%@ page language="java" %>
<%@ page session="true" %>

<html>
<body>

<%
    String name = request.getParameter("username");
    int minutes = Integer.parseInt(request.getParameter("time"));

    // Set session expiry (convert minutes → seconds)
    session.setMaxInactiveInterval(minutes * 60);

    // Store name
    session.setAttribute("username", name);
%>

<h2>Hello <%= name %>!</h2>

<p>Your session is set for <b><%= minutes %></b> minute(s).</p>

<p>
<a href="checkSession.jsp">Click here to check session status</a>
</p>

<p>👉 Click the link within time OR wait to see session expiry.</p>

</body>
</html>