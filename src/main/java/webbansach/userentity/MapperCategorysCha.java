package webbansach.userentity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCategorysCha implements RowMapper<CategorysCha> {

	public CategorysCha mapRow(ResultSet rs, int rowNum) throws SQLException {
		CategorysCha slides = new CategorysCha();
	slides.setId(rs.getInt("id"));
	slides.setActive(rs.getString("active"));
		return slides;
	}
}
