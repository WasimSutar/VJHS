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
import com.vjhs.interfaces.TeacherTTOperations;
import com.vjhs.pojo.TeacherTT;

public class TeacherTTOperImp implements TeacherTTOperations {

	DBConnection dbConnection = DBConnection.util;
	private static final Logger LOGGER = Logger
			.getLogger(TeacherTTOperImp.class.getName());

	@Override
	public boolean addTimeTable(List<TeacherTT> teacherTTList) {
		Connection con = null;
		PreparedStatement pst = null;
		int[] countArray = null;
		boolean flag=false;
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(ADD_TEACHER_TIMETABLE);
			for (TeacherTT teacherTT : teacherTTList) {
				pst.setInt(1, teacherTT.getDays());
				pst.setString(2, teacherTT.getEmployeeId());
				pst.setString(3, teacherTT.getPeriodI());
				pst.setString(4, teacherTT.getPeriodII());
				pst.setString(5, teacherTT.getPeriodIII());
				pst.setString(6, teacherTT.getPeriodIV());
				pst.setString(7, teacherTT.getPeriodV());
				pst.setString(8, teacherTT.getPeriodVI());
				pst.setString(9, teacherTT.getPeriodVII());
				pst.setString(10, teacherTT.getPeriodVIII());
				pst.addBatch();
			}
			countArray = pst.executeBatch();
			con.commit();
		} catch (SQLException e) {
			LOGGER.info("While Adding Teacher Timetable into Database: "
					+ e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		for(int count:countArray){
			if(count<1){
				flag=true;
				return flag;
			}
		}
		return flag;
	}

	@Override
	public boolean updateTimeTable(List<TeacherTT> teacherTTList) {
		Connection con = null;
		PreparedStatement pst = null;
		int[] countArray = null;
		boolean flag=false;
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(UPDATE_TEACHER_TIMETABLE);
			for (TeacherTT teacherTT : teacherTTList) {
				pst.setInt(1, teacherTT.getDays());
				pst.setString(2, teacherTT.getEmployeeId());
				pst.setString(3, teacherTT.getPeriodI());
				pst.setString(4, teacherTT.getPeriodII());
				pst.setString(5, teacherTT.getPeriodIII());
				pst.setString(6, teacherTT.getPeriodIV());
				pst.setString(7, teacherTT.getPeriodV());
				pst.setString(8, teacherTT.getPeriodVI());
				pst.setString(9, teacherTT.getPeriodVII());
				pst.setString(10, teacherTT.getPeriodVIII());
				pst.addBatch();
			}
			countArray = pst.executeBatch();
			con.commit();
		} catch (SQLException e) {
			LOGGER.info("While Updating Teacher Timetable into Database: "
					+ e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		for(int count:countArray){
			if(count<1){
				flag=true;
				return flag;
			}
		}
		return flag;
	}
	@Override
	public boolean deleteTimeTable(String jobId) {
		Connection con = null;
		PreparedStatement pst = null;
		int count = 0;
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(DELETE_TEACHER_TIMETABLE);
			pst.setString(1, jobId);
			count = pst.executeUpdate();
			con.commit();
		} catch (SQLException e) {
			LOGGER.info("While Deleting Teacher Timetable into Database: "
					+ e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return (count > 0);
	}

	@Override
	public List<TeacherTT> getTimeTableByJobId(String jobId) {
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		List<TeacherTT> teacherTTList = new ArrayList<TeacherTT>();
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(GET_TEACHER_TABLE_BY_ID);
			pst.setString(1, jobId);
			rs = pst.executeQuery();
			while (rs.next()) {
				TeacherTT teacherTT = new TeacherTT();
				teacherTT.setDays(rs.getInt("DAY"));
				teacherTT.setEmployeeId(rs.getString("EMP_ID"));
				teacherTT.setPeriodI(rs.getString("PERIOD_I"));
				teacherTT.setPeriodII(rs.getString("PERIOD_II"));
				teacherTT.setPeriodIII(rs.getString("PERIOD_III"));
				teacherTT.setPeriodIV(rs.getString("PERIOD_IV"));
				teacherTT.setPeriodV(rs.getString("PERIOD_V"));
				teacherTT.setPeriodVI(rs.getString("PERIOD_VI"));
				teacherTT.setPeriodVII(rs.getString("PERIOD_VII"));
				teacherTT.setPeriodVIII(rs.getString("PERIOD_VIII"));
				teacherTTList.add(teacherTT);
			}
		} catch (SQLException e) {
			LOGGER.info("While Adding Teacher Timetable into Database: "
					+ e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return teacherTTList;
	}

}
