package webbansach.userservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.userdto.ProductsDto;
import webbansach.userentity.Categorys;
import webbansach.userentity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();

	public List<Categorys> GetDataCategorys();

	public List<Categorys> GetDataCategorys1();

	public List<Categorys> GetDataCategorys2();

	public List<ProductsDto> GetDataProducts();

	public List<ProductsDto> GetProductsId1();

	public List<ProductsDto> GetProductsId2();

	public List<ProductsDto> GetProductsId3();

}
