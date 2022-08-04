package webbansach.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import webbansach.adminservice.DanhMucServiceImpl;
import webbansach.userentity.Categorys;
import webbansach.userentity.Users;

@Controller
public class DanhmucController   {
	@Autowired
	DanhMucServiceImpl danhMucService;
	public ModelAndView _mvShare = new ModelAndView();
	@RequestMapping(value = "danhmuc" )
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("admin/danhmuc");
		mv.addObject("danhmuc", danhMucService.GetDataCategorys());
		return mv;
	}
	
	
	
	@RequestMapping(value = "/deletedanhmuc/{id}")
	public String Deletedanhmuc( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("danhmuc", danhMucService.GetDataCategorys());
		session.setAttribute("danhmucdelete", danhMucService.DeleteCategorys(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	
	@RequestMapping(value = "themdanhmuc",method = RequestMethod.GET)
	public ModelAndView Themdanhmuc(@ModelAttribute("categorys") Categorys categorys,Model model) {
		_mvShare.setViewName("admin/themdm");
		model.addAttribute("danhmuccha", danhMucService.GetDataCategorysCha());
	
		return _mvShare;
	}
	

	@RequestMapping(value = "themdanhmuc", method = RequestMethod.POST)
	public String Createdanhmuc(HttpServletRequest request, HttpSession session,@ModelAttribute("categorys") Categorys categorys) {
           
	 danhMucService.AddCategorys(categorys);
	
           return "redirect:danhmuc";
	
	}
	
	
	
	
	
	
	@RequestMapping(value = "/xemdanhmuc/{id}")
	public ModelAndView Xemdanhmuc(@PathVariable int id, Model model) {
		Categorys categorys = danhMucService.XemCategorys(id);
		 model.addAttribute("categorys", categorys);
	
		_mvShare.setViewName("admin/xemdm");
		return _mvShare;
	}
	

	
	@RequestMapping("/customer-update/{id}")
	public String updateCustomer(@ModelAttribute("Categorys") Categorys categorys,@PathVariable int id, Model model) {
	categorys  = danhMucService.XemCategorys(id);
	 model.addAttribute("danhmuccha", danhMucService.GetDataCategorysCha());
		model.addAttribute("categorys", categorys);

		return "admin/updatedm";
	}
	
	
	
	@RequestMapping("/updateCustomer")
	public String doUpdateCustomer(@ModelAttribute("Categorys") Categorys categorys, Model model) {
		danhMucService.SuaCategorys(categorys);
		model.addAttribute("danhmuc", danhMucService.GetDataCategorys());
		return "admin/danhmuc";
	}
	
	
	
	
	
	
	@RequestMapping(value = "timkiemdm")
	public ModelAndView Register(HttpServletRequest request,@RequestParam(name = "text", required = false) String text) {

		
		_mvShare.setViewName("admin/danhmuc");	
		request.setAttribute("text", text);
		request.setAttribute("danhmuc", danhMucService.searchDanhmuc(text));
		return _mvShare;
	}
	
}
