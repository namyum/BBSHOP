package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.CommunityVO;
import com.bbshop.bit.domain.PagingVO;

public interface CommunityService {
	
	public int insertPost(CommunityVO community);
	public String getNickname(int user_key);
	public CommunityVO getPost(Long board_num);
	public List<CommunityVO> getList(PagingVO pagingvo);
	public int deletePost(Long board_num);
	public Long getBoardNum();

}
