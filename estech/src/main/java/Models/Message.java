package Models;


/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:43
 */
public class Message {

	private String clientIp;
	private String context;
	private String customerId;
	private String dateTime;
	private String id;
	private String subject;

	public Message(){

	}

	public void finalize() throws Throwable {

	}
	public String getContext(){
		return context;
	}

	public String getCustomerId(){
		return customerId;
	}

	public String getDateTime(){
		return dateTime;
	}

	public String getId(){
		return id;
	}

	public String getSubject(){
		return subject;
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
	public void setId(String newVal){
		id = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setSubject(String newVal){
		subject = newVal;
	}
}//end Message