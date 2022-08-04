package webbansach.userservice;

import org.springframework.stereotype.Service;

import webbansach.userdto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates (int totalData, int limit , int currentPage);
	

}
