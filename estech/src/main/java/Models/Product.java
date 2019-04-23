package Models;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:46
 */
public class Product {

	private String brand;
	private String categoryId;
	private byte[] picture;
	private int price;
	private String productNumber;
	private int quantitiy;
	private String title;

	public Product(){

	}

	public void finalize() throws Throwable {

	}
	public String getbrand(){
		return brand;
	}

	public String getcategoryId(){
		return categoryId;
	}

	public byte[] getpicture(){
		return picture;
	}

	public int getprice(){
		return price;
	}

	public String getproductNumber(){
		return productNumber;
	}

	public int getquantitiy(){
		return quantitiy;
	}

	public String gettitle(){
		return title;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setbrand(String newVal){
		brand = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setcategoryId(String newVal){
		categoryId = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setpicture(byte[] newVal){
		picture = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setprice(int newVal){
		price = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setproductNumber(String newVal){
		productNumber = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setquantitiy(int newVal){
		quantitiy = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void settitle(String newVal){
		title = newVal;
	}
}//end Product