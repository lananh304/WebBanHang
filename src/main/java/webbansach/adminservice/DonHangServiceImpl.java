package webbansach.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.admindao.DonHangDao;
import webbansach.userentity.BillDetail;
import webbansach.userentity.Bills;

@Service
public class DonHangServiceImpl implements IDonHangService {
	@Autowired
	private DonHangDao donHangDao;

	public List<Bills> GetDataBills() {
	
		return donHangDao.GetDataBills();
	}

	public int DeleteBills(int id) {
		// TODO Auto-generated method stub
		return donHangDao.DeleteBills(id);
	}

	public List<BillDetail> XemDonhang(int id)  {
		
		return donHangDao.XemDonhang(id);
	}

	public int ChoXacNhan(int id) {
		return	donHangDao.ChoXacNhan(id);
		
	}

	public int DangGiaoHang(int id) {

		return donHangDao.DangGiaoHang(id);
	}

	public int DaGiaohang(int id) {

		return donHangDao.DaGiaohang(id);
	}

	public List<Bills> searchDonHang(String text) {
		
		return donHangDao.searchDonHang(text);
	}

	public List<Bills> sortVanChuyen(String pricing, String priceFrom) {
		
		return donHangDao.sortVanChuyen(pricing, priceFrom);
	}

	public List<Bills> sortTrangThai(String pricing, String priceFrom) {
		
		return donHangDao.sortTrangThai(pricing, priceFrom);
	}

	public int HuyDonhang(int id) {
		
		return donHangDao.HuyDonhang(id);
	}
	
	
	
}
