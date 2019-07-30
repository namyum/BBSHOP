package com.bbshop.bit.mapper;

import java.util.List;

import com.bbshop.bit.domain.CommunityVO;
import com.bbshop.bit.domain.PagingVO;

public interface CommunityMapper {
	
	public int insertPost(CommunityVO community);
	public String getNickname(int user_key);
	public CommunityVO getPost(Long board_num);
	public List<CommunityVO> getListWithPaging(PagingVO pagingvo);
	public int deletePost(Long board_num);
	public Long getBoardNum();

}
