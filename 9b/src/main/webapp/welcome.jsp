 <%@ page language="java" %>
<%@ page session="true" %>

<html>
<body>

<%
    // Set session timeout to 1 minute (60 seconds)
    session.setMaxInactiveInterval(60);

    String name = request.getParameter("username");

    if (name != null) {
        // Store name in session
        session.setAttribute("username", name);
    } else {
        // Retrieve from session
        name = (String) session.getAttribute("username");
    }

    if (name != null) {
%>

    <h2>Hello <%= name %>!</h2>
    <p>Your session is active.</p>

<%
    } else {
%>

    <h2>Session Expired!</h2>
    <p>Please enter your name again.</p>

<%
    }
%>

<br>
<p><b>Session ID:</b> <%= session.getId() %></p>
<p><b>Session will expire in 1 minute of inactivity.</b></p>

<br>
<a href="index.jsp">Go Back</a>

</body>
</html>