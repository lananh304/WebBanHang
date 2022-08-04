package webbansach.userdao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import webbansach.userdto.ProductsDto;
import webbansach.userdto.ProductsDtoMapper;
import webbansach.userentity.BillDetail;
import webbansach.userentity.Bills;
import webbansach.userentity.MapperBillDetail;
import webbansach.userentity.MapperBills;

@Repository
public class BillsDao extends BaseDao {
	public int AddBills(Bills bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append(" INTO bills ");
		sql.append("( ");
		sql.append("name , ");
		sql.append(" phone, ");
		sql.append(" email , ");
		sql.append("address , ");
		sql.append("vanchuyen, ");
		sql.append("trangthai, ");
		sql.append("date, ");
		sql.append("total, ");
		sql.append("id_user ");
		sql.append(") ");
		sql.append("       VALUES ");
		sql.append("( ");
		sql.append("  '" + bill.getName() + "', ");
		sql.append("  '" + bill.getPhone() + "', ");
		sql.append("  '" + bill.getEmail() + "',");

		sql.append("  '" + bill.getAddress() + "', ");
		sql.append("  '" + bill.getVanchuyen() + "', ");
		sql.append("  'Chờ xác nhận', ");
		sql.append("  '" + bill.getDate() +"', ");
		sql.append("  '" + bill.getTotal() +"', ");
		sql.append("  '" + bill.getId_user() +"' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
		
	};
	
	public long GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("Select MAX(id) from bills");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	};
	 public int AddBillsDetail (BillDetail billDetail) {
		 StringBuffer sql = new StringBuffer();
		 sql.append("INSERT ");
			sql.append(" INTO billdetail ");
			sql.append("( ");
			sql.append("id_product , ");
			sql.append("name_product , ");
			sql.append("img_product , ");
			sql.append(" id_bills, ");
			sql.append(" quanty , ");
	
			sql.append("total,  ");
			sql.append("id_user ");

			sql.append(") ");
			sql.append("       VALUES ");
			sql.append("( ");
			sql.append("  '" + billDetail.getId_product() + "', ");
			sql.append("  '" + billDetail.getName_product() + "', ");
			sql.append("  '" + billDetail.getImg_product() + "', ");
			sql.append("  '" + billDetail.getId_bills() + "', ");
			sql.append("  '" + billDetail.getQuanty() + "',");
			sql.append("  '" + billDetail.getTotal() + "', ");
			sql.append("  '" + billDetail.getId_user() + "' ");
			sql.append(")");
			int insert = _jdbcTemplate.update(sql.toString());
			return insert;
	 }
	 
	 
		public long GetIDUser() {
			StringBuffer sql = new StringBuffer();
			sql.append("SELECT id_user FROM bills where id in (select max(id) from bills)");
			long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
			return id;
		}
		public List<Bills> MyOrder(long userId) {
			String sql = "SELECT * FROM bills WHERE id_user = " + userId + " ORDER BY date DESC";
			List<Bills> listProducts = _jdbcTemplate.query(sql, new MapperBills());
			return listProducts;
		}

		public List<BillDetail> XemDonhang(int id) {
			 List<BillDetail> list = new ArrayList<BillDetail>();
			 String sql = "SELECT * FROM billdetail where id_bills =  " + id + "";
			 list =  _jdbcTemplate.query(sql, new MapperBillDetail());
			 return list;
		}
		
}
