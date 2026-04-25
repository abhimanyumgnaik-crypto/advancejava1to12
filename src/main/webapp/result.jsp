 <%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
</head>
<body>

<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String designation = request.getParameter("designation");

    boolean valid = true;

    if (username == null || username.trim().isEmpty() ||
        email == null || email.trim().isEmpty() ||
        designation == null || designation.trim().isEmpty()) {
        valid = false;
    }

    if (email != null && !email.matches("^[^ ]+@[^ ]+\\.[a-z]{2,3}$")) {
        valid = false;
    }

    if (valid) {
%>

    <h2>User Details Submitted</h2>

    <p><b>Username:</b> <%= username %></p>
    <p><b>Email:</b> <%= email %></p>
    <p><b>Designation:</b> <%= designation %></p>

<%
    } else {
%>

    <h2 style="color:red;">Invalid Input! Please try again.</h2>

<%
    }
%>

<br>
<a href="index.jsp">Go Back to Form</a>

</body>
</html>