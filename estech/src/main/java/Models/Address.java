package Models;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:38
 */
public class Address {

	private String address;
	private String address_id;
	private String customerId;
	private boolean IsDefault;
	private String Name;

	public Address(){

	}

	public void finalize() throws Throwable {

	}
	public String getAddress(){
		return address;
	}


	public String getAddressId(){
		return address_id;
	}

	public String getCustomerId(){
		return customerId;
	}

	public String getName(){
		return Name;
	}

	public boolean isIsDefault(){
		return IsDefault;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setAddress(String newVal){
		address = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setAddressId(String newVal){
		address_id = newVal;
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
	public void setIsDefault(boolean newVal){
		IsDefault = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setName(String newVal){
		Name = newVal;
	}
}//end Address