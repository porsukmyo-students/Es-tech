package Models;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:45
 */
public class Order {

	private int addresId;
	private String address;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	private String customerName;
	private String dateTime;
	private String orderNumber;
	private String productTitle;
	private String ip;

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	private int quantity;
	private int customerID;

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	private String status;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	public int getAddresId(){
		return addresId;
	}

	public String getCustomerName(){
		return customerName;
	}

	public String getDateTime(){
		return dateTime;
	}

	public Order() {
	}

	public String getOrderNumber(){
		return orderNumber;
	}

	public String getProductTitle(){
		return productTitle;
	}

	public int getQuantity(){
		return quantity;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setAddresId(int newVal){
		addresId = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setCustomerName(String newVal){
		customerName = newVal;
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
	public void setProductTitle(String newVal){
		productTitle = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setQuantity(int newVal){
		quantity = newVal;

	}


	@Override
	public String toString() {

		StringBuilder sb = new StringBuilder();

		sb.append(getOrderNumber()+"\t");
		sb.append(getProductTitle()+"\t");
		sb.append(getCustomerID()+"\t");
		sb.append(getCustomerName()+"\t");
		sb.append(getAddresId()+"\t");
		sb.append(getAddress()+"\t");
		sb.append(getQuantity()+"\t");
		sb.append(getDateTime()+"\t");
		sb.append(getIp()+"\t");



		return super.toString();
	}
}//end Order