package com.bbshop.bit.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.AddrVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.domain.MoreDetailsVO;
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
	public void cancelOrder(long order_num) {
		
		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);
		
		myPageMapper.cancelOrder(order_num);
	}

	@Override
	public MemberVO getUserInfo(long key) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);
		
		return myPageMapper.getUserInfo(key);
	}

	@Override
	public void updateUserInfo(MemberVO memberVO) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);

		myPageMapper.updateUserInfo(memberVO);
	}

	@Override
	public List<AddrVO> getAddrList(long key) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);

		return myPageMapper.getAddrList(key);
	}

	@Override
	public void updateAddrInfo(AddrVO addrVO) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);

		myPageMapper.updateAddrInfo(addrVO);
	}

	@Override
	public void deleteUserInfo(long key) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);

		myPageMapper.deleteUserInfo(key);
	}

	@Override
	public void insertAddrInfo(AddrVO addrVO) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);

		myPageMapper.insertAddrInfo(addrVO);
	}

	@Override
	public void deleteAddrInfo(int num) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);

		myPageMapper.deleteAddrInfo(num);
	}

	@Override
	public MoreDetailsVO getDetail(long key) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);

		return myPageMapper.getDetail(key);
	}

	@Override
	public void updateDetailInfo(MoreDetailsVO moreDetailsVO, long key) {

		MyPageMapper myPageMapper = sqlSession.getMapper(MyPageMapper.class);

		System.out.println("service에서 VO : " + moreDetailsVO.toString());
		
		myPageMapper.updateDetailInfo(moreDetailsVO, 1);
	}

}
