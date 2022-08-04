package webbansach.userservice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.userdao.DanhGiaDao;
import webbansach.userdao.ProductsDao;
import webbansach.userdto.ProductsDto;
import webbansach.userentity.BillDetail;
import webbansach.userentity.Categorys;
import webbansach.userentity.DanhGia;

@Service
public class ProductServiceImpl implements IProductService {
	@Autowired
ProductsDao productsDao = new ProductsDao();
	@Autowired
DanhGiaDao danhGiaDao = new DanhGiaDao();
	public ProductsDto GetProductByID(long id) {
		List<ProductsDto> listProducts =  productsDao.GetProductByID(id);
		return listProducts.get(0);
	}
	public List<ProductsDto> GetProductByIDCategory(int id) {
	
		return productsDao.GetAllProductsByID(id);
	}
	

	public List<ProductsDto> search(String text) {
		List<ProductsDto> products = productsDao.search( text);

		return products;
	}
	public List<ProductsDto> sort(int category, String pricing, float priceFrom, float priceTo) {
		List<ProductsDto> products = productsDao.sort(category, pricing, priceFrom, priceTo);
		return products;
	}
	public List<DanhGia> GetDataDanhGia(long id) {
		
		return danhGiaDao.GetDataDanhGia( id);
	}
	public int AddCategorys(DanhGia danhGia) {
	
		return danhGiaDao.AddCategorys(danhGia);
	}

	
public boolean CheckBill(int id_product, int id_user) {
		
		return danhGiaDao.CheckBill(id_product, id_user);
	}

public List<BillDetail> DaBan(long id){
	return productsDao.DaBan(id);
}
}
