package Dao;


import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.PriorityQueue;

/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:25:21
 */
interface DAO<Type> {

	/**
	 * 
	 * @param item
	 */
	public void addItem(Type item);

	/**
	 * 
	 * @param id
	 */
	public Type getItem(int id) ;

	public ArrayList<Type> getItems();

	/**
	 * 
	 * @param item
	 */
	public Boolean updateItem(Type item);

}