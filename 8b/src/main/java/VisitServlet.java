 import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/VisitServlet")
public class VisitServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("username");

        int visitCount = 0;
        boolean returningUser = false;

        // Read existing cookies
        Cookie cookies[] = request.getCookies();

        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("visitCount")) {
                    visitCount = Integer.parseInt(c.getValue());
                    returningUser = true;
                }
                if (c.getName().equals("username")) {
                    name = c.getValue(); // restore name
                }
            }
        }

        // Increment visit count
        visitCount++;

        // Create cookies
        Cookie nameCookie = new Cookie("username", name);
        Cookie countCookie = new Cookie("visitCount", String.valueOf(visitCount));

        // Set expiry time (Demo: 60 seconds)
        nameCookie.setMaxAge(60);
        countCookie.setMaxAge(60);

        // Add cookies to response
        response.addCookie(nameCookie);
        response.addCookie(countCookie);

        out.println("<html><body>");

        // Greeting
        if (returningUser) {
            out.println("<h2>Welcome back " + name + "!</h2>");
        } else {
            out.println("<h2>Welcome " + name + "!</h2>");
        }

        out.println("<p>You have visited this page <b>" + visitCount + "</b> times.</p>");

        // Display all cookies with values
        out.println("<h3>List of Cookies and Values:</h3>");

        Cookie allCookies[] = request.getCookies();

        if (allCookies != null) {
            for (Cookie c : allCookies) {
                out.println("<p>Name: " + c.getName() +
                            " | Value: " + c.getValue() + "</p>");
            }
        } else {
            out.println("<p>No cookies found</p>");
        }

        // Expiry demonstration message
        out.println("<br><p><b>Note:</b> Cookies will expire in 60 seconds.</p>");
        out.println("<p>After expiry, visit count will reset.</p>");

        out.println("<br><a href='index.html'>Go Back</a>");

        out.println("</body></html>");
    }
}