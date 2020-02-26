import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {

    int count = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        count++;
        String name = req.getParameter("name");
        if (name == null){
            name = "World";
        }

        res.setContentType("text/html");

        PrintWriter out = res.getWriter();
        out.println("<h1>Hello, "+name+"</h1>");
        out.println("<p>Page Visits = "+count+"</p>");

    }
}
