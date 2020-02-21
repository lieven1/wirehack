package helpers;

import java.util.Date;

public class DateTimeTransformer {

	public String DateTimeToString(Date dt) {

		java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String currentTime = sdf.format(dt);
		return currentTime;
	}

}