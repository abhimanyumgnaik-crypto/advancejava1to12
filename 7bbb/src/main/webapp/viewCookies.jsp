 <%@ page language="java" %>
<%@ page import="javax.servlet.http.Cookie" %>

<html>
<body>

<h2>Active Cookies</h2>

<%
    Cookie cookies[] = request.getCookies();

    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
%>
            <p>
                <b>Name:</b> <%= cookies[i].getName() %> <br>
                <b>Value:</b> <%= cookies[i].getValue() %>
            </p>
            <hr>
<%
        }
    } else {
%>
        <p>No cookies found</p>
<%
    }
%>

<br>
<a href="index.jsp">Back</a>

</body>
</html>