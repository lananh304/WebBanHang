package webbansach.userservice;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.userdao.UsersDao;
import webbansach.userentity.Users;

@Service
public class AccountServiceImpl implements IAccountService {
	@Autowired
	UsersDao usersDao = new UsersDao();

	public int AddAccount(Users users) {
		
		
		users.setPassword(BCrypt.hashpw(users.getPassword(), BCrypt.gensalt(12)) );
		return usersDao.AddAccount(users);
	}
	
	
	
	public void UpdatePass(String userName,String pass)  {
		usersDao.UpdatePass(userName,BCrypt.hashpw(pass, BCrypt.gensalt(12)));
	}

	public Users CheckAccount(Users users) {
		String pass = users.getPassword();
		System.out.println(pass);
		users =	usersDao.GetUserByAcc(users);
		if(users != null) {
			if(BCrypt.checkpw(pass, users.getPassword()) ) {
				System.out.println(pass);
				System.out.println(BCrypt.checkpw(pass, users.getPassword()));
				System.out.println(users.getPassword());
				return users;
			}
			else {
				return null;
			}
			
		}
			return null;
		
		
	}



	public Users PhanQuyen(Users users) {
		users =	usersDao.PhanQuyen(users);
		
		if(users != null) {
			return users;
		}
		return null;
	}

	

	public Users GetUserByEmail(Users users) {
		
	users =	usersDao.GetUserByEmail(users);
		
		if(users != null) {
			return users;
		}
		return null;
	}

	public Users MyUser(long userId) {
	
		return usersDao.MyUser(userId);
	}

	public void SuaUser(Users users) {
		usersDao.SuaUser(users);
		
	}

	public boolean findByEmail(String email) {
		
		return usersDao.findByEmail(email);
	}

	public Users MyPass(int userId) {
	
		return usersDao.MyPass(userId);
	}

	public void SuaPass(Users users) {
		users.setPassword(BCrypt.hashpw(users.getPassword(), BCrypt.gensalt(12)) );
		usersDao.SuaPass(users);
		
	}



	public Users CheckEmail(String email) {
		
		return usersDao.CheckEmail(email);
	}
	


	
	
}
