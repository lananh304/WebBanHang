package webbansach.userentity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperPass implements RowMapper<Users> {

	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		Users users = new Users();
		users.setId(rs.getInt("id"));
		users.setEmail(rs.getString("email"));
		return users;
	}

}