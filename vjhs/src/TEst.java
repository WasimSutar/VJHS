import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class TEst {

	public static void main(String[] args) {
		SimpleDateFormat myFormat = new SimpleDateFormat("dd/MM/yyyy");
		String inputString1 = "1/1/2016";
		String inputString2 = "10/01/2016";

		try {
			Date date1 = myFormat.parse(inputString1);
			Date date2 = myFormat.parse(inputString2);
			long diff = date2.getTime() - date1.getTime();
			System.out.println("Days: " + TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS));
		} catch (Exception e) {
			e.printStackTrace();
		}
		/*
		 * // create a Calendar for the 1st of the required month int year =
		 * 2016; int holidays = 2; int startDate = 1; int month =
		 * Calendar.FEBRUARY; int workingDays = getDays(year, month, startDate,
		 * holidays); System.out.println("wokringDays---" + workingDays);
		 */

	}

	/*
	 * private static int getDays(int year, int month, int startDate, int
	 * holidays) { int count = 0; Calendar cal = new GregorianCalendar(year,
	 * month, 1); // Get the number of days in that month int daysInMonth =
	 * cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	 * System.out.println(daysInMonth); // stop when we reach the start of the
	 * next month do { // get the day of the week for the current day int day =
	 * cal.get(Calendar.DAY_OF_WEEK); // check if it is a Sunday if (day ==
	 * Calendar.SUNDAY) { count++; } // advance to the next day
	 * cal.add(Calendar.DAY_OF_YEAR, 1); } while (cal.get(Calendar.MONTH) ==
	 * month); daysInMonth = daysInMonth - (count + holidays); return
	 * daysInMonth; }
	 */}
