package webbansach.admindao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import webbansach.userdao.BaseDao;
import webbansach.userdto.ProductsDto;
import webbansach.userdto.ProductsDtoMapper;
import webbansach.userentity.Bills;
import webbansach.userentity.Categorys;
import webbansach.userentity.MapperBills;
import webbansach.userentity.MapperCategorys;

@Repository
@Transactional

public class SanPhamDao extends BaseDao{
    public List<ProductsDto> GetDataSanPham(){
      	 List<ProductsDto> list = new ArrayList<ProductsDto>();
      	 String sql = "SELECT p.id , c.type, p.name, p.price, p.img, p.congty ,p.tacgia, p.ngayxuatban, p.kichthuoc, p.loaibia, p.sotrang, p.masp, p.lower ,p.des From products p , categorys c WHERE p.type = c.id";
      	 list = _jdbcTemplate.query(sql, new ProductsDtoMapper());
      	 return list;
      }
    
    
    
    private StringBuffer SqlString() {
		StringBuffer  sql = new StringBuffer ();
		sql.append("SELECT p.id , c.type, p.name, p.price, p.img, p.congty ,p.tacgia, p.ngayxuatban, p.kichthuoc, p.loaibia, p.sotrang, p.masp, p.lower ,p.des From products p , categorys c WHERE p.type = c.id");
		return sql;
	}
    
    
    
	private String SqlProductByPaginate(int start , int totalPage) {
		StringBuffer sql = SqlString();
		sql.append(" LIMIT " + (start -1) + ","+ totalPage);
		return sql.toString();
	}
	

    
	public List<ProductsDto> GetDataProductsPaginate(int start , int totalPage) {
		StringBuffer sqlGetDataByID =SqlString();
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> listProducts = new ArrayList<ProductsDto>();
		if(listProductsByID.size()>0) {
			String sql = SqlProductByPaginate(start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		
		
		return listProducts;
	}
	
	
	
	
	
	public ProductsDto XemSanPham(int id) {
		 String sql = "SELECT p.id , c.type, p.name, p.price, p.img, p.congty ,p.tacgia, p.ngayxuatban, p.kichthuoc, p.loaibia, p.sotrang, p.masp, p.lower ,p.des From products p , categorys c WHERE p.type = c.id AND p.id = " + id + "";
	   	 return _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
	}
	
	
	
	public int DeleteSanPham(int id) {
		String sql =  "DELETE FROM products WHERE id = " + id + "";
		int  list = _jdbcTemplate.update(sql.toString());
			 return list;
		
	}
	
	
	
	
	
	
	public int AddSanPham(ProductsDto productsDto) {

		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append(" INTO products ");
		sql.append("( ");
		sql.append(" name, ");
		sql.append(" img, ");
		sql.append(" masp, ");
		sql.append(" type, ");
		sql.append(" tacgia, ");
		sql.append(" congty, ");
		sql.append(" ngayxuatban, ");
		sql.append(" kichthuoc, ");
		sql.append(" loaibia, ");
		sql.append(" sotrang, ");
		sql.append(" price, ");
		sql.append("des");
		sql.append(") ");
		sql.append("       VALUES ");
		sql.append("( ");
		sql.append("  '" + productsDto.getName() + "', ");
		sql.append("  '" + productsDto.getImg() + "', ");
		sql.append("  '" + productsDto.getMasp() + "', ");
		sql.append("  '" + productsDto.getType() + "', ");
		sql.append("  '" + productsDto.getTacgia() + "', ");
		sql.append("  '" + productsDto.getCongty() + "', ");
		sql.append("  '" + productsDto.getNgayxuatban() + "', ");
		sql.append("  '" + productsDto.getKichthuoc() + "', ");
		sql.append("  '" + productsDto.getLoaibia() + "', ");
		sql.append("  '" + productsDto.getSotrang() + "', ");
		sql.append("  '" + productsDto.getPrice() + "', ");
		sql.append("  '" + productsDto.getDes() + "' ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;

	}
	
	
	
	
	public void SuaSanPham(ProductsDto productsDto) {
		String sql = "UPDATE products SET name = ?, img = ?, masp = ?, type = ?, tacgia = ?, congty = ?, ngayxuatban = ?, kichthuoc = ?, loaibia = ?, sotrang = ?, price = ?, des = ? WHERE id = ? ";
		_jdbcTemplate.update(sql, productsDto.getName(), productsDto.getImg(),productsDto.getMasp(),productsDto.getType(),productsDto.getTacgia(),productsDto.getCongty(),productsDto.getNgayxuatban(),productsDto.getKichthuoc(),productsDto.getLoaibia(),productsDto.getSotrang(),productsDto.getPrice(),productsDto.getDes(), productsDto.getId());
	}
	
	
	
	
	
	
	
	public List<ProductsDto> searchSanPham(  String text) {
		String sql = "SELECT p.id , c.type, p.name, p.price, p.img, p.congty ,p.tacgia, p.ngayxuatban, p.kichthuoc, p.loaibia, p.sotrang, p.masp, p.lower ,p.des From products p , categorys c WHERE p.type = c.id  " ;
	
		
		if (text != null) {
			sql += "  and p.name like '%"+ text +"%'";
		}
		
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	
	public List<ProductsDto> sortCategory(String pricing, String priceFrom) {
		String sql = "SELECT p.id , c.type, p.name, p.price, p.img, p.congty ,p.tacgia, p.ngayxuatban, p.kichthuoc, p.loaibia, p.sotrang, p.masp, p.lower ,p.des From products p , categorys c WHERE p.type = c.id   " ;
	
		
		if (pricing != null && !pricing.equals("default") && !pricing.equals("")) {
			sql += " and  c.type  = '"+priceFrom +"'";
		}
		
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDto> sortGia( String pricing, String priceFrom) {
		String sql = "SELECT p.id , c.type, p.name, p.price, p.img, p.congty ,p.tacgia, p.ngayxuatban, p.kichthuoc, p.loaibia, p.sotrang, p.masp, p.lower ,p.des From products p , categorys c WHERE p.type = c.id " ;
	
		
		if (pricing != null && !pricing.equals("default") && !pricing.equals("")) {
			sql += " order by  p.price   "+priceFrom +"";
		}
		
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	
}
