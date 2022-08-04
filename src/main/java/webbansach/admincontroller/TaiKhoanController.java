package webbansach.admincontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import webbansach.adminservice.TaiKhoanServiceImpl;
import webbansach.userdto.ProductsDto;
import webbansach.userdto.ProductsDtoMapper;
import webbansach.userentity.Categorys;


@Controller
public class TaiKhoanController {

@Autowired
TaiKhoanServiceImpl taiKhoanService;
	public ModelAndView _mvShare = new ModelAndView();
	@RequestMapping(value = "taikhoan" )
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("admin/taikhoan");
		mv.addObject("taikhoan", taiKhoanService.GetDataUser());
		return mv;
	}
	
	
	
	@RequestMapping(value = "/deleteuser/{id}")
	public String Deletedanhmuc( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("taikhoan", taiKhoanService.GetDataUser());
		session.setAttribute("danhmucdelete", taiKhoanService.DeleteUser(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	
	
	@RequestMapping(value = "/admin/{id}")
	public String Admin( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("taikhoan", taiKhoanService.GetDataUser());
		session.setAttribute("admin", taiKhoanService.Admin(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	@RequestMapping(value = "/member/{id}")
	public String Member( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("taikhoan", taiKhoanService.GetDataUser());
		session.setAttribute("member", taiKhoanService.Member(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	
	
	
	@RequestMapping(value = "timkiemuser")
	public ModelAndView Register(HttpServletRequest request,@RequestParam(name = "text", required = false) String text) {

		
		_mvShare.setViewName("admin/taikhoan");	
		request.setAttribute("text", text);
		request.setAttribute("taikhoan", taiKhoanService.searchUser(text));
		return _mvShare;
	}
	
	
	
	
	@RequestMapping(value = "/sortSex")
	public ModelAndView SortSex(HttpServletRequest request,HttpSession session,@RequestParam(name = "pricing", required = false) String pricing) {
	
		_mvShare.setViewName("admin/taikhoan");	
		 
		String priceFrom = null;
	
		if (pricing != null) {
			if (pricing.equals("Nam")) {
				priceFrom = "Nam";
			} else if(pricing.equals("Nu")) {
			
				priceFrom = "Nu";
			} 
		} else {
			pricing = "default";
		}
		

		
		request.setAttribute("pricing", pricing);
	
		request.setAttribute("taikhoan", taiKhoanService.sortUser( pricing, priceFrom));
		return _mvShare;
	}
	

	
	

	
	
	
	
	@RequestMapping(value = "/sortVaiTro")
	public ModelAndView SortVaiTro(HttpServletRequest request,HttpSession session,@RequestParam(name = "pricing", required = false) String pricing) {
	
		_mvShare.setViewName("admin/taikhoan");	
		 
		String priceFrom = null;
	
		if (pricing != null) {
			if (pricing.equals("Admin")) {
				priceFrom = "Admin";
			} else if(pricing.equals("Member")) {
			
				priceFrom = "Member";
			} 
		} else {
			pricing = "default";
		}
		

		
		request.setAttribute("pricing", pricing);
	
		request.setAttribute("taikhoan", taiKhoanService.sortVaiTro( pricing, priceFrom));
		return _mvShare;
	}
	
}
