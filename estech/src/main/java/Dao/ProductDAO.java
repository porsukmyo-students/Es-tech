package Dao;

import Models.Product;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:25:22
 */
public class ProductDAO implements DAO<Product> {

	Connection connection;
	CallableStatement stmt;

	public ProductDAO()  {

		try{
			connection = ConnectionDb.getConnection();

		}
		catch (ClassNotFoundException e){
			System.err.println("Kütüphane bulunamadı...");
		}

		catch(SQLException ex){
			ex.printStackTrace();
		}



	}

	/**
	 * 
	 * @param item
	 */
	public void addItem(Product item){
		// add item
	}

	/**
	 * 
	 * @param id
	 */
	public Product getItem(int id)  {

		ResultSet rs;
		Product product = new Product();

		try {

			stmt = connection.prepareCall("{CALL GetProduct(?)}");
			stmt.setInt(1,id);

			rs  = stmt.executeQuery();


			rs.next();




			product.setCategoryId(rs.getString("CategoryId"));
			product.setBrand(rs.getString("Brand"));
			product.setQuantity(rs.getInt("Quantity"));
			product.setTitle(rs.getString("Title"));
            product.setProductNumber(rs.getInt("ProductNumber"));
            product.setPrice(rs.getInt("Price"));
			System.out.println("print1");
			byte[] data = rs.getBytes("Picture");
			System.out.println("print2");
			System.out.println("Picture :"+Base64.getEncoder().encodeToString(data));
			product.setPhoto(Base64.getEncoder().encodeToString(data));


		}


		catch (SQLException e){
            e.printStackTrace();
            return null;
		}


		return product;
	}

	public ArrayList<Product> getItems(){


		return null;
	}

	public ArrayList<Product> getItemByCategory(int category){
		ResultSet rs;
		Product product;
		ArrayList<Product> products = new ArrayList<>(50);
		try {

			stmt = connection.prepareCall("{CALL GetProducts(?)}");

			stmt.setInt(1,category);


			rs = stmt.executeQuery();


			while(rs.next()){
				product = new Product();
				product.setCategoryId(String.valueOf(category));
				product.setBrand(rs.getString("Brand"));
				product.setQuantity(rs.getInt("Quantity"));
				product.setTitle(rs.getString("Title"));
				product.setProductNumber(rs.getInt("ProductNumber"));
				product.setPrice(rs.getInt("Price"));

				byte data[] = rs.getBytes("Picture");

				product.setPhoto(Base64.getEncoder().encodeToString(data));
				System.out.println(product);
				products.add(product);
			}

		}

		catch (SQLException e){
			e.printStackTrace();
			return null;
		}
		return products;
	}


	/**
	 *
	 * @param item
	 * @return
	 */
	public Boolean updateItem(Product item){
		return null;
	}

	public static void main(String[] args) {
		ProductDAO productDAO = new ProductDAO();

		ArrayList<Product> list = new ArrayList<>(50);
        list = productDAO.getItemByCategory(1);

//        for (int i = 0 ; i<list.size();i++) {
//			System.out.println(list.get(i));
//			System.out.println(list.get(i));
//		}


		for(int i = 0 ; i < list.size();i++){
			System.out.println(list.get(i).getTitle());
		}

	}



}//end ProductDAO