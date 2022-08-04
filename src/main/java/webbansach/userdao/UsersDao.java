package webbansach.userdao;

import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import webbansach.userentity.Bills;
import webbansach.userentity.Categorys;
import webbansach.userentity.MapperBills;
import webbansach.userentity.MapperPass;
import webbansach.userentity.MapperUsers;
import webbansach.userentity.Users;

@Repository
@Transactional
public class UsersDao extends BaseDao {
	public int AddAccount(Users users) {

		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append(" INTO users ");
		sql.append("( ");
		sql.append("username , ");
		sql.append(" email, ");
		sql.append(" password , ");
		sql.append("date , ");
		sql.append("sex , ");
		sql.append("type ");
		sql.append(") ");
		sql.append("       VALUES ");
		sql.append("( ");
		sql.append("  '" + users.getUsername() + "', ");
		sql.append("  '" + users.getEmail() + "', ");
		sql.append("  '" + users.getPassword() + "',");

		sql.append("  '" + users.getDate() + "', ");
		sql.append("  '" + users.getSex() + "', ");
		sql.append("  '1' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;

	}

	public Users GetUserByAcc(Users users) {
		try {
			String sql = "SELECT * FROM users where email = '" + users.getEmail() + "' ";

			Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());

			return result;
		} catch (EmptyResultDataAccessException erdae) {
			return null;
		}

	}

	public boolean findByEmail(String email) {

		String sql = "SELECT * FROM users where email = '" + email + "' ";

		List<Users> result = _jdbcTemplate.query(sql, new MapperUsers());
		if (result.size() > 0) {
			return true;
		}
		return false;
	}

	public Users GetUserByEmail(Users users) {
		try {
			String sql = "SELECT * FROM users where email = '" + users.getEmail() + "' ";

			Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());

			return result;
		} catch (EmptyResultDataAccessException erdae) {
			return null;
		}

	}

	public Users PhanQuyen(Users users) {
		try {
			String sql = "SELECT * FROM users where email  = '" + users.getEmail() + "' and type = 1 ";

			Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());

			return result;
		} catch (EmptyResultDataAccessException erdae) {
			return null;
		}

	}

	
	
	
	public Users PhanQuyen1(String users) {
		try {
			String sql = "SELECT * FROM users where email  = '" + users + "' and type = 1 ";

			Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());

			return result;
		} catch (EmptyResultDataAccessException erdae) {
			return null;
		}

	}
	public Users MyUser(long userId) {
		String sql = "SELECT * FROM users WHERE id = " + userId + " ";
		return _jdbcTemplate.queryForObject(sql, new MapperUsers());
	}

	
	
	public Users MyPass(int userId) {
		String sql = "SELECT id,email FROM users WHERE id = " + userId + " ";

		return _jdbcTemplate.queryForObject(sql, new MapperPass());
	}

	
	
	public void SuaUser(Users users) {
		String sql = "UPDATE users SET username = ?, date = ?, sex = ?  WHERE id = ? ";
		_jdbcTemplate.update(sql, users.getUsername(), users.getDate(), users.getSex(), users.getId());
	}
	
	
	
	public void SuaPass(Users users) {
		String sql = "UPDATE users SET password = ? WHERE id = ? ";
		_jdbcTemplate.update(sql, users.getPassword(), users.getId());
	}
	
	
	public void UpdatePass(String userName,String pass) {
		String sql = "UPDATE users SET password = '" + pass + "' WHERE email = '" + userName +"' ";
	_jdbcTemplate.update(sql);
	
	}
	
	
	public Users CheckEmail(String email) {
		String sql = "SELECT email FROM users WHERE email = " + email + " ";

		return _jdbcTemplate.queryForObject(sql, new MapperPass());
	}


}
