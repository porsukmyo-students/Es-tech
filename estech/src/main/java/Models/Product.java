package Models;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:46
 */
public class Product  {

	private String brand;
	private String categoryId;
	private String photo;

	private int price;
	private int productNumber;
	private int quantity;
	private String title;

	public Product(){

	}

	public void finalize() throws Throwable {

	}
	public String getBrand(){
		return brand;
	}


	public String getCategoryId(){
		return categoryId;
	}


	public String getPhoto(){
		return photo;
	}

	public int getPrice(){
		return price;
	}


	public int getProductNumber(){
		return productNumber;
	}


	public int getQuantity(){
		return quantity;
	}


	public String getTitle(){
		return title;
	}


	/**
	 * 
	 * @param newVal
	 */
	public void setBrand(String newVal){
		brand = newVal;
	}


	/**
	 * 
	 * @param newVal
	 */
	public void setCategoryId(String newVal){
		categoryId = newVal;
	}


	/**
	 * 
	 * @param newVal
	 */
	public void setPhoto(String newVal){
		photo = newVal;
	}


	/**
	 * 
	 * @param newVal
	 */
	public void setPrice(int newVal){
		price = newVal;
	}


	/**
	 * 
	 * @param newVal
	 */
	public void setProductNumber(int newVal){
		productNumber = newVal;
	}


	/**
	 * 
	 * @param newVal
	 */
	public void setQuantity(int newVal){
		quantity = newVal;
	}


	/**
	 * 
	 * @param newVal
	 */
	public void setTitle(String newVal){
		title = newVal;
	}


	@Override
	public String toString() {


		return "Header: "+title+" Brand: "+brand+" Price: "+price+"Product Number: "+productNumber+" Quantity: "+ quantity;
	}
}//end Product