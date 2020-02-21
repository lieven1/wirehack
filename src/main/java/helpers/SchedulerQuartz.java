package helpers;

import static org.quartz.JobBuilder.newJob;
import static org.quartz.SimpleScheduleBuilder.simpleSchedule;
import static org.quartz.TriggerBuilder.newTrigger;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.Trigger;
import org.quartz.impl.StdSchedulerFactory;;

public class SchedulerQuartz implements ServletContextListener {

	public void setTokenGeneratorScheduler() throws SchedulerException {

		// Grab the Scheduler instance from the Factory
		SchedulerFactory sf = new StdSchedulerFactory();
		Scheduler sched = sf.getScheduler();

		// define the job and tie it to our MyJob class
		JobDetail job = newJob(TokenGenerator.class).withIdentity("tokengenerator", "group1").build();

		// Trigger the job to run now, and then repeat every 30min
		Trigger trigger = newTrigger().withIdentity("tokengeneratortrigger", "group1").startNow()
				.withSchedule(simpleSchedule().withIntervalInMinutes(30).repeatForever()).build();

		// Tell quartz to schedule the job using our trigger
		sched.scheduleJob(job, trigger);

		// and start it off
		sched.start();

		System.out.println("TokenGenerator Schedular started.");
	}

	public void contextInitialized(ServletContextEvent event) {
		// Do your thing during webapp's startup.

		try {
			this.setTokenGeneratorScheduler();
		} catch (SchedulerException e) {
			System.out.println("SchedulerException Occured!");
			e.printStackTrace();
		}
	}

	public void contextDestroyed(ServletContextEvent event) {
		// Do your thing during webapp's shutdown.
	}
}
