package webbansach.usercontroller;

import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userdto.CartDto;
import webbansach.userdto.PaginatesDto;
import webbansach.userentity.Bills;
import webbansach.userentity.Users;
import webbansach.userservice.BillsServiceImpl;
import webbansach.userservice.CartServiceImpl;
import webbansach.userservice.HomeServiceImpl;

@Controller
public class CartController {
	
	@Autowired
	private CartServiceImpl cartService = new CartServiceImpl();
	@Autowired
	private BillsServiceImpl billsService = new BillsServiceImpl();
	@Autowired
	HomeServiceImpl homeService;
	public ModelAndView _mvShare = new ModelAndView();
	
	@RequestMapping(value = "giohang")
	public ModelAndView Index() {
		_mvShare.setViewName("user/cart");

		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		
	
		return _mvShare;
	}
	
	
	@RequestMapping(value = "AddCart/{id}")
	public String AddCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	
	@RequestMapping(value = "EditCart/{id}/{quanty}")
	public String EditCart(HttpServletRequest request, HttpSession session, @PathVariable long id,@PathVariable int quanty) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.EditCart(id,quanty, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));

		return "redirect:"+request.getHeader("Referer");
	}
	
	
	
	
	@RequestMapping(value = "DeleteCart/{id}")
	public String DeleteCart(HttpServletRequest request, HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>) session.getAttribute("Cart");
		if (cart == null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = cartService.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantyCart", cartService.TotalQuanty(cart));
		session.setAttribute("TotalPriceCart", cartService.TotalPrice(cart));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	@RequestMapping(value = "checkout" , method = RequestMethod.GET)
	public ModelAndView CheckOut(HttpServletRequest request, HttpSession session,Model model) {
		_mvShare.setViewName("user/checkout");
		
		Users loginInfo = (Users)session.getAttribute("LoginInfo");
		if(loginInfo != null) {
			Bills bills = new Bills();
			bills.setName(loginInfo.getUsername());
			bills.setEmail(loginInfo.getEmail());
			model.addAttribute("bills", bills);
		}
		else if(loginInfo == null){
			 return new ModelAndView("redirect:dangnhap","message","Sorry Username Password Error");
		}

		return _mvShare;
	}
	
	
	@RequestMapping(value = "tttc")
	public ModelAndView Check() {
		_mvShare.setViewName("user/tttc");

		
	
		return _mvShare;
	}
	
	
	@RequestMapping(value = "checkout", method = RequestMethod.POST)
	public String CheckOutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bills") Bills bill) {
//		bill.setQuanty((String) session.getAttribute("TotalQuantyCart"));
//		bill.setTotal((String)session.getAttribute("TotalPriceCart") );
		long millis=System.currentTimeMillis();  
		Date date=new java.sql.Date(millis);  
//		  Date date = new Date(new java.util.Date().getTime()); 
		  double gia = cartService.TotalPrice((HashMap<Long, CartDto>)session.getAttribute("Cart"));
		  Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  bill.setTotal(gia);
		  bill.setDate(date);
		  bill.setId_user(loginInfo.getId());
	
		if(billsService.AddBills(bill)>0) {
		HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		


		  billsService.AddBillsDetail(carts);

	}
	session.removeAttribute("Cart");
		return "redirect:tttc";
	}
}
