package Controller;

import Dao.CustomerDAO;
import Models.Customer;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class UserServlet extends HttpServlet {




    private void pageForward(String path  ,HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(path);
        dispatcher.forward(request,response);
    }


    private void process(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");


        //Header'daki kullanıcı buttonları başlangıcı

        if(action.equals("sign-in") ||  action == null || action.equals(""))
            pageForward("/giris.jsp", request, response);

        else if(action.equals("sign-up"))
            pageForward("/uyekayit.jsp",request,response);


        else if(action.equals("shopping-cart"))
            pageForward("/sepet.jsp",request,response);


        else if(action.equals("orders"))
            pageForward("/siparislerim.jsp",request,response);


        else if(action.equals("my-account"))
            pageForward("/hesabım.jsp",request,response);



        else if(action.equals("sing-out")){

            HttpSession session = request.getSession(false);

            if(session!=null)
                session.invalidate();

            //            request.getSession().setAttribute("user",null);
            request.setAttribute("action","mainpage");
            pageForward("/index.jsp",request,response);
        }




        else if(action.equals("login-control")){
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
                request.setAttribute("action","mainpage");
                response.sendRedirect("/estech_war_exploded/mainpage");
            }

        }

        //Header'daki kullanıcı buttonları başlangıcı


        else if(action.equals("add-user")){
            Customer customer = new Customer();
            CustomerDAO customerDAO = new CustomerDAO();


            customer.setName(request.getParameter("name"));
            customer.setSurName(request.getParameter("surname"));
            customer.setMail(request.getParameter("mail"));
            customer.setPassword(request.getParameter("password"));
            customer.setPhoneNumber(request.getParameter("phone"));

            customerDAO.addItem(customer);
            pageForward("/giris.jsp",request,response);

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
