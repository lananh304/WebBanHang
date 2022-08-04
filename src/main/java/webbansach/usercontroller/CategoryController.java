package webbansach.usercontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userdto.PaginatesDto;
import webbansach.userservice.CategoryServiceImpl;
import webbansach.userservice.HomeServiceImpl;
import webbansach.userservice.IProductService;
import webbansach.userservice.PaginateServiceImpl;

@Controller
public class CategoryController {

	@Autowired
	private CategoryServiceImpl categoryService;
	public ModelAndView _mvShare = new ModelAndView();

	@Autowired
	private PaginateServiceImpl paginateService;
	@Autowired
	HomeServiceImpl homeService;
	private int totalProductsPage = 9;
	@Autowired
	private IProductService productService;
	@RequestMapping(value = "/sanpham/{id}")
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.setViewName("user/shop-grid");

		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.addObject("product", productService.GetProductByID(Integer.parseInt(id)));
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);

		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id),
				paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}

	@RequestMapping(value = "/sanpham/{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.setViewName("user/shop-grid");
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage,
				Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id),
				paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
}
