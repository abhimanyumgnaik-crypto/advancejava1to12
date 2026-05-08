 <%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
</head>
<body>

<<<<<<< HEAD
<h2>Student Result</h2>

<p><b>Roll No:</b> <%= request.getAttribute("roll") %></p>
<p><b>Name:</b> <%= request.getAttribute("name") %></p>

<p>Sub1: <%= request.getAttribute("s1") %></p>
<p>Sub2: <%= request.getAttribute("s2") %></p>
<p>Sub3: <%= request.getAttribute("s3") %></p>
<p>Sub4: <%= request.getAttribute("s4") %></p>
<p>Sub5: <%= request.getAttribute("s5") %></p>

<p><b>Average:</b> <%= request.getAttribute("avg") %></p>
<p><b>Result:</b> <%= request.getAttribute("result") %></p>

<br>
<a href="index.jsp">Go Back</a>
=======
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
>>>>>>> branch 'master' of https://github.com/abhimanyumgnaik-crypto/advancejava1to12.git

</body>
</html>