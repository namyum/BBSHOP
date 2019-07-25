package com.bbshop.bit.mapper;

import com.bbshop.bit.domain.CommunityVO;
import com.bbshop.bit.domain.MemberVO;

public interface CommunityMapper {
	
	public int insertPost(CommunityVO community);
	public String getNickname(int user_key);

}
