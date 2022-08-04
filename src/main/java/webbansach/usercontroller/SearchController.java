package webbansach.usercontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userdto.ProductsDto;
import webbansach.userentity.Users;
import webbansach.userservice.HomeServiceImpl;
import webbansach.userservice.IProductService;

@Controller
public class SearchController {
	@Autowired
	HomeServiceImpl homeService;
	public ModelAndView _mvShare = new ModelAndView();
	@Autowired
	private IProductService productService;

	
	@RequestMapping(value = "timkiem")
	public ModelAndView Register(HttpServletRequest request,@RequestParam(name = "text", required = false) String text) {
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.setViewName("user/shop-grid");	
		request.setAttribute("text", text);
	
		request.setAttribute("productsPaginate", productService.search(text));
		return _mvShare;
	}
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	@ResponseBody
	public List<ProductsDto> search(HttpServletRequest request) {
		return productService.search(request.getParameter("term"));
	}

}
