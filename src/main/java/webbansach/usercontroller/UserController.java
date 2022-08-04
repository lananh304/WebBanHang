package webbansach.usercontroller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userdao.UsersDao;
import webbansach.userentity.Users;
import webbansach.userservice.AccountServiceImpl;
import webbansach.userservice.HomeServiceImpl;

@Controller
public class UserController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	public ModelAndView _mvShare = new ModelAndView();
	@Autowired
	HomeServiceImpl homeService;

	@RequestMapping(value = "/dangki", method = RequestMethod.GET)
	public ModelAndView Register() {

		_mvShare.setViewName("user/register");
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}

	// Tạo acc
	@RequestMapping(value = "/dangki", method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
//		int count = accountService.AddAccount(user);
//		
		

		if(!accountService.findByEmail(user.getEmail())) {
		
    _mvShare.addObject("status","Đăng kí tài khoản thành công!");
    accountService.AddAccount(user);
	
		}
	else {
		  _mvShare.addObject("status1","Tài khoản email đã tồn tại!");
	}

		
//		try {
//		if(count > 0 ) {
//        _mvShare.addObject("status","Đăng kí tài khoản thành công!");
//		}
//		else {
//			  _mvShare.addObject("status","Đăng kí tài khoản thất bại!");
//		}
//		}
//		catch (EmptyResultDataAccessException erdae) {
//		    return new ModelAndView("forward:index.jsp","message","");
//		}
		
		_mvShare.setViewName("user/register");
		return _mvShare;
	}
	
	
	
	

	
}
