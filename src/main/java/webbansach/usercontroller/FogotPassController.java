package webbansach.usercontroller;

import org.springframework.stereotype.Controller;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import webbansach.userdao.UsersDao;
import webbansach.userentity.Users;
import webbansach.userservice.AccountServiceImpl;
import webbansach.userservice.HomeServiceImpl;

@Controller
public class FogotPassController {

	static String emailToRecipient, emailSubject, emailMessage;
	static final String emailFromRecipient = "vannguyen002st@gmail.com";
	private static final String alpha = "abcdefghijklmnopqrstuvwxyz"; // a-z
    private static final String alphaUpperCase = alpha.toUpperCase(); // A-Z
    private static final String digits = "0123456789"; // 0-9
    private static final String specials = "~=+%^*/()[]{}/!@#$?|";
    private static final String ALPHA_NUMERIC = alpha + alphaUpperCase + digits;

    private static Random rd = new Random();
	public ModelAndView _mvShare = new ModelAndView();
	@Autowired
	HomeServiceImpl homeService;
	@Autowired
	UsersDao usersDao;
	@Autowired
	AccountServiceImpl accountServiceImpl;
	static ModelAndView modelViewObj;

	@Autowired
	private JavaMailSender mailSenderObj;

	@RequestMapping(value = "quenmk", method = RequestMethod.GET)
	public ModelAndView showEmailForm(ModelMap model) {
		_mvShare.setViewName("user/fogotpass");
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());

		return _mvShare;	
	}


	@RequestMapping(value = "sendEmail", method = RequestMethod.POST)
	public ModelAndView sendEmailToClient(HttpSession session, final HttpServletRequest request) {


		emailToRecipient = request.getParameter("mailTo");
		

		 final String matlk = randomAlphaNumeric(8);
		

		mailSenderObj.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");				
				mimeMsgHelperObj.setTo(emailToRecipient);
				mimeMsgHelperObj.setFrom(emailFromRecipient);				
				mimeMsgHelperObj.setSubject("Xác nhận thay đổi mật khẩu");
				mimeMsgHelperObj.setText("Đây là mật khẩu mới của bạn : " + matlk);

				
			}
		});
		if (accountServiceImpl.findByEmail(request.getParameter("mailTo"))){
		accountServiceImpl.UpdatePass(request.getParameter("mailTo"),matlk);
		modelViewObj = new ModelAndView("redirect:thaydoimk");
		
		}
		else {
			 _mvShare.addObject("status1","Tài khoản email không tồn tại!");
				modelViewObj = new ModelAndView("redirect:quenmk");
		}
		
	

	
		return  modelViewObj;	
	}
	
	
    public String randomAlphaNumeric(int numberOfCharactor) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < numberOfCharactor; i++) {
            int number = randomNumber(0, ALPHA_NUMERIC.length() - 1);
            char ch = ALPHA_NUMERIC.charAt(number);
            sb.append(ch);
        }
        return sb.toString();
    }
    public static int randomNumber(int min, int max) {
        return rd.nextInt((max - min) + 1) + min;
    }
	
	@RequestMapping(value = "thaydoimk", method = RequestMethod.GET)
	public ModelAndView thayDoiMK(ModelMap model,HttpServletRequest request) {
		_mvShare.setViewName("user/doimk");
		_mvShare.addObject("categorys", homeService.GetDataCategorys());
		_mvShare.addObject("categorys1", homeService.GetDataCategorys1());
		_mvShare.addObject("categorys2", homeService.GetDataCategorys2());
		_mvShare.addObject("user", new Users());
		return _mvShare;	
	}

}