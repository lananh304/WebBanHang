package webbansach.userservice;

import org.springframework.stereotype.Service;

import webbansach.userentity.Users;
@Service
public interface IAccountService {
	public int AddAccount(Users users);
	public Users CheckAccount(Users users);
	public boolean findByEmail(String email);
	public Users PhanQuyen(Users users);
	public Users GetUserByEmail(Users users);
	public Users MyUser(long userId);
	public void SuaUser(Users users);
	public Users MyPass(int userId) ;
	public void SuaPass(Users users);
	public void UpdatePass(String userName,String pass) ;
	public Users CheckEmail(String email);

}
