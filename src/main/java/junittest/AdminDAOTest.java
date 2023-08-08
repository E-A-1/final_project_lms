package junittest;

import static org.junit.Assert.*;

import java.util.Random;

import org.junit.Test;

import com.nttdata.dao.AdminDao;
import com.nttdata.dao.DAOAppException;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.domain.Admin;


public class AdminDAOTest {

//	@Test
//	public void testCreateAdmin() throws DAOAppException, DBConnectionException, DBFWException {
//		AdminDao obj =new AdminDao();
//		Random random = new Random();
//		int maxDigits = 100000;
//		int randomNumber = random.nextInt(maxDigits);
//		Admin obj1 = new Admin(randomNumber, "princy", "princy", "prin@gmail.com", 123456788);
//		int result =obj.insertAdmin(obj1);
//		assertEquals(1, result);
//	}
	@Test(expected = Exception.class)
	public void testCreateAdminNegative() throws DAOAppException, DBConnectionException, DBFWException {
		AdminDao obj =new AdminDao();
		Random random = new Random();
		int maxDigits = 100000;
		int randomNumber = random.nextInt(maxDigits);
		Admin obj1 = new Admin(randomNumber, null,null, "prin@gmail.com", 123456788);
		int result =obj.insertAdmin(obj1);
		assertEquals(1, result);
	}
	@Test
	public void testAssertDaoNotNull() throws DAOAppException, DBConnectionException, DBFWException {
		AdminDao obj =new AdminDao();
		assertNotNull(obj);
	}
}
