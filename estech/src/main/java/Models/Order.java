package Models;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:45
 */
public class Order {

	private String addressId;
	private String customerId;
	private String date;
	private String orderNumber;
	private String productNumber;
	private int quantitiy;

	public Order(){

	}

	public void finalize() throws Throwable {

	}
	public String getaddressId(){
		return addressId;
	}

	public String getcustomerId(){
		return customerId;
	}

	public String getdate(){
		return date;
	}

	public String getorderNumber(){
		return orderNumber;
	}

	public String getproductNumber(){
		return productNumber;
	}

	public int getquantitiy(){
		return quantitiy;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setaddressId(String newVal){
		addressId = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setcustomerId(String newVal){
		customerId = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setdate(String newVal){
		date = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setorderNumber(String newVal){
		orderNumber = newVal;
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
}//end Order