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
import webbansach.adminservice.PhanTrangServiceImpl;
import webbansach.adminservice.SanPhamServiceImpl;
import webbansach.userdto.PaginatesDto;
import webbansach.userdto.ProductsDto;
import webbansach.userentity.Categorys;

@Controller
public class SanPhamController {
	@Autowired
	SanPhamServiceImpl sanPhamService;
	@Autowired
	DanhMucServiceImpl danhMucService;
	@Autowired
	private PhanTrangServiceImpl  phanTrangService;
	public ModelAndView _mvShare = new ModelAndView();
	private int totalProductsPage = 30;
	@RequestMapping(value = "plsanpham" )
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("admin/sanpham");
		int totalData = sanPhamService.GetDataSanPham().size();
		PaginatesDto paginateInfo = phanTrangService.GetInfoPaginates(totalData, totalProductsPage, 1);
		mv.addObject("paginateInfo", paginateInfo);
		mv.addObject("sanpham", sanPhamService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsPage));
//		mv.addObject("sanpham", sanPhamService.GetDataSanPham());
		return mv;
	}
	
	@RequestMapping(value = "/plsanpham/{currentPage}")
	public ModelAndView Product( @PathVariable String currentPage) {
		ModelAndView mv = new ModelAndView("admin/sanpham");
		int totalData = sanPhamService.GetDataSanPham().size();
		PaginatesDto paginateInfo = phanTrangService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		mv.addObject("paginateInfo", paginateInfo);
		mv.addObject("sanpham", sanPhamService.GetDataProductsPaginate(paginateInfo.getStart(), totalProductsPage));
		return mv;
	}
	
	

	
	
	
	@RequestMapping(value = "/xemsanpham/{id}")
	public ModelAndView Xemdanhmuc(@PathVariable int id, Model model) {
		ProductsDto productsDto = sanPhamService.XemSanPham(id);
		 model.addAttribute("productsDto", productsDto);
		_mvShare.setViewName("admin/xemsanpham");
		return _mvShare;
	}
	
	
	@RequestMapping(value = "/deletesanpham/{id}")
	public String Deletedanhmuc( HttpServletRequest request,HttpSession session,@PathVariable int id) {
		session.setAttribute("danhmuc", sanPhamService.GetDataSanPham());
		session.setAttribute("danhmucdelete", sanPhamService.DeleteSanPham(id));
		return "redirect:"+request.getHeader("Referer");
	}
	
	
	
	
	
	
	@RequestMapping(value = "themsanpham",method = RequestMethod.GET)
	public ModelAndView Themdanhmuc( @ModelAttribute("sanpham") ProductsDto productsDto) {
		_mvShare.setViewName("admin/themsp");
		_mvShare.addObject("danhmuc", danhMucService.GetDataCategorys());
	
		return _mvShare;
	}
	

	@RequestMapping(value = "themsanpham", method = RequestMethod.POST)
	public String Createdanhmuc(HttpServletRequest request, HttpSession session,@ModelAttribute("sanpham") ProductsDto productsDto) {
           
		sanPhamService.AddSanPham(productsDto);
	
           return "redirect:plsanpham";
	
	}
	
	
	
	
	
	@RequestMapping("/sanpham-update/{id}")
	
	public String updateCustomer(@ModelAttribute("Sanpham") ProductsDto productsDto,@PathVariable int id, Model model) {
		productsDto  = sanPhamService.XemSanPham(id);
		model.addAttribute("danhmuc", danhMucService.GetDataCategorys());
		model.addAttribute("sanpham", productsDto);
		return "admin/updatesp";
	}
	
	
	
	@RequestMapping("/updateSanpham")
	public String doUpdateCustomer(HttpServletRequest request,@ModelAttribute("Sanpham") ProductsDto productsDto, Model model) {
		sanPhamService.SuaSanPham(productsDto);
		model.addAttribute("danhmuc", sanPhamService.GetDataSanPham());
		return "redirect:plsanpham";
	}
	
	
	
	
	@RequestMapping(value = "timkiemsp")
	public ModelAndView Register(HttpServletRequest request,@RequestParam(name = "text", required = false) String text) {

		
		_mvShare.setViewName("admin/sanpham");	
		request.setAttribute("text", text);
		request.setAttribute("sanpham", sanPhamService.searchSanPham(text));
		return _mvShare;
	}
	
	
	
	
	
	@RequestMapping(value = "/sortCategory")
	public ModelAndView SortTrangThai(HttpServletRequest request,HttpSession session,@RequestParam(name = "pricing", required = false) String pricing) {
	
		_mvShare.setViewName("admin/sanpham");	
		 
		String priceFrom = null;
	
		if (pricing != null) {
			if (pricing.equals("Sách Mới Phát Hành")) {
				priceFrom = "Sách Mới Phát Hành";
			} else if(pricing.equals("Sách Bán Chạy")) {
			
				priceFrom = "Sách Bán Chạy";
			} else if(pricing.equals("Sách Giảm Giá")) {
			
				priceFrom = "Sách Giảm Giá";
			} else if(pricing.equals("Văn Học-Teen")) {
			
				priceFrom = "Văn Học-Teen";
			} else if(pricing.equals("Hướng Nghiệp-Kĩ Năng")) {
			
				priceFrom = "Hướng Nghiệp-Kĩ Năng";
			}else if(pricing.equals("Tiểu thuyết")) {
			
				priceFrom = "Tiểu thuyết";
			} else if(pricing.equals("Truyện Tranh")) {
			
				priceFrom = "Truyện Tranh";
			} else if(pricing.equals("Sức Khỏe")) {
			
				priceFrom = "Sức Khỏe";
			} else if(pricing.equals("Truyện Cổ Tích-Thần Thoại")) {
			
				priceFrom = "Truyện Cổ Tích-Thần Thoại";
			} else if(pricing.equals("Vừa Hoc Vừa Chơi")) {
			
				priceFrom = "Vừa Hoc Vừa Chơi";
			} else if(pricing.equals("Kiến Thức-Kĩ Năng")) {
			
				priceFrom = "Kiến Thức-Kĩ Năng";
			} else if(pricing.equals("Văn Học")) {
			
				priceFrom = "Văn Học";
			} else if(pricing.equals("Truyện Kể Cho Bé")) {
			
				priceFrom = "Truyện Kể Cho Bé";
			}  
		} else {
			pricing = "default";
		}
		

		
		request.setAttribute("pricing", pricing);
	
		request.setAttribute("sanpham", sanPhamService.sortCategory(pricing, priceFrom));
		return _mvShare;
	}
	
	
	
	
	@RequestMapping(value = "/sortGia")
	public ModelAndView SortGia(HttpServletRequest request,HttpSession session,@RequestParam(name = "pricing", required = false) String pricing) {
	
		_mvShare.setViewName("admin/sanpham");	
		 
		String priceFrom = null;
	
		if (pricing != null) {
			if (pricing.equals("Desc")) {
				priceFrom = "Desc";
			} else if(pricing.equals("ASC")) {
			
				priceFrom = "ASC";
			} 
		} else {
			pricing = "default";
		}
		

		
		request.setAttribute("pricing", pricing);
	
		request.setAttribute("sanpham", sanPhamService.sortGia(pricing, priceFrom));
		return _mvShare;
	}
	
}
