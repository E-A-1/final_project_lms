package com.nttdata.dbfw;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public final class DBHelper {

	private DBHelper() {

	}

	public static List executeSelect(Connection conn, final String sqlStmt,
			ResultMapper outMap) throws DBFWException {
		List resultList = new ArrayList();
		Statement stmt = null;//statement is used to execute static sql query
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();//creating statment using connection obj 
			rs = stmt.executeQuery(sqlStmt);
			while (rs.next()) {
				Object obj = outMap.mapRows(rs);
				resultList.add(obj);
			}
		} catch (SQLException e) {
			throw new DBFWException("Execution of select statement failed", e);
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();

			} catch (SQLException e) {
				throw new DBFWException("Couldn't release the resource", e);
			}

		}

		return resultList;

	}

	public static List executeSelect(Connection con, String sqlStmt,
			ParamMapper inMapper, ResultMapper outMapper) throws DBFWException {
		PreparedStatement pStmt = null;
		ResultSet rs = null;
		List result = new ArrayList();
		try {
			pStmt = con.prepareStatement(sqlStmt);
			inMapper.mapParams(pStmt);

			rs = pStmt.executeQuery();
			while (rs.next()) {
				Object object = outMapper.mapRows(rs);
				result.add(object);
			}

		} catch (SQLException e) {

		} finally {
			try {
				rs.close();
				pStmt.close();
				con.close();
			} catch (SQLException e) {
				throw new DBFWException(e);
			}
		}
		return result;
	}

	public static int executeUpdate(Connection con, String sqlStmt,
			ParamMapper inMapper) throws DBFWException {
		PreparedStatement pStmt = null;
		int res = 0;

		try {
			pStmt = con.prepareStatement(sqlStmt);
			inMapper.mapParams(pStmt);
			res = pStmt.executeUpdate();//it will return 1 if inserted else 0

		} catch (SQLException e) {

			throw new DBFWException(e);
		} finally {
			try {
				pStmt.close();
				con.close();
			} catch (SQLException e) {
				throw new DBFWException(e);
			}
		}

		return res;

	}
	
	

}
