package com.bbshop.bit.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.SavingsVO;
import com.bbshop.bit.domain.ReviewVO;
import com.bbshop.bit.mapper.MyPageMapper;

@Service("myPageService")
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<SavingsVO> getSavingsList(PagingVO pagingVO, long key) {
						
		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);

		return myPageMapper.getSavingsList(pagingVO, key);
	}

	@Override
	public long getTotal(PagingVO pagingVO, String table) {
		
		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);
		
		return myPageMapper.getTotalCount(pagingVO, table);
	}

	@Override
	public List<OrderVO> getOrdersList(PagingVO pagingVO, long key) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);
		
		return myPageMapper.getOrdersList(pagingVO, key);
	}

	@Override
	public List<ReviewVO> getReviewList(PagingVO pagingVO, long key) {
		
		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);
		
		return myPageMapper.getReviewList(pagingVO, key);
	}

	@Override
	public int cancelOrder(long order_num) {
		
		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);
		
		return myPageMapper.cancelOrder(order_num);
	}

}
