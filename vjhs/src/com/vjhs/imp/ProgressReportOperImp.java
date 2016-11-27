/**
 * 
 */
package com.vjhs.imp;

import static com.vjhs.interfaces.SQLQuery.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
	private static final Logger LOGGER = Logger.getLogger(ProgressReportOperImp.class.getName());

	@Override
	public boolean addProgressReport(List<ProgressReport> progressReportList) {

		Connection con = null;
		PreparedStatement pst = null;
		PreparedStatement pst1 = null;
		int[] count, count1;
		boolean res = false;
		try {
			con = dbConnection.getConnection();
			pst1 = con.prepareStatement(ADD_PROGRESS_REPORT_OF_STUDENT);
			pst = con.prepareStatement(UPDATE_PROGRESS_REPORT_OF_STUDENT);
			for (ProgressReport progressReport : progressReportList) {
				if (isStudentExists(progressReport.getAdmissionNo(), progressReport.getClassName(),
						progressReport.getExamType())) {
					pst.setString(1, progressReport.getExamType());
					pst.setString(2, progressReport.getClassName());
					pst.setInt(3, progressReport.getMarks());
					pst.setString(4, progressReport.getGradePoint());
					pst.setDate(5, progressReport.getUpdatedDate());
					pst.setString(6, "");
					pst.setString(7, progressReport.getMonth());
					pst.setString(8, progressReport.getAdmissionNo());
					pst.setString(9, progressReport.getSubject());
					pst.addBatch();

				} else {

					pst1.setString(1, progressReport.getExamType());
					pst1.setString(2, progressReport.getClassName());
					pst1.setString(3, progressReport.getAdmissionNo());
					pst1.setString(4, progressReport.getSubject());
					pst1.setInt(5, progressReport.getMarks());
					pst1.setString(6, progressReport.getGradePoint());
					pst1.setDate(7, progressReport.getUpdatedDate());
					pst1.setString(8, progressReport.getUpdatedBy());
					pst1.setString(9, progressReport.getMonth());

					pst1.addBatch();

				}
			}

			count = pst.executeBatch();
			count1 = pst1.executeBatch();

			for (int i : count) {
				if (i > 0) {
					res = true;
				} else {
					res = false;
				}

			}

			for (int i : count1) {
				if (i > 0) {
					res = true;
				} else {
					res = false;
				}
			}

			con.commit();
		} catch (SQLException e) {
			LOGGER.info("While adding Progress report into Database: " + e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return res;

	}

	private boolean isStudentExists(String admissionNo, String className, String examType) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		int count = 0;
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(IS_STUDENT_EXISTS);
			pst.setString(1, admissionNo);
			pst.setString(2, className);
			pst.setString(3, examType);
			rs = pst.executeQuery();
			while (rs.next()) {
				count = rs.getInt("COUNT");
			}
		} catch (SQLException e) {
			LOGGER.info("While checking Student existing in database:" + e.getMessage());
		} finally {
			dbConnection.close(rs, pst, con);
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
			pst.setString(6, progressReport.getGradePoint());
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
			LOGGER.info("While Deleting Teacher exam schedule into Database: " + e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return (count > 0);
	}

	@Override
	public List<ProgressReport> getProgressReport(String admissionNo, String className, String examType) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<ProgressReport> progReportList = new ArrayList<ProgressReport>();
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(GET_PROGRESS_REPORT_OF_STUDENT);
			pst.setString(1, admissionNo);
			pst.setString(2, examType);
			pst.setString(3, className);
			rs = pst.executeQuery();
			while (rs.next()) {
				ProgressReport progressReport = new ProgressReport();
				progressReport.setSubject(rs.getString("SUBJECT"));
				progressReport.setMarks(rs.getInt("MARKS"));
				progressReport.setGradePoint(rs.getString("GRADEPOINT"));
				progressReport.setMonth(rs.getString("MONTH"));
				progReportList.add(progressReport);
			}
		} catch (SQLException e) {
			LOGGER.info("While getting progress report: " + e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return progReportList;
	}

}
