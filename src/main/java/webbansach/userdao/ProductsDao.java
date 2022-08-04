package webbansach.userdao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import webbansach.userdto.ProductsDto;
import webbansach.userdto.ProductsDtoMapper;
import webbansach.userentity.BillDetail;
import webbansach.userentity.MapperBillDetail;
@Repository
public class ProductsDao extends BaseDao {
	
	private StringBuffer SqlString() {
		StringBuffer  sql = new StringBuffer ();
		sql.append("SELECT p.id , p.type, p.name, p.price, p.img, p.congty ,p.tacgia, p.ngayxuatban, p.kichthuoc, p.loaibia, p.sotrang, p.masp, p.lower ,p.des From products p , categorys c WHERE p.type = c.id");
		return sql;
	}
	public List<ProductsDto> GetDataProducts() {
		
		String sql = "SELECT * FROM products ";
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());

		return listProducts;
	}
	
	
	private StringBuffer SqlProductById(int id) {
		StringBuffer sql =  SqlString();
		sql.append(" AND c.id = " + id + " ");
		return sql;
	}
	
	
	
	
	private String SqlProductByPaginate(int id,int start , int totalPage) {
		StringBuffer sql = SqlProductById(id);
		sql.append(" LIMIT " + (start -1) + ","+ totalPage);
		return sql.toString();
	}
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		String sql = SqlProductById(id).toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id,int start , int totalPage) {
		StringBuffer sqlGetDataByID = SqlProductById(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> listProducts = new ArrayList<ProductsDto>();
		if(listProductsByID.size()>0) {
			String sql = SqlProductByPaginate(id,start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		
		
		return listProducts;
	}
	
	
	

	
	private String SqlProductByID(long id) {
		StringBuffer sql =  SqlString();
		sql.append(" AND p.id = " + id + " ");
		sql.append(" LIMIT 1");
		return sql.toString();
	}
	public List<ProductsDto> GetProductByID(long id) {
		String sql = SqlProductByID(id);
		List<ProductsDto> listProduct = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProduct;
	}
	
	
	public ProductsDto FindProductByID(long id) {
		String sql = SqlProductByID(id);
		ProductsDto product = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return product;
	}
	
	
	
	
	public List<ProductsDto> GetProductsId1() {
		
		String sql = "SELECT  id , type, name, price, img, congty ,tacgia, ngayxuatban, kichthuoc, loaibia, sotrang, masp, lower ,des FROM products where type = 3 ";
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());

		return listProducts;
	}
	
	
	
	public List<BillDetail> DaBan(long id) {
		
		String sql = "SELECT * FROM billdetail where id_product = "+ id;
		List<BillDetail> listProducts = _jdbcTemplate.query(sql, new MapperBillDetail());

		return listProducts;
	}
	
	
	public List<ProductsDto> GetProductsId2() {
		
		String sql = "SELECT  id , type, name, price, img, congty ,tacgia, ngayxuatban, kichthuoc, loaibia, sotrang, masp, lower ,des FROM products where type = 1 ";
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());

		return listProducts;
	}
	
	public List<ProductsDto> GetProductsId3() {
		
		String sql = "SELECT  id , type, name, price, img, congty ,tacgia, ngayxuatban, kichthuoc, loaibia, sotrang, masp, lower ,des FROM products where type = 2 ";
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());

		return listProducts;
	}
	
	
	public List<ProductsDto> search(  String text) {
		String sql = "SELECT * FROM products WHERE  " ;
	
		
		if (text != null) {
			sql += "  name like '%"+ text +"%'";
		}
		
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}

	
	
	
	
	public List<ProductsDto> sort( int category,String pricing, float priceFrom, float priceTo) {
		String sql = "SELECT * FROM products where type =  "+ category ;
	
		
		if (pricing != null && !pricing.equals("default") && !pricing.equals("")) {
			sql += " and (price  >= " + priceFrom + " and price  <= " + priceTo + ")";
		}
		
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}

	
}
