package com.bbshop.bit.service;

import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.CommunityVO;

public interface CommunityService {
	
	public int insertPost(CommunityVO community);
	public String getNickname(int user_key);
	public CommunityVO getPost(Long board_num);
	public List<CommunityVO> getList(Map<String,Object> map);
	public int deletePost(Long board_num);
	public Long getBoardNum();
	public int updatePost(CommunityVO community);

}
