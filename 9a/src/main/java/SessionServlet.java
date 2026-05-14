 import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get session object
        HttpSession session = request.getSession(true);

        // Set session timeout (1 minute = 60 seconds)
        session.setMaxInactiveInterval(60);

        Integer visitCount = (Integer) session.getAttribute("visitCount");

        if (visitCount == null) {
            visitCount = 1;
        } else {
            visitCount++;
        }

        session.setAttribute("visitCount", visitCount);

        out.println("<html><body>");
        out.println("<h2>Session Tracking Information</h2>");

        // Display session details
        out.println("<p><b>Session ID:</b> " + session.getId() + "</p>");
        out.println("<p><b>Session Creation Time:</b> " 
                + new Date(session.getCreationTime()) + "</p>");
        out.println("<p><b>Last Access Time:</b> " 
                + new Date(session.getLastAccessedTime()) + "</p>");
        out.println("<p><b>Visit Count:</b> " + visitCount + "</p>");

        out.println("<br><p><b>Note:</b> Session will expire after 1 minute of inactivity.</p>");

        out.println("<br><a href='index.html'>Back</a>");
        out.println("</body></html>");
    }
}