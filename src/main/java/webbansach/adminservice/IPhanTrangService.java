package webbansach.adminservice;

import org.springframework.stereotype.Service;

import webbansach.userdto.PaginatesDto;

@Service
public interface IPhanTrangService {
	public PaginatesDto GetInfoPaginates (int totalData, int limit , int currentPage);
	

}
