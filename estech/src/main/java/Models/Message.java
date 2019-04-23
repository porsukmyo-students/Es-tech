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
	public String getcontext(){
		return context;
	}

	public String getcustomerId(){
		return customerId;
	}

	public String getdateTime(){
		return dateTime;
	}

	public String getId(){
		return id;
	}

	public String getsubject(){
		return subject;
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
	public void setcustomerId(String newVal){
		customerId = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setdateTime(String newVal){
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
	public void setsubject(String newVal){
		subject = newVal;
	}
}//end Message