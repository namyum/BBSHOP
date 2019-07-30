package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReplyVO;

public interface ReplyService {
	
	public int registerReply(ReplyVO vo);
	
	public ReplyVO getReply(Long reply_num);
	
	public int removeReply(Long reply_num);
	
	public int modifyReply(ReplyVO vo);
	
	public List<ReplyVO> getList(PagingVO pagingvo, Long board_num);

}
