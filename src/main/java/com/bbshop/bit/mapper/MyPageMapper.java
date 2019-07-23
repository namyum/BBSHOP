package com.bbshop.bit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReviewVO;

public interface MyPageMapper {

	public List<ReviewVO> getReviewList(@Param("pagingVO") PagingVO pagingVO, @Param("category") String category, @Param("key") long key);
}
