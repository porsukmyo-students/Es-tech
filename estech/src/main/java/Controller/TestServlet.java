package Controller;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TestServlet")
public class TestServlet extends GenericServlet {

    @Override
    public void service(ServletRequest req, ServletResponse response) throws ServletException, IOException {
        response.getWriter().write("Hello World");
        response.getWriter().close();

    }
}
