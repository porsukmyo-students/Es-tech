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
	public String getContext(){
		return context;
	}

	public String getPersonId(){

		return personId;
	}

	public String getProductNumber(){
		return productNumber;
	}

	public byte getStar(){
		return star;
	}

	public String getTitle(){
		return title;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setContext(String newVal){
		context = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setPersonId(String newVal){
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
	public void setStar(byte newVal){
		star = newVal;
	}


	/**
	 * 
	 * @param newVal
	 */
	public void setTitle(String newVal){
		title = newVal;
	}
}//end ProductComments