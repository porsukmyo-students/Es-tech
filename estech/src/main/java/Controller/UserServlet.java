package Controller;

import Dao.CustomerDAO;
import Models.Customer;

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

        if(action.equals("login") ||  action == null || action.equals(""))
            pageForward("/giris.jsp",request,response);

        else if(action.equals("register"))
            pageForward("/uyekayit.jsp",request,response);


        else if(action.equals("basket"))
            pageForward("/sepet.jsp",request,response);


        else if(action.equals("sing-in")){
            CustomerDAO customerDAO = new CustomerDAO();
            Customer customer = customerDAO.getItemByMail(request.getParameter("mail"));

            log(customer.toString());
            log("username: "+request.getParameter("mail"));
            log("password: "+request.getParameter("password"));

            if(customer == null){

            }


            else if(customer.getPassword().equals(request.getParameter("password"))){
                log("pass: ");
                request.getSession().setAttribute("user",customer);
                request.setAttribute("action",null);
                pageForward("/index.jsp",request,response);
            }



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
