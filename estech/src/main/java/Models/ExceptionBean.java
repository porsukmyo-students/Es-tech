package Models;


import java.sql.Date;

/**
 * @author Onur
 * @version 1.0
 * @created 23-Nis-2019 14:24:42
 */
public class ExceptionBean {

	private Date dateTime;
	private String exceptionId;
	private String header;
	private String stackTrace;

	public ExceptionBean(){

	}

	public void finalize() throws Throwable {

	}
	public Date getdateTime(){
		return dateTime;
	}

	public String getexceptionId(){
		return exceptionId;
	}

	public String getheader(){
		return header;
	}

	public String getstackTrace(){
		return stackTrace;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setdateTime(Date newVal){
		dateTime = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setexceptionId(String newVal){
		exceptionId = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setheader(String newVal){
		header = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setstackTrace(String newVal){
		stackTrace = newVal;
	}
}//end ExceptionBean