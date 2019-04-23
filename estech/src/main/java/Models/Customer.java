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

	public void finalize() throws Throwable {

	}
	public String getcustomerId(){
		return customerId;
	}

	public String getmail(){
		return mail;
	}

	public String getname(){
		return name;
	}

	public String getpassword(){
		return password;
	}

	public String getphoneNumber(){
		return phoneNumber;
	}

	public String getsurName(){
		return surName;
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
	public void setmail(String newVal){
		mail = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setname(String newVal){
		name = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setpassword(String newVal){
		password = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setphoneNumber(String newVal){
		phoneNumber = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setsurName(String newVal){
		surName = newVal;
	}
}//end Customer