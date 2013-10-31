package common;

import java.util.Calendar;
import java.sql.Timestamp;

public class Utilities {

	//Get Time stamp for database
	public Timestamp GetTimeStamp() {
		Calendar calender= Calendar.getInstance();
		Timestamp timestamp = new Timestamp(calender.getTime().getTime());
		return timestamp;
	}
}
