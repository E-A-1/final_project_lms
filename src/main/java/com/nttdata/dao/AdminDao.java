package com.nttdata.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.dbfw.DBHelper;
import com.nttdata.dbfw.ParamMapper;
import com.nttdata.domain.Admin;

public class AdminDao {
	static Logger log = Logger.getLogger(AdminDao.class);

	public static List<Admin> getAdminDetails(int adminId, String password) throws DBFWException {
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		log.debug("fetchig admin details");
		List<Admin> adminDetails = null;
		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();
			final ParamMapper READ_ADMIN_MAPPER = new ParamMapper() {

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, adminId);
					preStmt.setString(2, password);
				}

			};

			adminDetails = DBHelper.executeSelect(connection, SqlMapper.FetchAdminLogin, READ_ADMIN_MAPPER,
					SqlMapper.ADMIN_MAPPER);

		} catch (DBConnectionException e) {

			e.printStackTrace();
		}
		return adminDetails;

	}

	// To create a admin

	public static int insertAdmin(Admin admin) throws DAOAppException, DBConnectionException, DBFWException {
		int result = 0;
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();
			final ParamMapper INSERT_ADMIN = new ParamMapper() {

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, admin.getAdminId());
					preStmt.setString(2, admin.getAdminName());

					preStmt.setString(3, admin.getPassword());
					preStmt.setString(4, admin.getEmail());
					preStmt.setInt(5, admin.getContactNumber());

				}

			};

			result = DBHelper.executeUpdate(connection, SqlMapper.InsertAdmin, INSERT_ADMIN);

		} catch (DBConnectionException e) {

			e.printStackTrace();
		}
		return result;
	}

}
