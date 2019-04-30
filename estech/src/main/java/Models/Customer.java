package Models;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:41
 */
public class Customer {

	private String customerId;
	private String mail;
	private String name;
	private String password;
	private String phoneNumber;
	private String surName;

	public Customer(){

	}


	public String getCustomerId(){
		return customerId;
	}

	public String getMail(){
		return mail;
	}

	public String getName(){
		return name;
	}

	public String getPassword(){
		return password;
	}


	public String getPhoneNumber(){
		return phoneNumber;
	}

	public String getSurName(){
		return surName;
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
	public void setMail(String newVal){
		mail = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setName(String newVal){
		name = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setPassword(String newVal){
		password = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setPhoneNumber(String newVal){
		phoneNumber = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setSurName(String newVal){
		surName = newVal;
	}

	@Override
	public String toString() {
		return "Customer{" +
				"customerId='" + customerId + '\t' +
				", mail='" + mail + '\t' +
				", name='" + name + '\t' +
				", password='" + password + '\t' +
				", phoneNumber='" + phoneNumber + '\t' +
				", surName='" + surName + '\t' +
				'}';
	}
}//end Customer