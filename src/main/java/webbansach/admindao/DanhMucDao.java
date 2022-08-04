package webbansach.admindao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import webbansach.userdao.BaseDao;
import webbansach.userdto.ProductsDto;
import webbansach.userdto.ProductsDtoMapper;
import webbansach.userentity.Categorys;
import webbansach.userentity.CategorysCha;
import webbansach.userentity.MapperCategorys;
import webbansach.userentity.MapperCategorysCha;
import webbansach.userentity.Users;

@Repository
@Transactional
public class DanhMucDao  extends BaseDao{
    public List<Categorys> GetDataCategorys(){
   	 List<Categorys> list = new ArrayList<Categorys>();
   	 String sql = "SELECT c.id,c.type,cc.active FROM categorys c , categoryscha cc where c.active = cc.id";
   	 list = _jdbcTemplate.query(sql, new MapperCategorys());
   	 return list;
   }
	
    
    
    public List<CategorysCha> GetDataCategorysCha(){
      	 List<CategorysCha> list = new ArrayList<CategorysCha>();
      	 String sql = "SELECT id, active FROM  categoryscha ";
      	 list = _jdbcTemplate.query(sql, new MapperCategorysCha());
      	 return list;
      }
   	
    
    
    
	public int DeleteCategorys(int id) {
		String sql =  "DELETE FROM categorys WHERE id = " + id + "";
		int  list = _jdbcTemplate.update(sql.toString());
			 return list;
		
	}
   	 
	public int AddCategorys(Categorys categorys) {

		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append(" INTO categorys ");
		sql.append("( ");
		sql.append(" type, ");
		sql.append("active");
		sql.append(") ");
		sql.append("       VALUES ");
		sql.append("( ");
		sql.append("  '" + categorys.getType() + "', ");
		sql.append("  '" + categorys.getActive() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;

	}
	
	
//	public int SuaCategorys(Categorys categorys) {
//		StringBuffer sql = new StringBuffer();
//		sql.append("UPDATE  ");
//		sql.append(" categorys ");
//		sql.append(" SET ");
//		sql.append(" name = ");
//		sql.append("  '" + categorys.getName() + "', ");
//		sql.append(" active= ");
//		sql.append("  '" + categorys.getActive() + "' ");
//		sql.append(" WHERE  ");
//		sql.append(" id= ");
//		sql.append("  '" + categorys.getId() + "' ");
//		sql.append(" ");
//	
//		int insert = _jdbcTemplate.update(sql.toString());
//		return insert;
//	}

	
	
	
	public Categorys XemCategorys(int id) {
		 String sql = "SELECT c.id,c.type,cc.active FROM categorys c , categoryscha cc where c.active = cc.id And c.id = " + id + "";
	   	 return _jdbcTemplate.queryForObject(sql, new MapperCategorys());
	}
	
	
	public void SuaCategorys(Categorys categorys) {
		String sql = "UPDATE categorys SET type = ?, active = ? WHERE id = ? ";
		_jdbcTemplate.update(sql, categorys.getType(), categorys.getActive(), categorys.getId());
	}

	public List<Categorys> searchDanhmuc(String text) {
		String sql = "SELECT * FROM categorys WHERE  " ;
	
		
		if (text != null) {
			sql += "  type like '%"+ text +"%'";
		}
		
		List<Categorys> listProducts = _jdbcTemplate.query(sql, new MapperCategorys());
		return listProducts;
	}
	
}
