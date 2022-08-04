package webbansach.userentity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCategorys implements RowMapper<Categorys> {

	public Categorys mapRow(ResultSet rs, int rowNum) throws SQLException {
		Categorys slides = new Categorys();
	slides.setId(rs.getInt("id"));
	slides.setType(rs.getString("type"));
	slides.setActive(rs.getString("active"));
		return slides;
	}
}
