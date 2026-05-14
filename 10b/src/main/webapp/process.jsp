 <%@ page language="java" %>

<%
    try {
        String roll = request.getParameter("rollno");
        String name = request.getParameter("name");

        int s1 = Integer.parseInt(request.getParameter("sub1"));
        int s2 = Integer.parseInt(request.getParameter("sub2"));
        int s3 = Integer.parseInt(request.getParameter("sub3"));
        int s4 = Integer.parseInt(request.getParameter("sub4"));
        int s5 = Integer.parseInt(request.getParameter("sub5"));

        boolean valid = true;

        if (roll==null || roll.trim().isEmpty() ||
            name==null || name.trim().isEmpty() ||
            s1<0 || s2<0 || s3<0 || s4<0 || s5<0 ||
            s1>100 || s2>100 || s3>100 || s4>100 || s5>100) {
            valid = false;
        }

        if (!valid) {
            response.sendRedirect("index.jsp");
            return;
        }

        double avg = (s1+s2+s3+s4+s5)/5.0;
        String result = (s1>=40 && s2>=40 && s3>=40 && s4>=40 && s5>=40) ? "PASS" : "FAIL";

        // Pass data to result.jsp
        request.setAttribute("roll", roll);
        request.setAttribute("name", name);
        request.setAttribute("s1", s1);
        request.setAttribute("s2", s2);
        request.setAttribute("s3", s3);
        request.setAttribute("s4", s4);
        request.setAttribute("s5", s5);
        request.setAttribute("avg", avg);
        request.setAttribute("result", result);

        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request, response);

    } catch(Exception e) {
        response.sendRedirect("index.jsp");
    }
%>