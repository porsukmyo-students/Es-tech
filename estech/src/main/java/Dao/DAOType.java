package Dao;


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
	public Type getItem(String id);

	public PriorityQueue<Type> getItems();

	/**
	 * 
	 * @param item
	 */
	public Type updateItem(Type item);

}