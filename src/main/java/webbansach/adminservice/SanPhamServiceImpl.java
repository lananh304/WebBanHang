package webbansach.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.admindao.SanPhamDao;
import webbansach.userdto.ProductsDto;
@Service
public class SanPhamServiceImpl implements ISanPhamService {
	@Autowired
	private SanPhamDao sanPhamDao;
	public List<ProductsDto> GetDataSanPham() {
		
		return sanPhamDao.GetDataSanPham();
	}
	
	
	public List<ProductsDto> GetDataProductsPaginate(int start, int totalPage) {
		return sanPhamDao.GetDataProductsPaginate(start, totalPage);
	}


	public ProductsDto XemSanPham(int id) {
	
		return sanPhamDao.XemSanPham(id);
	}


	public int DeleteSanPham(int id) {
		
		return sanPhamDao.DeleteSanPham(id);
	}


	public int AddSanPham(ProductsDto productsDto) {
		
		return sanPhamDao.AddSanPham(productsDto);
	}


	public void SuaSanPham(ProductsDto productsDto) {
		sanPhamDao.SuaSanPham(productsDto);
		
	}


	public List<ProductsDto> searchSanPham(String text) {
		
		return sanPhamDao.searchSanPham(text);
	}


	public List<ProductsDto> sortCategory(String pricing, String priceFrom) {
	
		return sanPhamDao.sortCategory(pricing, priceFrom);
	}


	public List<ProductsDto> sortGia(String pricing, String priceFrom) {
		
		return sanPhamDao.sortGia(pricing, priceFrom);
	}
	

}
