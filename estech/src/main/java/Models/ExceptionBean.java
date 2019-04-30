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
	public Date getDateTime(){
		return dateTime;
	}


	public String getExceptionId(){
		return exceptionId;
	}

	public String getHeader(){
		return header;
	}

	public String getStackTrace(){
		return stackTrace;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setDateTime(Date newVal){
		dateTime = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setExceptionId(String newVal){
		exceptionId = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setHeader(String newVal){
		header = newVal;
	}

	/**
	 * 
	 * @param newVal
	 */
	public void setStackTrace(String newVal){
		stackTrace = newVal;
	}
}//end ExceptionBean