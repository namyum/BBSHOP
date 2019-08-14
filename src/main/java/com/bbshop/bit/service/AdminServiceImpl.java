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


	@Override
	public void insertGoods(GoodsVO vo, Object obj) {
		// TODO Auto-generated method stub
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		sqlSession.getMapper(AdminMapper.class);
		mapper.insertGoods(vo);
		//System.out.println("데이터 삽입이 제대로 이뤄졌다.");
		System.out.println("vo의 굿즈넘"+mapper.getGoodsNum(vo));
		vo.setGOODS_NUM((long)mapper.getGoodsNum(vo));
//		System.out.println(obj.getClass().getName());
//		String goodsObj = obj.getClass().getName().substring(22);
//		System.out.println(goodsObj);
		
		switch(vo.getCATEGORY()) {
			
			case 1:{
				System.out.println("glove입니다.");
				Gd_gloveVO glove = (Gd_gloveVO)obj;
				glove.setGOODS_NUM(vo.getGOODS_NUM());
				System.out.println("glove GoodsNUM"+glove.getGOODS_NUM());
				mapper.insertGoodsGlove(glove);
				break;
			}
			
			case 2:{
				System.out.println("bat입니다");
				Gd_batVO bat = (Gd_batVO)obj;
				bat.setGOODS_NUM(vo.getGOODS_NUM());
				mapper.insertGoodsBat(bat);
				break;
			}
			case 3:{
				System.out.println("uniform입니다");
				Gd_uniformVO uniform = (Gd_uniformVO)obj;
				uniform.setGOODS_NUM(vo.getGOODS_NUM());
				mapper.insertGoodsUniform(uniform);
				break;
			}
			case 4:{
				System.out.println("shoes입니다");
				Gd_shoesVO shoes = (Gd_shoesVO)obj;
				shoes.setGOODS_NUM(vo.getGOODS_NUM());
				mapper.insertGoodsShoes(shoes);
				break;
			}
			case 5:{
				System.out.println("ball입니다");
				Gd_ballVO ball = (Gd_ballVO)obj;
				ball.setGOODS_NUM(vo.getGOODS_NUM());
				mapper.insertGoodsBall(ball);
				break;
			}
			
		
		
		
		}
		
	}
}
