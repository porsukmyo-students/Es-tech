package Dao;


import Models.ProductComments;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:25:25
 */
public class ProductsCommetsDAO implements DAO<ProductComments> {
	Connection connection;
	PreparedStatement stmt;

	public ProductsCommetsDAO(){
		try {
			connection = ConnectionDb.getConnection();
		}

		catch (ClassNotFoundException e){
			System.err.println("Kütüphane bulunamadı...");
		}

		catch (SQLException e) {
			e.printStackTrace();
		}
	}


	/**
	 * 
	 * @param item
	 */
	public void addItem(ProductComments item){
		try {
			stmt = connection.prepareCall("{CALL AddException(?,?,?)}");

			stmt.setString(1,item.getTitle());
			stmt.setString(2,item.getContext());
			stmt.setString(3,"ip");




		} catch (SQLException e) {
			e.printStackTrace();
		}

		finally {
			try {
				if(stmt != null && !stmt.isClosed())
					stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	/**
	 * 
	 * @param id
	 */
	public ProductComments getItem(int id){
		return null;
	}

	public ArrayList<ProductComments> getItems(){
		return null;
	}

	/**
	 * 
	 * @param item
	 */
	public Boolean updateItem(ProductComments item){
		return null;
	}
}//end ProductsCommetsDAO