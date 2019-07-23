package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReviewVO;

public interface MyPageService {

	public List<ReviewVO> getReviewList(PagingVO pagingVO, String category, long key);

}
