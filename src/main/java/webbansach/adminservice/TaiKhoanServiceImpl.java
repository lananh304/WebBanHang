package webbansach.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import webbansach.admindao.TaiKhoanDao;
import webbansach.userentity.Users;
@Service
@Transactional
public class TaiKhoanServiceImpl  implements ITaiKhoanService{
	@Autowired
	TaiKhoanDao taiKhoanDao;
	public List<Users> GetDataUser() {
		
		return taiKhoanDao.GetDataUser();
	}
	public int DeleteUser(int id) {
		return taiKhoanDao.DeleteUser(id);
	}
	public int Admin(int id) {
		
		return taiKhoanDao.Admin(id);
	}
	public int Member(int id) {
	
		return taiKhoanDao.Member(id);
	}
	public List<Users> searchUser(String text) {
	
		return taiKhoanDao.searchUser(text);
	}
	public List<Users> sortUser(String pricing, String priceFrom) {
		
		return taiKhoanDao.sortUser(pricing, priceFrom);
	}
	public List<Users> sortVaiTro(String pricing, String priceFrom) {
		
		return taiKhoanDao.sortVaiTro(pricing, priceFrom);
	}
}
