package webbansach.usercontroller;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import webbansach.userdto.GooglePojo;
import webbansach.userentity.Users;
import webbansach.userservice.AccountServiceImpl;
@Controller
public class LoginGoogleController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();

	public static String GOOGLE_CLIENT_ID = "658267149293-2pfb8o0cghab7mn6d8f92cait74rdrts.apps.googleusercontent.com";
	public static String GOOGLE_CLIENT_SECRET = "zmWCe3ZTSKFIbjZz5VQUaF_4";
	public static String GOOGLE_REDIRECT_URI = "http://localhost:8080/WebBanSach/dangnhap-google";
	public static String GOOGLE_LINK_GET_TOKEN = "https://accounts.google.com/o/oauth2/token";
	public static String GOOGLE_LINK_GET_USER_INFO = "https://www.googleapis.com/oauth2/v1/userinfo?access_token=";
	public static String GOOGLE_GRANT_TYPE = "authorization_code";
	public ModelAndView _mvShare = new ModelAndView();

	@RequestMapping("/dangnhap-google")
	public String loginGoogle(HttpSession session,HttpServletRequest request,@ModelAttribute("user") Users user) throws ClientProtocolException, IOException {
		String code = request.getParameter("code");
		if (code == null || code.isEmpty()) {
			_mvShare.setViewName( "redirect:dangnhap");
		}

		 else {
				//Hệ thống lấy  chuỗi mã  token từ code của Google
				String accessToken = layToken(code);
				
			//Hệ thống kiểm tra mã Id của tài khoản người dùng đã tồn tại trong Dữ liệu của hệ thống chưa.
				
				user = layThongTinNguoiDung(accessToken);
		
				if (!accountService.findByEmail(user.getEmail())) {
						accountService.AddAccount(user);
					
				}
				else {
					_mvShare.setViewName( "redirect:dangnhap");
				}

			
				
				session.setAttribute("LoginInfo", user);
				_mvShare.setViewName( "redirect:trangchu");
			}

		
		return "redirect:trangchu";
	}
	
	
	public String layToken(final String code) throws ClientProtocolException, IOException {
		String response = Request.Post(GOOGLE_LINK_GET_TOKEN)
				.bodyForm(Form.form().add("client_id", GOOGLE_CLIENT_ID)
						.add("client_secret", GOOGLE_CLIENT_SECRET)
						.add("redirect_uri", GOOGLE_REDIRECT_URI).add("code", code)
						.add("grant_type", GOOGLE_GRANT_TYPE).build())
				.execute().returnContent().asString();

		ObjectMapper mapper = new ObjectMapper();
		JsonNode node = mapper.readTree(response).get("access_token");
		return node.textValue();
	}

//	public GooglePojo getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
//		String link = GOOGLE_LINK_GET_USER_INFO + accessToken;
//		String response = Request.Get(link).execute().returnContent().asString();
//		ObjectMapper mapper = new ObjectMapper();
//		GooglePojo googlePojo = mapper.readValue(response, GooglePojo.class);
//		System.out.println(googlePojo);
//		return googlePojo;
//
//	}
//	
	
	// lấy thông tin người dùng
		public Users layThongTinNguoiDung(String maToken) throws ClientProtocolException, IOException {
			String link = GOOGLE_LINK_GET_USER_INFO + maToken;
			String response = Request.Get(link).execute().returnContent().asString();
//			ObjectMapper mapper = new ObjectMapper();
			GooglePojo user = new Gson().fromJson(response, GooglePojo.class);
			return new Users(user.getId(),user.getEmail().split("@")[0], "", user.getEmail(), "2021-06-18", "Nu", "1");
		}

}
