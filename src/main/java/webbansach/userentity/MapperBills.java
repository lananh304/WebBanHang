package webbansach.userentity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBills  implements RowMapper<Bills> {
	
	public Bills mapRow(ResultSet rs, int rowNum) throws SQLException {
		Bills slides = new Bills();
	slides.setId(rs.getInt("id"));
	slides.setName(rs.getString("name"));
	slides.setPhone(rs.getString("phone"));
	slides.setEmail(rs.getString("email"));
	slides.setAddress(rs.getString("address"));
	slides.setVanchuyen(rs.getString("vanchuyen"));
	slides.setTrangthai(rs.getString("trangthai"));
	slides.setDate(rs.getDate("date"));
	slides.setTotal(rs.getDouble("total"));
	slides.setId_user(rs.getInt("id_user"));
		return slides;
	}

}
