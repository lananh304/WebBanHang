package webbansach.userentity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperUsers implements RowMapper<Users> {

	public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		Users users = new Users();
		users.setId(rs.getInt("id"));
		users.setUsername(rs.getString("username"));
		users.setEmail(rs.getString("email"));
		users.setPassword(rs.getString("password"));
		users.setDate(rs.getString("date"));
		users.setSex(rs.getString("sex"));
		users.setType(rs.getString("type"));
		return users;
	}

}
