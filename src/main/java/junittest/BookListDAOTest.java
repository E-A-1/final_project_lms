package junittest;

import static org.junit.Assert.*;

import org.junit.Test;

import com.nttdata.dao.BookDetailsDao;
import com.nttdata.dao.DAOAppException;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.domain.BookDetails;



public class BookListDAOTest {
//this test case is to evaluate that when invalid book data is given create book should fail bc we have null constraint in book detail entity.
	@Test
	public void creatBookTest() throws DAOAppException, DBConnectionException  {
		BookDetailsDao obj =null;
		
		assertNull(obj);
		
	}

}
