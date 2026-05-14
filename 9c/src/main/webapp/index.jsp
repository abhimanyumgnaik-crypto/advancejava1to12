 <%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Session Management</title>
</head>
<body>

<h2>Enter Details</h2>

<form action="setSession.jsp" method="post">
    Name: <input type="text" name="username" required><br><br>
    Session Expiry Time (minutes): 
    <input type="text" name="time" required><br><br>
    
    <input type="submit" value="Submit">
</form>

</body>
</html>