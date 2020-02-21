package helpers;

import java.util.Random;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class TokenGenerator implements Job {

	DateTimeTransformer dateTimeTransformer = new DateTimeTransformer();

	public String getNewToken() {
		String token = TokenGenerator
				.generateString("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+-!@&", 20);
		return token;
	}

	public static String generateString(String characters, int length) {
		Random rng = new Random();
		char[] text = new char[length];
		for (int i = 0; i < length; i++) {
			text[i] = characters.charAt(rng.nextInt(characters.length()));
		}
		return new String(text);
	}

	public void execute(JobExecutionContext context) throws JobExecutionException {

		// get current time and subtract 1 hour to invalidate tokens
		java.util.Date dt = new java.util.Date(System.currentTimeMillis() - 3600 * 1000);
		String currentTimeMinus1Hour = dateTimeTransformer.DateTimeToString(dt);

		System.out.println("Schedular updated the invalid tokens");

	}

}
