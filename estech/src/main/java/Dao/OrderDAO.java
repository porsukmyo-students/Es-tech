package Dao;


import Models.Order;
import java.sql.*;
import java.util.ArrayList;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:25:26
 */
public class OrderDAO implements DAO<Order> {

	Connection connection;
	PreparedStatement stmt;

	public OrderDAO(){
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
	public void addItem(Order item){ // Gerekli veriler: CustomerID,ProductTitle,Quantity,Ip,AddressID

		try {
			stmt = connection.prepareCall("{CALL AddOrder(?,?,?,?,?)}");
			stmt.setInt(1,item.getCustomerID());
			stmt.setString(2,item.getProductTitle());
			stmt.setInt(3,item.getQuantity());
			stmt.setString(4,item.getIp());
			stmt.setInt(5,item.getAddresId());

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
	@Override
	public Order getItem(int id) {
		return null;
	}

	public ArrayList<Order> getItems(){


		return null;
	}


	public ArrayList<Order> getItems(int id){
		ArrayList<Order> list = new ArrayList<>();
		Order order;
		ResultSet rs = null;


		try {
			stmt = connection.prepareCall("{CALL GetOrderes(?)}");
			stmt.setInt(1,id);

			rs = stmt.executeQuery();

			while(rs.next()){
				order = new Order();
				order.setCustomerID(rs.getInt("CustomerId"));
				order.setCustomerName(rs.getString("CustomerName"));
				order.setOrderNumber(String.valueOf(rs.getInt("OrderNumber")));
				order.setProductTitle(rs.getString("Title"));
				order.setQuantity(rs.getInt("Quantity"));
				order.setAddress(rs.getString("Address"));
				order.setDateTime(rs.getDate("Date").toString());
				order.setStatus(rs.getString("Status"));
				order.setAddress(rs.getString("Address"));
				order.setIp(rs.getString("ClientIp"));

				list.add(order);
			}


		} catch (SQLException e) {
			e.printStackTrace();
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
			return list;

		}

	}

	/**
	 * 
	 * @param item
	 */
	public Boolean updateItem(Order item){

		try {
			stmt = connection.prepareCall("{CALL UpdateOrder(?,?,?)}");

			stmt.setInt(1,Integer.parseInt(item.getOrderNumber()));
			stmt.setString(2,item.getStatus());
			stmt.setInt(3,item.getQuantity());

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
				return false;
			}
		}
		return true;
	}


	private void Close() throws SQLException{

	}


}//end OrderDAO