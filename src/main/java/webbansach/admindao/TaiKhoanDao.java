package webbansach.admindao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import webbansach.userdao.BaseDao;
import webbansach.userdto.ProductsDto;
import webbansach.userdto.ProductsDtoMapper;
import webbansach.userentity.Bills;
import webbansach.userentity.Categorys;
import webbansach.userentity.MapperBills;
import webbansach.userentity.MapperCategorys;
import webbansach.userentity.MapperUsers;
import webbansach.userentity.Users;

@Repository
@Transactional
public class TaiKhoanDao extends BaseDao{
    public List<Users> GetDataUser(){
      	 List<Users> list = new ArrayList<Users>();
      	 String sql = "SELECT u.id, u.username, u.email, u.password,u.date,u.sex,l.type  FROM users u , loaiuser l where u.type = l.id;";
      	 list = _jdbcTemplate.query(sql, new MapperUsers());
      	 return list;
      }
   	
    
	public int DeleteUser(int id) {
		String sql =  "DELETE FROM users WHERE id = " + id + "";
		int  list = _jdbcTemplate.update(sql.toString());
			 return list;
		
	}
	
	
	
	
	public int Admin(int id) {
		String sql = "UPDATE users SET type = 2 WHERE id =  " + id + "" ;
		int  list= _jdbcTemplate.update(sql);
		 return list;
	}
	
	
	public int Member(int id) {
		String sql = "UPDATE users SET type = 1 WHERE id =  " + id + "" ;
		int  list= _jdbcTemplate.update(sql);
		 return list;
	}
	
	public List<Users> searchUser(  String text) {
		String sql = "SELECT u.id, u.username, u.email, u.password,u.date,u.sex,l.type  FROM users u , loaiuser l where u.type = l.id And  " ;
	
		
		if (text != null) {
			sql += "  username like '%"+ text +"%'";
		}
		
		List<Users> listProducts = _jdbcTemplate.query(sql, new MapperUsers());
		return listProducts;
	}
    
	
	
	public List<Users> sortUser(String pricing, String priceFrom) {
		String sql = "SELECT u.id, u.username, u.email, u.password,u.date,u.sex,l.type  FROM users u , loaiuser l where u.type = l.id  " ;
	
		
		if (pricing != null && !pricing.equals("default") && !pricing.equals("")) {
			sql += " and  sex  = '"+priceFrom +"'";
		}
		
		List<Users> listProducts = _jdbcTemplate.query(sql, new MapperUsers());
		return listProducts;
	}
	
	
	
	public List<Users> sortVaiTro(String pricing, String priceFrom) {
		String sql = "SELECT u.id, u.username, u.email, u.password,u.date,u.sex,l.type  FROM users u , loaiuser l where u.type = l.id  " ;
	
		
		if (pricing != null && !pricing.equals("default") && !pricing.equals("")) {
			sql += " and  l.type = '"+priceFrom +"'";
		}
		
		List<Users> listProducts = _jdbcTemplate.query(sql, new MapperUsers());
		return listProducts;
	}
}
