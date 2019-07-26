package com.bbshop.bit.service;

import com.bbshop.bit.domain.CommunityVO;

public interface CommunityService {
	
	public int insertPost(CommunityVO community);
	public String getNickname(int user_key);
	public CommunityVO getPost(Long board_num);

}
