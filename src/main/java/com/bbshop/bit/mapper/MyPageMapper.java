package com.bbshop.bit.mapper;

import java.util.List;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.SavingsVO;

public interface MyPageMapper {

	// List<SavingsVO> getSavingsList(Long user_key);

	List<SavingsVO> getSavingsList(PagingVO pagingVO);
}
