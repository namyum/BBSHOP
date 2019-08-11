package com.bbshop.bit.mapper;

import java.util.List;

import com.bbshop.bit.domain.OnetoOneVO;
import com.bbshop.bit.domain.PagingVO;

public interface OnetoOneMapper {
	
	//@Select("select * from tbl_board where bno > 0")
	public List<OnetoOneVO> OnetoOne_getList();
	
	public List<OnetoOneVO> getListWithPaging(PagingVO pag); 
	
	public void insert(OnetoOneVO board);
	
	public Integer OnetoOne_insertSelectKey(OnetoOneVO board);
	
	public OnetoOneVO OnetoOne_read(Long ONE_ONE_NUM);
	
	public int OnetoOne_delete(Long ONE_ONE_NUM);
	
	public int OnetoOne_update(OnetoOneVO board);
	
	public int getTotalCount(PagingVO pag);
}
