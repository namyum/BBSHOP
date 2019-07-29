package com.bbshop.bit.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.ReportVO;
import com.bbshop.bit.mapper.ReportMapper;

@Service
public class ReportServiceImpl implements ReportService{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int registerReport(ReportVO vo) {
		
		ReportMapper reportMapper = sqlSession.getMapper(ReportMapper.class);
		
		int res = reportMapper.insertReport(vo);
		
		return res;
	}

}
