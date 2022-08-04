package webbansach.usercontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import webbansach.userdao.SlidesDao;
import webbansach.userservice.HomeServiceImpl;
import webbansach.userservice.IProductService;

@Controller
public class HomeController {
	@Autowired
	HomeServiceImpl homeService;

	@RequestMapping(value = { "/", "/trangchu" })
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("slides", homeService.GetDataSlide());
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		mv.addObject("productid1", homeService.GetProductsId1());
		mv.addObject("productid2", homeService.GetProductsId2());
		mv.addObject("productid3", homeService.GetProductsId3());

		return mv;
	}

	@RequestMapping(value =  "/gioithieu" )
	public ModelAndView GioiThieu() {
		ModelAndView mv = new ModelAndView("user/gioithieu");
		mv.addObject("slides", homeService.GetDataSlide());
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		mv.addObject("productid1", homeService.GetProductsId1());
		mv.addObject("productid2", homeService.GetProductsId2());
		mv.addObject("productid3", homeService.GetProductsId3());

		return mv;
	}
	
	@RequestMapping(value =  "/quydinh" )
	public ModelAndView QuyDinh() {
		ModelAndView mv = new ModelAndView("user/quydinh");
		mv.addObject("slides", homeService.GetDataSlide());
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		mv.addObject("productid1", homeService.GetProductsId1());
		mv.addObject("productid2", homeService.GetProductsId2());
		mv.addObject("productid3", homeService.GetProductsId3());

		return mv;
	}
	@RequestMapping(value =  "/huongdan" )
	public ModelAndView HuongDan() {
		ModelAndView mv = new ModelAndView("user/hddathang");
		mv.addObject("slides", homeService.GetDataSlide());
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		mv.addObject("productid1", homeService.GetProductsId1());
		mv.addObject("productid2", homeService.GetProductsId2());
		mv.addObject("productid3", homeService.GetProductsId3());

		return mv;
	}
	@RequestMapping(value =  "/phuongthuc" )
	public ModelAndView PhuongThuc() {
		ModelAndView mv = new ModelAndView("user/ptthanhtoan");
		mv.addObject("slides", homeService.GetDataSlide());
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		mv.addObject("productid1", homeService.GetProductsId1());
		mv.addObject("productid2", homeService.GetProductsId2());
		mv.addObject("productid3", homeService.GetProductsId3());

		return mv;
	}
	@RequestMapping(value =  "/vanchuyen" )
	public ModelAndView VanChuyen() {
		ModelAndView mv = new ModelAndView("user/vanchuyen");
		mv.addObject("slides", homeService.GetDataSlide());
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		mv.addObject("productid1", homeService.GetProductsId1());
		mv.addObject("productid2", homeService.GetProductsId2());
		mv.addObject("productid3", homeService.GetProductsId3());

		return mv;
	}
	@RequestMapping(value =  "/chinhsach" )
	public ModelAndView ChinhSach() {
		ModelAndView mv = new ModelAndView("user/chinhsach");
		mv.addObject("slides", homeService.GetDataSlide());
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		mv.addObject("productid1", homeService.GetProductsId1());
		mv.addObject("productid2", homeService.GetProductsId2());
		mv.addObject("productid3", homeService.GetProductsId3());

		return mv;
	}
	@RequestMapping(value =  "/lienhe" )
	public ModelAndView LienHe() {
		ModelAndView mv = new ModelAndView("user/lienhe");
		mv.addObject("slides", homeService.GetDataSlide());
		mv.addObject("categorys", homeService.GetDataCategorys());
		mv.addObject("categorys1", homeService.GetDataCategorys1());
		mv.addObject("categorys2", homeService.GetDataCategorys2());
		mv.addObject("productid1", homeService.GetProductsId1());
		mv.addObject("productid2", homeService.GetProductsId2());
		mv.addObject("productid3", homeService.GetProductsId3());

		return mv;
	}
}
