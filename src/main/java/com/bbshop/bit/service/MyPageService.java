package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.SavingsVO;

public interface MyPageService {

	// 적립금 내역 가지고 오기
	public List<SavingsVO> getSavingsList(PagingVO pagingVO, long key);
	
	// 적립금 내역 전체 개수 구하기
	public long getTotal(PagingVO pagingVO);

	// 주문 내역 가지고 오기
	public List<OrderVO> getOrdersList(PagingVO pagingVO, long key);

}
