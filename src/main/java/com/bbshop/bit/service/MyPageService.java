package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.AddrVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReviewVO;
import com.bbshop.bit.domain.SavingsVO;

public interface MyPageService {

	// 적립금 내역 가지고 오기
	public List<SavingsVO> getSavingsList(PagingVO pagingVO, long key);

	// 주문 내역 가지고 오기
	public List<OrderVO> getOrdersList(PagingVO pagingVO, long key);
	
	// 동적으로 테이블 안의 데이터 개수 구하기
	public long getTotal(PagingVO pagingVO, String table);

	// 리뷰 내역 가지고 오기
	public List<ReviewVO> getReviewList(PagingVO pagingVO, long key);

	// 주문 취소하기
	public void cancelOrder(long order_num);

	// 회원 정보 수정 - 회원 정보 불러오기
	public MemberVO getUserInfo(long key);

	// 회원 정보 수정 - 회원 정보 수정하기
	public void updateUserInfo(MemberVO memberVO);

	// 회원 정보 수정 - 배송지 불러오기
	public List<AddrVO> getAddrList(long key);

	// 회원 정보 수정 - 배송지 수정
	public void updateAddrInfo(AddrVO addrVO);
}
