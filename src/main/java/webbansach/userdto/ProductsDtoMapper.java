package webbansach.userdto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductsDtoMapper implements RowMapper<ProductsDto> {

	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto productsDto = new ProductsDto();
		productsDto.setId(rs.getLong("id"));
		productsDto.setName(rs.getString("name"));
		productsDto.setType(rs.getString("type"));
		productsDto.setPrice(rs.getDouble("price"));
//		productsDto.setQuatity(rs.getInt("quatity"));
		productsDto.setImg(rs.getString("img"));
		productsDto.setDes(rs.getString("des"));
		productsDto.setCongty(rs.getString("congty"));
		productsDto.setTacgia(rs.getString("tacgia"));
		productsDto.setNgayxuatban(rs.getString("ngayxuatban"));
		productsDto.setKichthuoc(rs.getString("kichthuoc"));
//		productsDto.setNxb(rs.getString("nxb"));
		productsDto.setLoaibia(rs.getString("loaibia"));
		productsDto.setSotrang(rs.getInt("sotrang"));
		productsDto.setMasp(rs.getString("masp"));
		productsDto.setLower(rs.getDouble("lower"));
//		productsDto.setActive(rs.getInt("active"));
		return productsDto;
	}

}
