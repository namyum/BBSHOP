package com.bbshop.bit.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.SavingsVO;
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

}
