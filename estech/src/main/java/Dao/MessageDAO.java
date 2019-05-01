package Dao;


import Models.Message;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:25:24
 */
public class MessageDAO implements DAO<Message> {

	private Connection connection = null;
	private PreparedStatement stmt = null;

	public MessageDAO(){
		try {
			connection = ConnectionDb.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


	/**
	 * 
	 * @param item
	 */
	public void addItem(Message item){

		try{
			stmt = connection.prepareCall("{CALL AddMessage(?,?,?,?)}");

			stmt.setInt(1,Integer.parseInt(item.getCustomerId()));
			stmt.setString(2,item.getSubject());
			stmt.setString(3,item.getContext());
			stmt.setString(4,"ip");


			stmt.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}


		finally{
			try{
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
	public Message getItem(int id){




		return null;
	}

	public ArrayList<Message> getItems(){





		return null;
	}


	public ArrayList<Message> getItems(int customer_id){
		ArrayList<Message> list = new ArrayList<>();
		Message message = new Message();
		ResultSet rs = null;

		try{
			stmt = connection.prepareCall("{CALL GetMessages(?)}");
			stmt.setInt(1,customer_id);

			rs = stmt.executeQuery();

			while (rs.next()){
				message.setId(String.valueOf(rs.getInt("MessageId")));
				message.setCustomerId(String.valueOf(customer_id));
				message.setSubject(rs.getString("Subject"));
				message.setContext(rs.getString("Context"));
				message.setDateTime(rs.getDate("DateTime").toString());
				list.add(message);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
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
				return null;
			}
		}

	}

	/**
	 * 
	 * @param item
	 */
	public Boolean updateItem(Message item){






		return null;
	}
}//end MessageDAO