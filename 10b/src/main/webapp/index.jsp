 <%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
    <title>Student Form</title>

    <script>
        function validateForm() {
            let f = document.form;

            if (f.rollno.value=="" || f.name.value=="" ||
                f.sub1.value=="" || f.sub2.value=="" ||
                f.sub3.value=="" || f.sub4.value=="" ||
                f.sub5.value=="") {

                alert("All fields required!");
                return false;
            }

            let marks = [f.sub1.value,f.sub2.value,f.sub3.value,f.sub4.value,f.sub5.value];

            for (let i=0;i<marks.length;i++) {
                if (marks[i] < 0 || marks[i] > 100) {
                    alert("Marks must be 0-100");
                    return false;
                }
            }

            return true;
        }
    </script>
</head>
<body>

<h2>Student Marks Entry</h2>

<form name="form" action="process.jsp" method="post" onsubmit="return validateForm()">
    Roll No: <input type="text" name="rollno"><br><br>
    Name: <input type="text" name="name"><br><br>

    Sub1: <input type="text" name="sub1"><br><br>
    Sub2: <input type="text" name="sub2"><br><br>
    Sub3: <input type="text" name="sub3"><br><br>
    Sub4: <input type="text" name="sub4"><br><br>
    Sub5: <input type="text" name="sub5"><br><br>

    <input type="submit" value="Calculate">
=======
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
>>>>>>> branch 'master' of https://github.com/abhimanyumgnaik-crypto/advancejava1to12.git
</form>

</body>
</html>