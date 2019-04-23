package Models;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:47
 */
public class ProductComments {

	private String context;
	private String personId;
	private String productNumber;
	private byte star;
	private String title;

	public ProductComments(){

	}

	public void finalize() throws Throwable {

	}
	public String getcontext(){
		return context;
	}

	public String getpersonId(){
		return personId;
	}

	public String getProductNumber(){
		return productNumber;
	}

	public byte getstar(){
		return star;
	}

	public String gettitle(){
		return title;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setcontext(String newVal){
		context = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setpersonId(String newVal){
		personId = newVal;
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
	public void setstar(byte newVal){
		star = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void settitle(String newVal){
		title = newVal;
	}
}//end ProductComments