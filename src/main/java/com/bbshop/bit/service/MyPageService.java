package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.SavingsVO;

public interface MyPageService {

	List<SavingsVO> getSavingsList(PagingVO pagingVO, long key);

}
