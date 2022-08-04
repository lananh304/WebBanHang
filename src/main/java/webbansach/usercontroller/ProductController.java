package webbansach.usercontroller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userentity.Categorys;
import webbansach.userentity.DanhGia;
import webbansach.userentity.Users;
import webbansach.userservice.HomeServiceImpl;
import webbansach.userservice.IProductService;
import webbansach.userservice.ProductServiceImpl;

@Controller
public class ProductController {
	@Autowired
	HomeServiceImpl homeService;
	public ModelAndView _mvShare = new ModelAndView();
	@Autowired
	private IProductService productService;

	@RequestMapping(value = "/chitietsanpham/{id}",method = RequestMethod.GET)
	public ModelAndView Index(@ModelAttribute("Danhgia") DanhGia danhGia,@PathVariable long id) {
		_mvShare.setViewName("user/detailproduct");
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.addObject("product", productService.GetProductByID(id));
		_mvShare.addObject("danhgiaIdCategory", productService.GetDataDanhGia(id));
		_mvShare.addObject("daban", productService.DaBan(id));
		String idCategory = productService.GetProductByID(id).getType();

		_mvShare.addObject("productByIdCategory", productService.GetProductByIDCategory(Integer.parseInt(idCategory)));
		return _mvShare;
	}

	@RequestMapping(value = "/chitietsanpham/{id}",method = RequestMethod.POST)
	public String updateCustomer(HttpServletRequest request, HttpSession session,
			@ModelAttribute("Danhgia") DanhGia danhGia, @PathVariable int id) {
	
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
		LocalDateTime now = LocalDateTime.now();

		Users loginInfo = (Users) session.getAttribute("LoginInfo");
		danhGia.setDate(dtf.format(now));
		danhGia.setName(loginInfo.getUsername());
		danhGia.setId_product(id);
		  _mvShare.addObject("cmt",productService.CheckBill(id,loginInfo.getId()));
		if(loginInfo != null) {
			if(productService.CheckBill(id,loginInfo.getId())) {
			productService.AddCategorys(danhGia);
		}
			else {
				  _mvShare.addObject("status1","Bạn phải mua sản phẩm này mới được đánh giá");
			}
			
			
		}
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	




}
