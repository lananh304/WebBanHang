package webbansach.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userdao.UsersDao;
import webbansach.userentity.Users;
import webbansach.userservice.AccountServiceImpl;
@Controller
public class AdminController {
	@Autowired
	UsersDao accountService = new UsersDao();

	@RequestMapping(value = "/quantri" )
	public ModelAndView Index(HttpSession session) {
		ModelAndView mv = new ModelAndView("admin/index");
		Users loginInfo = (Users)session.getAttribute("LoginInfo");
		if(loginInfo == null) {
			
			 return new ModelAndView("redirect:dangnhap","message","Sorry Username Password Error");
		}else if(accountService.PhanQuyen1(loginInfo.getEmail()) !=null) {
			return new ModelAndView("redirect:trangchu","message","Sorry Username Password Error");

	}
		return mv;
	}
	@RequestMapping(value = "/dangxuatad", method = RequestMethod.GET)
	public String Login(HttpSession session,   HttpServletRequest request) {
		
			session.removeAttribute("LoginInfo");
			
		return "redirect:dangnhap";
	}
}
