/**
 * 
 */
package com.vjhs.interfaces;


import com.vjhs.pojo.ProgressReport;

/**
 * @author wasimakram.sutar
 *
 */
public interface ProgressReportOperations {
	boolean addProgressReport(ProgressReport progressReport);

	boolean updateProgressReport(ProgressReport progressReport);
	
	boolean deleteProgressReport(String admissionNo);
	
	ProgressReport getProgressReport(String admissionNo);

}
