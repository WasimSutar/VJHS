/**
 * 
 */
package com.vjhs.imp;

import static com.vjhs.interfaces.SQLQuery.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Logger;

import com.vjhs.dao.DBConnection;
import com.vjhs.interfaces.ProgressReportOperations;
import com.vjhs.pojo.ProgressReport;

/**
 * @author wasimakram.sutar
 *
 */
public class ProgressReportOperImp implements ProgressReportOperations {

	DBConnection dbConnection = DBConnection.util;
	private static final Logger LOGGER = Logger.getLogger(ProgressReportOperImp.class
			.getName());
	@Override
	public boolean addProgressReport(ProgressReport progressReport) {

		Connection con = null;
		PreparedStatement pst = null;
		int count = 0;
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(ADD_PROGRESS_REPORT_OF_STUDENT);
			pst.setString(1, progressReport.getExamType());
			pst.setString(2, progressReport.getClassName());
			pst.setString(3, progressReport.getAdmissionNo());
			pst.setString(4, progressReport.getSubject());
			pst.setInt(5, progressReport.getMarks());
			pst.setInt(6, progressReport.getGradePoint());
			pst.setDate(7, progressReport.getCreationDate());
			pst.setString(8, progressReport.getCreatedBy());
			
			count = pst.executeUpdate();
			con.commit();
		} catch (SQLException e) {
			LOGGER.info("While adding Teacher Exam Schedule into Database: " + e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return (count > 0);
	
	}

	@Override
	public boolean updateProgressReport(ProgressReport progressReport) {

		Connection con = null;
		PreparedStatement pst = null;
		int count = 0;
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(UPDATE_PROGRESS_REPORT_OF_STUDENT);
			pst.setString(1, progressReport.getExamType());
			pst.setString(2, progressReport.getClassName());
			pst.setString(3, progressReport.getAdmissionNo());
			pst.setString(4, progressReport.getSubject());
			pst.setInt(5, progressReport.getMarks());
			pst.setInt(6, progressReport.getGradePoint());
			pst.setDate(7, progressReport.getUpdatedDate());
			pst.setString(8, progressReport.getUpdatedBy());
			
			count = pst.executeUpdate();
			con.commit();
		} catch (SQLException e) {
			LOGGER.info("While adding Teacher Exam Schedule into Database: " + e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return (count > 0);
	
	}

	@Override
	public boolean deleteProgressReport(String admissionNo) {
		Connection con = null;
		PreparedStatement pst = null;
		int count = 0;
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(DELETE_PROGRESS_REPORT_OF_STUDENT);
			pst.setString(1, admissionNo);
			count = pst.executeUpdate();
			con.commit();
		} catch (SQLException e) {
			LOGGER.info("While Deleting Teacher exam schedule into Database: "
					+ e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return (count > 0);
	}

	@Override
	public ProgressReport getProgressReport(String admissionNo) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		ProgressReport progressReport = new ProgressReport();
		
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(GET_PROGRESS_REPORT_OF_STUDENT);
			pst.setString(1, admissionNo);
			rs = pst.executeQuery();
			while (rs.next()) {
				// batch processing code
			}
		} catch (SQLException e) {
			LOGGER.info("While Adding Teacher Timetable into Database: "
					+ e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return progressReport;
	}
	

}
