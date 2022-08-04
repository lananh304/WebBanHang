package webbansach.userservice;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import webbansach.userdto.CartDto;
import webbansach.userentity.BillDetail;
import webbansach.userentity.Bills;
@Service
public interface IBillsService {
public int AddBills(Bills bill);
public void AddBillsDetail(HashMap<Long, CartDto> carts);
public List<Bills> MyOrder(long userId) ;
public List<BillDetail> XemDonhang(int id) ;

}
