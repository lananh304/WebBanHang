package webbansach.userservice;



import java.util.List;

import org.springframework.stereotype.Service;

import webbansach.userdto.ProductsDto;
import webbansach.userentity.BillDetail;
import webbansach.userentity.DanhGia;

@Service
public interface IProductService {

	public ProductsDto GetProductByID(long id);	
	
	public List<ProductsDto> GetProductByIDCategory(int id);
	public List<ProductsDto> search(String text);
	public List<ProductsDto> sort(  int category,String pricing, float priceFrom, float priceTo);
	  public List<DanhGia> GetDataDanhGia(long id);
		public int AddCategorys(DanhGia danhGia);
		public boolean CheckBill(int id_product, int id_user);
		public List<BillDetail> DaBan(long id);

}
