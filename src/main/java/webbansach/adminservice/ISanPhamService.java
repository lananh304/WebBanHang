package webbansach.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.userdto.ProductsDto;

@Service
public interface ISanPhamService {
	@Autowired
	public List<ProductsDto> GetDataSanPham();
	public List<ProductsDto> GetDataProductsPaginate(int start, int totalPage);
	public ProductsDto XemSanPham(int id);
	public int DeleteSanPham(int id);
	public int AddSanPham(ProductsDto productsDto);
	public void SuaSanPham(ProductsDto productsDto);
	public List<ProductsDto> searchSanPham(  String text);
	public List<ProductsDto> sortCategory(String pricing, String priceFrom);
	public List<ProductsDto> sortGia( String pricing, String priceFrom);
}
