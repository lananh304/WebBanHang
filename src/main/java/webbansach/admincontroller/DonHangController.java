package webbansach.admincontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import webbansach.adminservice.DonHangServiceImpl;
import webbansach.userentity.BillDetail;
import webbansach.userentity.Categorys;

@Controller
public class DonHangController {
	@Autowired
	DonHangServiceImpl donHangService;
	public ModelAndView _mvShare = new ModelAndView();
	@RequestMapping(value = "/donhang" )
	public ModelAndView DonHang() {
		ModelAndView mv = new ModelAndView("admin/donhang");
		mv.addObject("donhang", donHangService.GetDataBills());
		return mv;
	}
	
	
	
	
	@RequestMapping(value = "/deletedonhang/{id}")
	public String Deletedanhmuc( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("donhang", donHangService.GetDataBills());
		session.setAttribute("donhangdelete", donHangService.DeleteBills(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	
	@RequestMapping(value = "/xemdonhang/{id}")
	public String Xemdanhmuc(HttpServletRequest request,HttpSession session,@PathVariable int id, Model model) {
		
		session.setAttribute("donhangdelete",  donHangService.XemDonhang(id));
		
		return "admin/xemdh";
	}
	
	
	
	@RequestMapping(value = "/choxacnhan/{id}")
	public String ChoXacNhan( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("danhmuc", donHangService.GetDataBills());
		session.setAttribute("choxacnhan", donHangService.ChoXacNhan(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/danggiaohang/{id}")
	public String DangGiaoHang( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("danhmuc", donHangService.GetDataBills());
		session.setAttribute("danggiaohang", donHangService.DangGiaoHang(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	@RequestMapping(value = "/dagiaohang/{id}")
	public String DaGiaoHang( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("danhmuc", donHangService.GetDataBills());
		session.setAttribute("dagiaohang", donHangService.DaGiaohang(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	@RequestMapping(value = "/huydonhang/{id}")
	public String HuyDonoHang( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("danhmuc", donHangService.GetDataBills());
		session.setAttribute("huydonhang", donHangService.HuyDonhang(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	@RequestMapping(value = "timkiemdh")
	public ModelAndView Register(HttpServletRequest request,@RequestParam(name = "text", required = false) String text) {

		
		_mvShare.setViewName("admin/donhang");	
		request.setAttribute("text", text);
		request.setAttribute("donhang", donHangService.searchDonHang(text));
		return _mvShare;
	}
	
	
	
	
	
	@RequestMapping(value = "/sortVanChuyen")
	public ModelAndView SortSex(HttpServletRequest request,HttpSession session,@RequestParam(name = "pricing", required = false) String pricing) {
	
		_mvShare.setViewName("admin/donhang");	
		 
		String priceFrom = null;
	
		if (pricing != null) {
			if (pricing.equals("Chuyen khoan ngan hang")) {
				priceFrom = "Chuyen khoan ngan hang";
			} else if(pricing.equals("Thanh toan tien mat khi nhan hang")) {
			
				priceFrom = "Thanh toan tien mat khi nhan hang";
			} 
		} else {
			pricing = "default";
		}
		

		
		request.setAttribute("pricing", pricing);
	
		request.setAttribute("donhang", donHangService.sortVanChuyen(pricing, priceFrom));
		return _mvShare;
	}
	
	
	
	
	@RequestMapping(value = "/sortTrangThai")
	public ModelAndView SortTrangThai(HttpServletRequest request,HttpSession session,@RequestParam(name = "pricing", required = false) String pricing) {
	
		_mvShare.setViewName("admin/donhang");	
		 
		String priceFrom = null;
	
		if (pricing != null) {
			if (pricing.equals("Chờ xác nhận")) {
				priceFrom = "Chờ xác nhận";
			} else if(pricing.equals("Đang giao hàng")) {
			
				priceFrom = "Đang giao hàng";
			} else if(pricing.equals("Đã giao hàng")) {
			
				priceFrom = "Đã giao hàng";
			} 
		} else {
			pricing = "default";
		}
		

		
		request.setAttribute("pricing", pricing);
	
		request.setAttribute("donhang", donHangService.sortTrangThai(pricing, priceFrom));
		return _mvShare;
	}
}
