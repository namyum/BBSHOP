package com.bbshop.bit.service;

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
	public int insertPost(CommunityVO community) {
		
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		int res = communityMapper.insertPost(community);
		
		return res;

	}
	
	@Override
	public String getNickname(int user_key) {
		
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		
		return communityMapper.getNickname(user_key);
	}
	
}
