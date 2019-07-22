package com.bbshop.bit.mapper;

import java.util.List;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReviewVO;

public interface MyPageMapper {

	public List<ReviewVO> getReviewList(PagingVO pagingVO);
}
