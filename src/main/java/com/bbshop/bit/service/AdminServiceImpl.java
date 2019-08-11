package com.bbshop.bit.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.Gd_ballVO;
import com.bbshop.bit.domain.Gd_batVO;
import com.bbshop.bit.domain.Gd_gloveVO;
import com.bbshop.bit.domain.Gd_shoesVO;
import com.bbshop.bit.domain.Gd_uniformVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.mapper.AdminMapper;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<GoodsVO> getGoodsList() {
		System.out.println("상품 목록을 받아오겠습니다.");
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		sqlSession.getMapper(AdminMapper.class);
		List<GoodsVO> goodsList = mapper.getGoodsList();
		//System.out.println(goodsList);
		
		return goodsList;
	}
	
	
	//대표상품의 옵션들을 가져오는 메소드.
	@Override
	public List<Object> getGdList(int category, long goods_num) {
		// TODO Auto-generated method stub
		//System.out.println("상품 옵션 목록을 받아오겠습니다.");
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		sqlSession.getMapper(AdminMapper.class);
		List<Object> goodsList = new ArrayList<Object>();
		//카테고리의 숫자에 따라 mapper에서 사용되는 메소드가 다르다.
		switch(category) {
		//글러브
		case 1: {
			goodsList = mapper.getGloveList(goods_num);	
		//	System.out.println(goodsList);
			break;
		}//방망이
		case 2: {
			goodsList = mapper.getBatList(goods_num);	
	//		System.out.println(goodsList);
			break;
		}//유니폼
		case 3: {
			goodsList = mapper.getUniformList(goods_num);	
			//System.out.println(goodsList);
			break;
		}//야구화
		case 4: {
			goodsList = mapper.getShoesList(goods_num);	
		//	System.out.println(goodsList);
			break;
		}//야구공
		case 5: {
			goodsList = mapper.getBallList(goods_num);	
	//		System.out.println(goodsList);
			break;
		}
		}
		
		
		return goodsList;
	}
}
