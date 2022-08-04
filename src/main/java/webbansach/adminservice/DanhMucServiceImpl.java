package webbansach.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import webbansach.admindao.DanhMucDao;
import webbansach.userdao.CategorysDao;
import webbansach.userentity.Categorys;
import webbansach.userentity.CategorysCha;

@Service
@Transactional
public class DanhMucServiceImpl implements IDanhMucService {
	@Autowired
	private DanhMucDao categorysDao;
	public List<Categorys> GetDataCategorys() {

		return categorysDao.GetDataCategorys();
	}
	
	public int DeleteCategorys(int id){
		return categorysDao.DeleteCategorys(id);
	}

	public int AddCategorys(Categorys categorys) {
	
		return categorysDao.AddCategorys(categorys);
	}

	public Categorys XemCategorys(int id) {
		return categorysDao.XemCategorys(id);
	}

	public void SuaCategorys(Categorys categorys) {
		categorysDao.SuaCategorys(categorys);;
		
	}

	public List<Categorys> searchDanhmuc(String text) {
	
		return categorysDao.searchDanhmuc(text);
	}

	public List<CategorysCha> GetDataCategorysCha() {
		return categorysDao.GetDataCategorysCha();
	}


}
