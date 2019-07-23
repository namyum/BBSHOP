package com.bbshop.bit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReviewVO;
import com.bbshop.bit.domain.SavingsVO;

public interface MyPageMapper {

	public List<SavingsVO> getSavingsList(@Param("pagingVO") PagingVO pagingVO, @Param("key") long key);
	
	public long getTotalCount(@Param("pagingVO") PagingVO pagingVO, @Param("table") String table);

	public List<OrderVO> getOrdersList(@Param("pagingVO") PagingVO pagingVO, @Param("key") long key);

	public List<ReviewVO> getReviewList(@Param("pagingVO") PagingVO pagingVO, @Param("category") String category, @Param("key") long key);
}
