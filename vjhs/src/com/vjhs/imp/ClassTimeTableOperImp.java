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
import com.vjhs.interfaces.ClassTimeTableOperation;
import com.vjhs.pojo.ClassTimeTable;

/**
 * @author wasimakram.sutar
 *
 */
public class ClassTimeTableOperImp implements ClassTimeTableOperation{
	DBConnection dbConnection = DBConnection.util;
	private static final Logger LOGGER = Logger.getLogger(ClassTimeTableOperImp.class
			.getName());

	@Override
	public boolean addClassTimeTable(ClassTimeTable classTimeTable) {
		Connection con = null;
		PreparedStatement pst = null;
		int count = 0;
		try {

			con = dbConnection.getConnection();
			pst = con.prepareStatement(ADD_CLASS_TIMETABLE);
			pst.setString(1, classTimeTable.getClassName());
			pst.setString(2, classTimeTable.getPeriodI());
			pst.setString(3, classTimeTable.getPeriodII());
			pst.setString(4, classTimeTable.getPeriodIII());
			pst.setString(5, classTimeTable.getPeriodIV());
			pst.setString(6, classTimeTable.getPeriodV());
			pst.setString(7, classTimeTable.getPeriodVI());
			pst.setString(8, classTimeTable.getPeriodVII());
			pst.setString(9, classTimeTable.getPeriodVIII());
			pst.setDate(10, classTimeTable.getCreationDate());
			pst.setString(11, classTimeTable.getCreatedBy());
			count = pst.executeUpdate();
			con.commit();
		} catch (SQLException e) {
			LOGGER.info("While adding Overview into Database: "
					+ e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return (count > 0);
	}

	@Override
	public boolean updateClassTimeTable(ClassTimeTable classTimeTable) {
		Connection con = null;
		PreparedStatement pst = null;
		int count = 0;
		try {

			con = dbConnection.getConnection();
			pst = con.prepareStatement(UPDATE_CLASS_TIMETABLE_BY_CLASS_DAY);
			pst.setString(1, classTimeTable.getClassName());
			pst.setString(2, classTimeTable.getPeriodI());
			pst.setString(3, classTimeTable.getPeriodII());
			pst.setString(4, classTimeTable.getPeriodIII());
			pst.setString(5, classTimeTable.getPeriodIV());
			pst.setString(6, classTimeTable.getPeriodV());
			pst.setString(7, classTimeTable.getPeriodVI());
			pst.setString(8, classTimeTable.getPeriodVII());
			pst.setString(9, classTimeTable.getPeriodVIII());
			pst.setDate(12,classTimeTable.getUpdatedDate());
			pst.setString(13, classTimeTable.getUpdatedBy());
		
			count = pst.executeUpdate();
			con.commit();
		} catch (SQLException e) {
			LOGGER.info("While adding Overview into Database: "
					+ e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return (count > 0);
	}

	@Override
	public ClassTimeTable getClassTimeTable(String className) {
		ClassTimeTable classTimeTable = new ClassTimeTable();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		try {
			con = dbConnection.getConnection();
			pst = con.prepareStatement(GET_CLASS_TIMETABLE_BY_CLASS);
			pst.setString(1, className);
			rs = pst.executeQuery();
			while (rs.next()) {
				// add data to Student POJO
			}
		} catch (SQLException e) {
			LOGGER.info("While Getting Perticular Teacher into database:"
					+ e.getMessage());
		} finally {
			dbConnection.close(pst, con);
		}
		return classTimeTable;
	}

}
