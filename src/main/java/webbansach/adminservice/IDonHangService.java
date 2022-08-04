package webbansach.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.userentity.BillDetail;
import webbansach.userentity.Bills;

@Service
public interface IDonHangService {
@Autowired
public List<Bills> GetDataBills();
public int DeleteBills(int id);
public List<BillDetail> XemDonhang(int id) ;
public int ChoXacNhan(int id);
public int DangGiaoHang(int id);
public int DaGiaohang(int id);
public int HuyDonhang(int id);
public List<Bills> searchDonHang(  String text) ;
public List<Bills> sortVanChuyen(String pricing, String priceFrom) ;
public List<Bills> sortTrangThai(String pricing, String priceFrom);
}
