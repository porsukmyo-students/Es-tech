package Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String data = request.getParameter("mail");
        response.setCharacterEncoding("UTF-8");
        PrintWriter pw = response.getWriter();

        pw.write("<html><head></head><body><h1>");
        pw.write(data);
        pw.write("</h1></body></html>");
        pw.close();
    }


}
