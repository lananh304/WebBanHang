package webbansach.usercontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userentity.Categorys;
import webbansach.userentity.Users;
import webbansach.userservice.AccountServiceImpl;
import webbansach.userservice.HomeServiceImpl;

@Controller
public class MyAccountController {
	@Autowired
	HomeServiceImpl homeService;
	public ModelAndView _mvShare = new ModelAndView();
	@Autowired
	AccountServiceImpl accountService;
	@RequestMapping(value = "myaccount" )
	public ModelAndView Index(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("user/capnhaptk");
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		  Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  long userId = loginInfo.getId();
		  request.setAttribute("myaccount", accountService.MyUser(userId));
		return mv;
	}
	
	
	

	
	@RequestMapping("/updateUser")
	public ModelAndView doUpdateCustomer(HttpServletRequest request, HttpSession session,@ModelAttribute("Users")Users users, Model model) {
		ModelAndView mv = new ModelAndView("user/capnhaptk");
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2()); 
		Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  int userId = loginInfo.getId();
		accountService.SuaUser(users);
		model.addAttribute("myaccount", accountService.MyUser(userId));
		return mv;
	}
	
	@RequestMapping(value = "/xnmatkhau", method = RequestMethod.GET)
	public ModelAndView MatKhau(HttpServletRequest request, HttpSession session,@ModelAttribute("user") Users user) {
		  Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  int userId = loginInfo.getId();
		_mvShare.setViewName("user/xacnhanmk");
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.addObject("mypass", accountService.MyPass(userId));
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
	
	
	@RequestMapping(value = "/xnmatkhau", method = RequestMethod.POST)
	public ModelAndView MatKhau(HttpSession session, HttpServletRequest request,  @ModelAttribute("user") Users user) {
		user = accountService.CheckAccount(user);

		try {
		
		if(user != null) {
			
				_mvShare.setViewName("redirect:doimatkhau");
				session.setAttribute("LoginInfo", user);
			}
	
			else {
				  _mvShare.addObject("status", "Mật khẩu cũ không đúng!" );
				  
			}
			
		}
		catch (EmptyResultDataAccessException erdae) {
		    return new ModelAndView("forward:index.jsp","message","");
		}
		return _mvShare;
	}
	
	
	
	
	
	@RequestMapping(value = "doimatkhau")
	public ModelAndView DoiMatKhau(HttpServletRequest request, HttpSession session,@ModelAttribute("user") Users user) {
		  Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  int userId = loginInfo.getId();
		_mvShare.setViewName("user/resetmk");
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.addObject("mypass", accountService.MyPass(userId));
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
	
	
	@RequestMapping(value = "matkhau")
	public ModelAndView Login(HttpSession session, HttpServletRequest request,  @ModelAttribute("user") Users user) {
		
		  Users loginInfo = (Users)session.getAttribute("LoginInfo");
		  int userId = loginInfo.getId();
		_mvShare.setViewName("user/resetmk");
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.addObject("mypass", accountService.MyPass(userId));
		_mvShare.addObject("user", new Users());

                	accountService.SuaPass(user);
                	session.removeAttribute("LoginInfo");
				_mvShare.setViewName("redirect:dangnhap");
		return _mvShare;
	}
	
}
