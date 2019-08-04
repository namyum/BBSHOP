package com.bbshop.bit.service;

import java.util.List;
import java.util.Map;

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
	
	@Override
	public CommunityVO getPost(Long board_num) {
		
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		
		return communityMapper.getPost(board_num);
	}
	
	@Override
	public List<CommunityVO> getList(Map<String,Object> map) {
		

		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		
		return communityMapper.getListWithPaging(map);
	}
	
	@Override
	public int deletePost(Long board_num) {
		
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		
		return communityMapper.deletePost(board_num);
	}
	
	@Override
	public Long getBoardNum() {
		
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		
		return communityMapper.getBoardNum();
	}
	
	@Override
	public int updatePost(CommunityVO community) {
		
		CommunityMapper communityMapper = sqlSession.getMapper(CommunityMapper.class);
		return communityMapper.updatePost(community);
	}
	
}
