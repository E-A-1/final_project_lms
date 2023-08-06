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
import com.nttdata.domain.Student;


public class StudentDAO {
	static Logger log = Logger.getLogger(StudentDAO.class);

	
	public static List<Student> getStudentDetails(int studentId, String password) {
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<Student> studentDetails = null;
		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();
			final ParamMapper STUDENT_DETAIL_MAPPER = new ParamMapper() 
			{

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, studentId);
					preStmt.setString(2, password);
				}

			};
			studentDetails = DBHelper.executeSelect(connection, SqlMapper.FetchStudentDetail,
					STUDENT_DETAIL_MAPPER,SqlMapper.STUDENT_MAPPER);

		} catch (DBFWException | DBConnectionException e) {

			e.printStackTrace();
		}

		return studentDetails;

	}

	public static int createNewStudent(Student student) throws Exception {
		int result = 0;
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();
			final ParamMapper INSERT_NEW_STUDENT = new ParamMapper() 
			{

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, student.getStudentId());
					preStmt.setString(2, student.getStudentName());
					preStmt.setString(3, student.getPassword());
					preStmt.setString(4, student.getEmail());
					preStmt.setInt(5, student.getContactNumber());

				}

			};

			result = DBHelper.executeUpdate(connection, SqlMapper.InsertStudent, INSERT_NEW_STUDENT);

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
			throw e;
		}

		return result;

	}

	public static int deleteStudent(int id) throws DAOAppException, DBConnectionException {
		int result = 0;
		ConnectionHolder ch = null;
		Connection con = null;

		try {
			ch = ConnectionHolder.getInstance();
			con = ch.getConnection();

			final ParamMapper DELETE_STUDENT_PARAM_MAPPER = new ParamMapper() 
			{

				public void mapParams(PreparedStatement preStmt) throws SQLException {

					preStmt.setInt(1, id);

				}

			};// ananymous class
			result = DBHelper.executeUpdate(con, SqlMapper.DeleteStudent, DELETE_STUDENT_PARAM_MAPPER);

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return result;
	}
	public static List<Student> getStudentDetails() {
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<Student> studentDetails = null;
		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();
			
			studentDetails = DBHelper.executeSelect(connection, SqlMapper.GetAllStudents,SqlMapper.STUDENT_MAPPER);

		} catch (DBFWException | DBConnectionException e) {

			e.printStackTrace();
		}

		return studentDetails;

	}
}

