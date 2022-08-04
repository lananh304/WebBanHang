package webbansach.admindao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import webbansach.userdao.BaseDao;
import webbansach.userdto.ProductsDto;
import webbansach.userdto.ProductsDtoMapper;
import webbansach.userentity.BillDetail;
import webbansach.userentity.Bills;
import webbansach.userentity.Categorys;
import webbansach.userentity.MapperBillDetail;
import webbansach.userentity.MapperBills;
import webbansach.userentity.MapperCategorys;
import webbansach.userentity.MapperUsers;
import webbansach.userentity.Users;


@Repository
@Transactional
public class DonHangDao extends BaseDao {
	   public List<Bills> GetDataBills(){
		   	 List<Bills> list = new ArrayList<Bills>();
		   	 String sql = "SELECT * FROM bills";
		   	 list = _jdbcTemplate.query(sql, new MapperBills());
		   	 return list;
		   }
	   
	
	   
		public int DeleteBills(int id) {
			String sql =  " DELETE bills FROM billdetail,bills WHERE billdetail.id_bills = bills.id  AND bills.id =  " + id + "";
			int  list = _jdbcTemplate.update(sql.toString());
				 return list;
			
		}
		
		
		
		
		public List<BillDetail> XemDonhang(int id) {
			 List<BillDetail> list = new ArrayList<BillDetail>();
			 String sql = "SELECT * FROM billdetail where id_bills =  " + id + "";
			 list =  _jdbcTemplate.query(sql, new MapperBillDetail());
			 return list;
		}
		
		
		
		
		public int ChoXacNhan(int id) {
			String sql = "UPDATE bills SET trangthai = 'Chờ xác nhận' WHERE id =  " + id + "" ;
			int  list= _jdbcTemplate.update(sql);
			 return list;
		}

		
		
		
		public int DangGiaoHang(int id) {
			String sql = "UPDATE bills SET trangthai = 'Đang giao hàng' WHERE id =  " + id + "" ;
			int  list= _jdbcTemplate.update(sql);
			 return list;
		}
		
		
		public int DaGiaohang(int id) {
			String sql = "UPDATE bills SET trangthai = 'Đã giao hàng' WHERE id =  " + id + "" ;
			int  list= _jdbcTemplate.update(sql);
			 return list;
		}

		
		public int HuyDonhang(int id) {
			String sql = "UPDATE bills SET trangthai = 'Hủy đơn hàng' WHERE id =  " + id + "" ;
			int  list= _jdbcTemplate.update(sql);
			 return list;
		}

		
		public List<Bills> searchDonHang(  String text) {
			String sql = "SELECT * FROM bills WHERE  " ;
		
			
			if (text != null) {
				sql += "  name like '%"+ text +"%'";
			}
			
			List<Bills> listProducts = _jdbcTemplate.query(sql, new MapperBills());
			return listProducts;
		}
		
		
		
		
		public List<Bills> sortVanChuyen(String pricing, String priceFrom) {
			String sql = "SELECT *  FROM bills   " ;
		
			
			if (pricing != null && !pricing.equals("default") && !pricing.equals("")) {
				sql += " where  vanchuyen  = '"+priceFrom +"'";
			}
			
			List<Bills> listProducts = _jdbcTemplate.query(sql, new MapperBills());
			return listProducts;
		}
		
		
		public List<Bills> sortTrangThai(String pricing, String priceFrom) {
			String sql = "SELECT *  FROM bills   " ;
		
			
			if (pricing != null && !pricing.equals("default") && !pricing.equals("")) {
				sql += " where  trangthai  = '"+priceFrom +"'";
			}
			
			List<Bills> listProducts = _jdbcTemplate.query(sql, new MapperBills());
			return listProducts;
		}
}
