 <%@ page language="java" %>
<%@ page import="javax.servlet.http.Cookie" %>

<html>
<body>

<%
    String name = request.getParameter("cname");
    String domain = request.getParameter("cdomain");
    int age = Integer.parseInt(request.getParameter("cage"));

    Cookie cookie = new Cookie(name, "SampleValue");

    cookie.setDomain(domain);   // Domain
    cookie.setMaxAge(age);      // Expiry time

    response.addCookie(cookie);
%>

<h2>Cookie Added Successfully!</h2>

<p><b>Name:</b> <%= name %></p>
<p><b>Domain:</b> <%= domain %></p>
<p><b>Max Age:</b> <%= age %> seconds</p>

<br>
<a href="viewCookies.jsp">Go to Active Cookie List</a>

</body>
</html>