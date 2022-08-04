package webbansach.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import webbansach.userentity.Categorys;
import webbansach.userentity.CategorysCha;


@Service
public interface IDanhMucService {
	@Autowired
	public List<Categorys> GetDataCategorys();
	public int DeleteCategorys(int id);
	public int AddCategorys(Categorys categorys); 
	public Categorys XemCategorys(int id);
	public void SuaCategorys(Categorys categorys);
	public List<Categorys> searchDanhmuc(  String text);
	public List<CategorysCha> GetDataCategorysCha();
}
