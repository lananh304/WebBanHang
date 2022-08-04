package webbansach.userdao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import webbansach.userentity.Categorys;
import webbansach.userentity.MapperCategorys;

@Repository
public class CategorysDao  extends BaseDao {

    public List<Categorys> GetDataCategorys(){
    	 List<Categorys> list = new ArrayList<Categorys>();
    	 String sql = "SELECT * FROM categorys where active =1";
    	 list = _jdbcTemplate.query(sql, new MapperCategorys());
    	 return list;
    }
    
    
    public List<Categorys> GetDataCategorys1(){
   	 List<Categorys> list = new ArrayList<Categorys>();
   	 String sql = "SELECT * FROM categorys where active =2";
   	 list = _jdbcTemplate.query(sql, new MapperCategorys());
   	 return list;
   }
    
    
    public List<Categorys> GetDataCategorys2(){
   	 List<Categorys> list = new ArrayList<Categorys>();
   	 String sql = "SELECT * FROM categorys where active =3";
   	 list = _jdbcTemplate.query(sql, new MapperCategorys());
   	 return list;
   }
    
    

}
