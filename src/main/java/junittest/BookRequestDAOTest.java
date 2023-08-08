package junittest;

import static org.junit.Assert.*;

import org.junit.Test;

import com.nttdata.dao.BookRequestDao;
import com.nttdata.domain.BookRequest;


public class BookRequestDAOTest {

	@Test
	public void addNewRequestTest() throws Exception {
		
			BookRequestDao obj=new BookRequestDao();
			BookRequest obj2 =new BookRequest(1234598762, 0, 0, null);
			BookRequest obj3 =new BookRequest(876542, 0, 0, null);
			assertNotSame(obj2, obj3);
		
	
	}

}
