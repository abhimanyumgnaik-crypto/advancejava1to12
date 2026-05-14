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

        int visitCount = 1;
        boolean found = false;

        // Get existing cookies
        Cookie cookies[] = request.getCookies();

        if (cookies != null) {
            for (Cookie c : cookies) {
                if (c.getName().equals("visitCount")) {
                    visitCount = Integer.parseInt(c.getValue());
                    visitCount++;
                    found = true;
                }
            }
        }

        // Create / Update cookies
        Cookie nameCookie = new Cookie("username", name);
        Cookie countCookie = new Cookie("visitCount", String.valueOf(visitCount));

        // Set expiry (Demo: 60 seconds)
        nameCookie.setMaxAge(60);
        countCookie.setMaxAge(60);

        response.addCookie(nameCookie);
        response.addCookie(countCookie);

        out.println("<html><body>");

        if (found) {
            out.println("<h2>Welcome back " + name + "!</h2>");
        } else {
            out.println("<h2>Welcome " + name + "!</h2>");
        }

        out.println("<p>You have visited this page <b>" + visitCount + "</b> times.</p>");

        // Display all cookies
        out.println("<h3>List of Cookies:</h3>");

        Cookie allCookies[] = request.getCookies();

        if (allCookies != null) {
            for (Cookie c : allCookies) {
                out.println("Name: " + c.getName() + 
                            " | Value: " + c.getValue() + "<br>");
            }
        }

        // Expiry info
        out.println("<br><p><b>Note:</b> Cookies will expire in 60 seconds.</p>");

        out.println("<br><a href='index.html'>Go Back</a>");

        out.println("</body></html>");
    }
}