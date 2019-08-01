package com.bbshop.bit.mapper;

import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.CommunityVO;

public interface CommunityMapper {
	
	public int insertPost(CommunityVO community);
	public String getNickname(int user_key);
	public CommunityVO getPost(Long board_num);
	public List<CommunityVO> getListWithPaging(Map<String,Object> map);
	public int deletePost(Long board_num);
	public Long getBoardNum();
	public int getCount(Long board_num);
	public int updatePost(CommunityVO community);

}
