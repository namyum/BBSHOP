package com.bbshop.bit.service1;

import com.bbshop.bit.domain.CommunityVO;

public interface CommunityService {
	
	public int insertPost(CommunityVO community);
	public String getNickname(int user_key);

}
