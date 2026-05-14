 <%@ page session="true" %>
<%
    String name = (String) session.getAttribute("user");

    if (name == null) {
        response.sendRedirect("expired.jsp");
    }
%>

<html>
<body>

<h2>Welcome back <%= name %>!</h2>
<p>Session is still active.</p>

</body>
</html>