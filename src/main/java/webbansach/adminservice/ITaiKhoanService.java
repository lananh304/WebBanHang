package webbansach.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.userentity.Users;
@Service
public interface ITaiKhoanService {
	@Autowired
	  public List<Users> GetDataUser();
	public int DeleteUser(int id);
	public int Admin(int id);
	public int Member(int id);
	public List<Users> searchUser(  String text);
	public List<Users> sortUser(String pricing, String priceFrom) ;
	public List<Users> sortVaiTro(String pricing, String priceFrom);
}
