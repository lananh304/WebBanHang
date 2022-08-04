package webbansach.userservice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webbansach.userdao.BillsDao;
import webbansach.userdto.CartDto;
import webbansach.userentity.BillDetail;
import webbansach.userentity.Bills;

@Service
public class BillsServiceImpl implements IBillsService {
@Autowired
private BillsDao billsDao;
	public int AddBills(Bills bill) {
		
		return billsDao.AddBills(bill) ;
	}

	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		long idBills = billsDao.GetIDLastBills();
		long idUser = billsDao.GetIDUser();
		for(Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billDetail.setName_product(itemCart.getValue().getProduct().getName());
			billDetail.setImg_product(itemCart.getValue().getProduct().getImg());
			billDetail.setId_user(idUser);
			billsDao.AddBillsDetail(billDetail);
		}
		
	}

	public List<Bills> MyOrder(long userId) {
		long idBills = billsDao.GetIDLastBills();
		List<Bills> orders = billsDao.MyOrder(userId);
//		HashMap<Long, CartDto> carts = new HashMap<Long, CartDto>();
//		for (Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
//			BillDetail billDetail = new BillDetail();
//			billDetail.setId_bills(idBills);
//			billDetail.setId_product(itemCart.getValue().getProduct().getId());
//			billDetail.setQuanty(itemCart.getValue().getQuanty());
//			billDetail.setTotal(itemCart.getValue().getTotalPrice());
//			
//			billsDao.AddBillsDetail(billDetail);
//		}
		return orders;
	}

	public List<BillDetail> XemDonhang(int id) {
		
		return billsDao.XemDonhang(id);
	}

	}


