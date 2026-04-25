 <%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>

    <script>
        function validateForm() {
            var name = document.forms["form"]["username"].value;
            var email = document.forms["form"]["email"].value;
            var desig = document.forms["form"]["designation"].value;

            if (name === "" || email === "" || desig === "") {
                alert("All fields are required!");
                return false;
            }

            var pattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            if (!email.match(pattern)) {
                alert("Invalid Email!");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

<h2>User Details Form</h2>

<form name="form" action="result.jsp" method="post" onsubmit="return validateForm()">
    Username: <input type="text" name="username"><br><br>
    Email: <input type="text" name="email"><br><br>
    Designation: <input type="text" name="designation"><br><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>