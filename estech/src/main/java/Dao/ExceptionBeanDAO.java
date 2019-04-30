package Dao;


import Models.ExceptionBean;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:25:27
 */
public class ExceptionBeanDAO implements DAO<ExceptionBean> {


	Connection connection;

	public ExceptionBeanDAO(){
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
	public void addItem(ExceptionBean item){
		PreparedStatement stmt = null;

		try{
			stmt = connection.prepareCall("{CALL AddException(?,?,?)}");
			stmt.setString(1,item.getHeader());
			stmt.setString(2,item.getStackTrace());
			stmt.setString(3,"");//ip address

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
	public ExceptionBean getItem(int id){
		return null;
	}

	public ArrayList<ExceptionBean> getItems(){
		return null;
	}

	/**
	 * 
	 * @param item
	 */
	public Boolean updateItem(ExceptionBean item){
		return null;
	}
}//end ExceptionBeanDAO