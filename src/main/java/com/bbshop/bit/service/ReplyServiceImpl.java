package com.bbshop.bit.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.ReplyVO;
import com.bbshop.bit.mapper.ReplyMapper;

@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int registerReply(ReplyVO vo) {
		
		ReplyMapper replymapper = sqlSession.getMapper(ReplyMapper.class);
		return replymapper.insertReply(vo);

	}
	
	@Override
	public ReplyVO getReply(Long reply_num) {
		
		ReplyMapper replymapper = sqlSession.getMapper(ReplyMapper.class);
		return replymapper.readReply(reply_num);
	}
	
	@Override
	public int removeReply(Long reply_num) {
		
		ReplyMapper replymapper = sqlSession.getMapper(ReplyMapper.class);
		int res = replymapper.deleteReply(reply_num);
		
		return res;
	}
	
	@Override
	public int modifyReply(ReplyVO vo) {
		
		ReplyMapper replymapper = sqlSession.getMapper(ReplyMapper.class);
		return replymapper.updateReply(vo);
	}
	
	@Override
	public List<ReplyVO> getList(PagingVO pagingvo, Long board_num){
		
		ReplyMapper replymapper = sqlSession.getMapper(ReplyMapper.class);
		return replymapper.getListWithPaging(pagingvo, board_num);
	}

}
