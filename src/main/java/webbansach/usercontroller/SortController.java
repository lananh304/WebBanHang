package webbansach.usercontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import webbansach.adminservice.DanhMucServiceImpl;
import webbansach.userentity.Categorys;
import webbansach.userentity.Users;
import webbansach.userservice.HomeServiceImpl;
import webbansach.userservice.IProductService;

@Controller
public class SortController {
	@Autowired
	HomeServiceImpl homeService;
	@Autowired
	DanhMucServiceImpl danhMucService;
	public ModelAndView _mvShare = new ModelAndView();
	@Autowired
	private IProductService productService;
	@RequestMapping(value = "/sort/{id}")
	public ModelAndView Register(HttpServletRequest request,HttpSession session,@PathVariable String id,@RequestParam(name = "pricing", required = false) String pricing) {
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
	
		_mvShare.addObject("idCategory", id);
		_mvShare.setViewName("user/shop-grid");	
//		  Categorys categorys = (Categorys)session.getAttribute("LoginInfo");
		
		float priceFrom = 0;
		float priceTo = 0;
		if (pricing != null) {
			if (pricing.equals("under50")) {
				priceTo = 50;
			} else if(pricing.equals("50to70")) {
				priceFrom = 50;
				priceTo = 70;
			} else if(pricing.equals("greaterthan70")) {
				priceFrom = 70;
				priceTo = 1000;
			}
		} else {
			pricing = "default";
		}
		

		
		request.setAttribute("pricing", pricing);
	
		request.setAttribute("productsPaginate", productService.sort(Integer.parseInt(id), pricing, priceFrom, priceTo));
		return _mvShare;
	}
	
}
