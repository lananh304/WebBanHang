package webbansach.usercontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userentity.Users;
import webbansach.userservice.BillsServiceImpl;
import webbansach.userservice.CartServiceImpl;
import webbansach.userservice.HomeServiceImpl;

@Controller
public class MyOrderController {
	@Autowired
	HomeServiceImpl homeService;
	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	@Autowired
	private BillsServiceImpl billsService = new BillsServiceImpl();
	@RequestMapping(value = "/myorder" )
	public ModelAndView Index(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("user/myorder");
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		  Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  long userId = loginInfo.getId();
		  request.setAttribute("orders", billsService.MyOrder(userId));
		return mv;
	}
	
	@RequestMapping(value = "/xemmyorder/{id}")
	public ModelAndView Xemdanhmuc(HttpServletRequest request,HttpSession session,@PathVariable int id, Model model) {
		ModelAndView mv = new ModelAndView("user/xemdonhang");
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		session.setAttribute("donhangxem",  billsService.XemDonhang(id));
		
		return mv;
	}
	
	
	
	
	
	
}
