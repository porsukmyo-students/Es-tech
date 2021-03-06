package Dao;

import Models.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:25:23
 */
public class CustomerDAO implements DAO<Customer> {

	Connection connection ;
	PreparedStatement stmt;


	public CustomerDAO(){
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
	public void addItem(Customer item){
		stmt = null;

		try{
			stmt = connection.prepareCall("{CALL AddCustomer(?,?,?,?,?)}");
			stmt.setString(1,item.getName());
			stmt.setString(2,item.getSurName());
			stmt.setString(3,item.getPassword());
			stmt.setString(4,item.getMail());
			stmt.setString(5,item.getPhoneNumber());
			stmt.execute();
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
	public Customer getItem(int id){

		Customer customer ;
		stmt = null;
		ResultSet rs=null;
		try {
			customer = new Customer();
			stmt = connection.prepareCall("{CALL GetCustomerById(?)}");
			stmt.setInt(1,id);
			rs = stmt.executeQuery();
			rs.next();

			customer.setCustomerId(String.valueOf(id));
			customer.setName(rs.getString("Name"));
			customer.setSurName(rs.getString("SurName"));
			customer.setPassword(rs.getString("Password"));
			customer.setMail(rs.getString("Mail"));
			customer.setPhoneNumber(rs.getString("PhoneNumber"));
		} catch (SQLException e) {
			return null;
		}

		finally {
			try {

				if(rs != null && !rs.isClosed())
					rs.close();

				if(stmt != null && !stmt.isClosed())
					stmt.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return customer;
	}



	public Customer getItemByMail(String mail){

		Customer customer = new Customer();
		PreparedStatement stmt = null;
		ResultSet rs=null;
		try {
			stmt = connection.prepareCall("{CALL GetCustomerByMail(?)}");
			stmt.setString(1,mail);
			rs = stmt.executeQuery();
			rs.next();

			customer.setCustomerId(String.valueOf(rs.getInt("CustomerId")));
			customer.setName(rs.getString("Name"));
			customer.setSurName(rs.getString("SurName"));
			customer.setPassword(rs.getString("Password"));
			customer.setMail(mail);
			customer.setPhoneNumber(rs.getString("PhoneNumber"));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		finally {
			try {

				if(rs != null && !rs.isClosed())
					rs.close();

				if(stmt != null &&!stmt.isClosed())
					stmt.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return customer;


	}

	public ArrayList<Customer> getItems(){
		return null;
	}

	/**
	 * 
	 * @param item
	 */
	public Boolean updateItem(Customer item){

		PreparedStatement stmt = null;
		try {
			stmt = connection.prepareCall("{CALL UpdateCustomer(?,?,?,?,?,?) }");

			stmt.setInt(1,Integer.parseInt(item.getCustomerId()));
			stmt.setString(2,item.getName());
			stmt.setString(3,item.getSurName());
			stmt.setString(4,item.getPassword());
			stmt.setString(5,item.getMail());
			stmt.setString(6,item.getPhoneNumber());

			return stmt.execute();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
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


	public static void main(String[] args) {
		CustomerDAO customerDAO = new CustomerDAO();
		Customer onur = customerDAO.getItemByMail("onurtantimur@esksehir.edu.tr");
		System.out.println(onur);

	}


}//end CustomerDAO


