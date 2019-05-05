package Controller;

import Dao.CategoryDAO;
import Dao.ConnectionDb;
import Dao.ProductDAO;
import Models.Product;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class MainPageServlet extends HttpServlet {


    private void pageForward(String path  ,HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(path);
        dispatcher.forward(request,response);
    }


    private void process(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if(action == null || action.equals("")){
            ProductDAO productDAO = new ProductDAO();
            ArrayList<Product> products = productDAO.getItemByCategory(1);
            request.setAttribute("products",products);

            CategoryDAO categoryDAO = new CategoryDAO();

            request.getSession().setAttribute("categories",categoryDAO.getItems());
            pageForward("/index.jsp",request,response);
        }


        else if(action.equals("mainpage"))
            pageForward("/index.jsp",request,response);


        else if(action.startsWith("getProducts")){
            ProductDAO productDAO = new ProductDAO();

            String category_id = action.split("=")[1];

            ArrayList<Product> products = productDAO.getItemByCategory(Integer.parseInt(category_id));

            request.setAttribute("products",products);

           pageForward("/index.jsp",request,response);

        }

    }



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        process(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        process(req,resp);
    }

    @Override
    public void destroy() {
        try {
            ConnectionDb.closeConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}