package com.bbshop.bit.Service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.CommunityVO;
import com.bbshop.bit.mapper.CommunityMapper;

@Service
public class CommunityServiceImpl implements CommunityService{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertPost(CommunityVO community) {
		
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		communityMapper.insertPost(community);

	}
	
}
