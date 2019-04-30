package Models;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:45
 */
public class Order {

	private String addressId;
	private String customerId;
	private String dateTime;
	private String orderNumber;
	private String productNumber;
	private int quantity;
	private String status;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	public String getAddressId(){
		return addressId;
	}

	public String getCustomerId(){
		return customerId;
	}

	public String getDateTime(){
		return dateTime;
	}

	public String getOrderNumber(){
		return orderNumber;
	}

	public String getProductNumber(){
		return productNumber;
	}

	public int getQuantity(){
		return quantity;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setAddressId(String newVal){
		addressId = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setCustomerId(String newVal){
		customerId = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setDateTime(String newVal){
		dateTime = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setOrderNumber(String newVal){
		orderNumber = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setProductNumber(String newVal){
		productNumber = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setQuantity(int newVal){
		quantity = newVal;
	}
}//end Order