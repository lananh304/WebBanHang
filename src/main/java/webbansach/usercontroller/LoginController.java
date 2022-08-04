package webbansach.usercontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userdao.UsersDao;
import webbansach.userentity.Users;
import webbansach.userservice.AccountServiceImpl;
import webbansach.userservice.HomeServiceImpl;
@Controller
public class LoginController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	public ModelAndView _mvShare = new ModelAndView();
	@Autowired
	HomeServiceImpl homeService;


	@RequestMapping(value = "/dangnhap", method = RequestMethod.GET)
	public ModelAndView Register() {

		_mvShare.setViewName("user/login");
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
	
	
	@RequestMapping(value = "/dangnhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, HttpServletRequest request,  @ModelAttribute("user") Users user) {
		user = accountService.CheckAccount(user);

		try {
		
		if(user != null) {
			if(accountService.PhanQuyen(user) !=null) {
			_mvShare.setViewName("redirect:trangchu");
			session.setAttribute("LoginInfo", user);
			}else {
				_mvShare.setViewName("redirect:quantri");
				session.setAttribute("LoginInfo", user);
			}
		}
			else {
				  _mvShare.addObject("status1", "Đăng nhập thất bại!" );
				  
			}
			
		}
		catch (EmptyResultDataAccessException erdae) {
		    return new ModelAndView("forward:index.jsp","message","");
		}
		return _mvShare;
	}
	
	
	
	
	@RequestMapping(value = "/dangxuat", method = RequestMethod.GET)
	public String Login(HttpSession session,   HttpServletRequest request) {
		
			session.removeAttribute("LoginInfo");
			
		return "redirect:"+request.getHeader("Referer");
	}
	
	

}
