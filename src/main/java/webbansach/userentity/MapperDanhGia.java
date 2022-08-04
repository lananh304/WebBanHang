package webbansach.userentity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperDanhGia implements RowMapper<DanhGia> {
	
	public DanhGia mapRow(ResultSet rs, int rowNum) throws SQLException {
		DanhGia slides = new DanhGia();
	slides.setId(rs.getInt("id"));
	slides.setName(rs.getString("name"));
	slides.setDate(rs.getString("date"));
	slides.setNoidung(rs.getString("noidung"));
	slides.setId_product(rs.getInt("id_product"));
		return slides;
	}


}
