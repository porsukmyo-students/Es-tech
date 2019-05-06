package Controller;

import Dao.CategoryDAO;
import Dao.ConnectionDb;
import Dao.ProductDAO;
import Models.Product;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.sql.SQLException;
import java.util.ArrayList;

public class MainPageServlet extends HttpServlet {


    private Product findProduct(String id, HttpServletRequest request){
        ArrayList<Product> products = (ArrayList<Product>) request.getSession().getAttribute("products");
        Product product = null;
        for(Product p : products){
            if(String.valueOf(p.getProductNumber()).equals(id)){
                product = p;
            }
        }

        return product;

    }

    private void pageForward(String path  ,HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher =  getServletContext().getRequestDispatcher(path);
        dispatcher.forward(request,response);
    }


    private void process(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");


        if(action == null || action.equals("")){// Eğer action yoksa yani yeni açılmış ise
            ProductDAO productDAO = new ProductDAO();
            ArrayList<Product> products = productDAO.getItemByCategory(1);
            request.getSession().setAttribute("products",products);

            CategoryDAO categoryDAO = new CategoryDAO();

            request.getSession().setAttribute("categories",categoryDAO.getItems());
            pageForward("/index.jsp",request,response);
        }


        else if(action.equals("mainpage"))  //action ana sayfa ise ana sayfaya yönlendir
            pageForward("/index.jsp",request,response);


        else if(action.startsWith("getProducts")){ //action bu parametre ile başlıyor ise
            ProductDAO productDAO = new ProductDAO();

            String category_id = action.split("=")[1]; // category id'sini al

            ArrayList<Product> products = productDAO.getItemByCategory(Integer.parseInt(category_id));//ve tüm kategorileri veri tabanından al

            request.getSession().setAttribute("products",products); // alınan listeyi session'a ekle
           pageForward("/index.jsp",request,response); // ana sayfayı yükle


        }


        else if(action.startsWith("getProductDetail")){ // eğer ürün detayına bakmak isterse
            String product_number = action.split("=")[1];

            Product product = findProduct(product_number,request);


            request.setAttribute("product",product); // ürün-detay sayfasının alması için request'e at
            pageForward("/urun-detay.jsp",request,response); // ürün detaya git

        }


        else if(action.startsWith("addShoppinCart")){
            ArrayList<Product> products = (ArrayList<Product>) request.getSession().getAttribute("shopping_cart");
            String product_number = action.split("=")[1];


            if(products == null){
                products = new ArrayList<>();
            }

            products.add(findProduct(product_number,request));

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