package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserServlet extends HttpServlet {




    private void pageForward(String path  ,HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(path);
        dispatcher.forward(request,response);
    }


    private void process(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if(action.equals("login") ||  action == null || action.equals("")){

            pageForward("/giris.jsp",request,response);

        }


        else if(action.equals("register")){
            pageForward("/uyekayit.jsp",request,response);
        }



    }




    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    process(req,resp);




    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        process(request,response);




    }


}
