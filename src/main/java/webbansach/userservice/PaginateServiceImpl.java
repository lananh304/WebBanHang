package webbansach.userservice;

import org.springframework.stereotype.Service;

import webbansach.userdto.PaginatesDto;
@Service
public class PaginateServiceImpl implements IPaginatesService {
	public PaginatesDto GetInfoPaginates (int totalData, int limit , int currentPage) {
		PaginatesDto paginatesDto = new PaginatesDto();
		paginatesDto.setLimit(limit);
		paginatesDto.setTotalPage(ISetInfoTotalPage(totalData, limit));
		paginatesDto.setCurrentPage(CheckCurrentPage(currentPage, paginatesDto.getTotalPage()));
		
		
		int start = FindStart(paginatesDto.getCurrentPage(), limit);
		paginatesDto.setStart(start);
		int end = FindEnd(paginatesDto.getStart(), limit,totalData);
		paginatesDto.setEnd(end);
		return paginatesDto;
	}

	private int FindEnd(int start, int limit, int totalData) {
		
		return start + limit > totalData ? totalData : (start + limit) -1;
	}

	private int FindStart(int currentPage, int limit) {
		
		return ((currentPage - 1) * limit) + 1;
	}

	private int ISetInfoTotalPage(int totalData, int limit) {
		int totalPage =  0;
		totalPage = totalData / limit;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}
	
	
	
	public int CheckCurrentPage(int currentPage,int totalPage) {
		if(currentPage < 1 ) {
			return 1;
			
		} if(currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}


}
