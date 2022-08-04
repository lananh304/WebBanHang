package webbansach.userdao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import webbansach.userentity.BillDetail;
import webbansach.userentity.Categorys;
import webbansach.userentity.DanhGia;
import webbansach.userentity.MapperBillDetail;
import webbansach.userentity.MapperDanhGia;
import webbansach.userentity.MapperPass;
import webbansach.userentity.Users;

@Repository
public class DanhGiaDao extends BaseDao{
	   public List<DanhGia> GetDataDanhGia(long id){
		   	 List<DanhGia> list = new ArrayList<DanhGia>();
		   	 String sql = "SELECT * FROM danhgia where id_product ="+ id ;
		   	 list = _jdbcTemplate.query(sql, new MapperDanhGia());
		   	 return list;
		   }
	   
	   public boolean CheckBill(int id_product, int id_user) {
			String sql = "SELECT * FROM billdetail where id_product = "+ id_product +" and id_user="+ id_user +" ";

			List<BillDetail> result =  _jdbcTemplate.query(sql, new MapperBillDetail());
			if (result.size() > 0) {
				return true;
			}
			return false;
		}
	   
		public int AddCategorys(DanhGia danhGia) {

			StringBuffer sql = new StringBuffer();
			sql.append("INSERT ");
			sql.append(" INTO danhgia ");
			sql.append("( ");
			sql.append(" name, ");
			sql.append("date, ");
			sql.append("noidung, ");
			sql.append("id_product");
			sql.append(") ");
			sql.append("       VALUES ");
			sql.append("( ");
			sql.append("  '" + danhGia.getName() + "', ");
			sql.append("  '" + danhGia.getDate() + "', ");
			sql.append("  '" + danhGia.getNoidung() + "', ");
			sql.append("  '" + danhGia.getId_product() + "' ");
			sql.append(")");
			int insert = _jdbcTemplate.update(sql.toString());
			return insert;

		}

}
