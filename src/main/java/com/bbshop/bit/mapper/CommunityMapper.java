package com.bbshop.bit.mapper;

import com.bbshop.bit.domain.CommunityVO;

public interface CommunityMapper {
	
	public int insertPost(CommunityVO community);
	public String getNickname(int user_key);

}
