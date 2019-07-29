package com.bbshop.bit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bbshop.bit.domain.AddrVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.MoreDetailsVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReviewVO;
import com.bbshop.bit.domain.SavingsVO;

public interface MyPageMapper {

	public List<SavingsVO> getSavingsList(@Param("pagingVO") PagingVO pagingVO, @Param("key") long key);
	
	public long getTotalCount(@Param("pagingVO") PagingVO pagingVO, @Param("table") String table);

	public List<OrderVO> getOrdersList(@Param("pagingVO") PagingVO pagingVO, @Param("total") long total, @Param("key") long key);

	public List<ReviewVO> getReviewList(@Param("pagingVO") PagingVO pagingVO, @Param("key") long key);

	public void cancelOrder(long order_num);

	public MemberVO getUserInfo(long key);

	public void updateUserInfo(MemberVO memberVO);

	public List<AddrVO> getAddrList(long key);

	public void deleteUserInfo(long key);
	
	public void updateAddrInfo(AddrVO addrVO);

	public void insertAddrInfo(AddrVO addrVO);

	public void deleteAddrInfo(@Param("key") long key, @Param("num") int num);

	public MoreDetailsVO getDetail(long key);

	public void updateDetailInfo(@Param("moreDetailsVO") MoreDetailsVO moreDetailsVO, @Param("key") long key);

	public int nickCheck(String nickname);
}
