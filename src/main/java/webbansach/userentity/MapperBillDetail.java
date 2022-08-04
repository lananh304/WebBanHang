package webbansach.userentity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBillDetail implements RowMapper<BillDetail>{
	
	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetail slides = new BillDetail();
	slides.setId(rs.getInt("id"));
	slides.setId_product(rs.getInt("id_product"));
	slides.setId_bills(rs.getInt("id_bills"));
	slides.setQuanty(rs.getInt("quanty"));
	slides.setTotal(rs.getDouble("total"));
	slides.setName_product(rs.getString("name_product"));
	slides.setImg_product(rs.getString("img_product"));
	slides.setId_user(rs.getInt("id_user"));
		return slides;
	}

}
