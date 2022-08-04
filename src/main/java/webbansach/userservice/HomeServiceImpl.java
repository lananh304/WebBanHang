package webbansach.userservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.userdao.CategorysDao;
import webbansach.userdao.ProductsDao;
import webbansach.userdao.SlidesDao;
import webbansach.userdto.ProductsDto;
import webbansach.userentity.Categorys;
import webbansach.userentity.Slides;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private ProductsDao productsDao;

	public List<Slides> GetDataSlide() {

		return slidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {

		return categorysDao.GetDataCategorys();
	}

	public List<Categorys> GetDataCategorys1() {

		return categorysDao.GetDataCategorys1();
	}

	public List<Categorys> GetDataCategorys2() {

		return categorysDao.GetDataCategorys2();
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}
	
	public List<ProductsDto> GetProductsId1() {
		
		return productsDao.GetProductsId1();
	}

public List<ProductsDto> GetProductsId2() {
		
		return productsDao.GetProductsId2();
	}

public List<ProductsDto> GetProductsId3() {
	
	return productsDao.GetProductsId3();
}




}
