package com.bbshop.bit.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.Criteria;
import com.bbshop.bit.domain.DormantUserVO;
import com.bbshop.bit.domain.FAQVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.ReviewVO;
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
		System.out.println(goodsList);
		
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
		vo.setGoods_num((long)mapper.getGoodsNum(vo));
//		System.out.println(obj.getClass().getName());
//		String goodsObj = obj.getClass().getName().substring(22);
//		System.out.println(goodsObj);
		
		switch(vo.getCategory()) {
			
			case 1:{
				System.out.println("glove입니다.");
				Gd_GloveVO glove = (Gd_GloveVO)obj;
				glove.setGOODS_NUM(vo.getGoods_num());
				System.out.println("glove GoodsNUM"+glove.getGOODS_NUM());
				mapper.insertGoodsGlove(glove);
				break;
			}
			
			case 2:{
				System.out.println("bat입니다");
				Gd_BatVO bat = (Gd_BatVO)obj;
				bat.setGOODS_NUM(vo.getGoods_num());
				mapper.insertGoodsBat(bat);
				break;
			}
			case 3:{
				System.out.println("uniform입니다");
				Gd_UniformVO uniform = (Gd_UniformVO)obj;
				uniform.setGOODS_NUM(vo.getGoods_num());
				mapper.insertGoodsUniform(uniform);
				break;
			}
			case 4:{
				System.out.println("shoes입니다");
				Gd_ShoesVO shoes = (Gd_ShoesVO)obj;
				shoes.setGOODS_NUM(vo.getGoods_num());
				mapper.insertGoodsShoes(shoes);
				break;
			}
			case 5:{
				System.out.println("ball입니다");
				Gd_BallVO ball = (Gd_BallVO)obj;
				ball.setGOODS_NUM(vo.getGoods_num());
				mapper.insertGoodsBall(ball);
				break;
			}
			
		
		
		
		}
		
	}


	@Override
	public void deleteGoods(Map<String, Object> deleteMap) {
		// TODO Auto-generated method stub
		System.out.println("상품삭제합니다");
		
		System.out.println(deleteMap);
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		sqlSession.getMapper(AdminMapper.class);
		try {
		mapper.deleteGoods(deleteMap);
		System.out.println("상품삭제성공");
		
		}
		catch(Exception e) {
			System.out.println("delete실패..");
			e.printStackTrace();
		}
		
	}


	@Override
	public List<FAQVO> getFAQList() {
		// TODO Auto-generated method stub
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		sqlSession.getMapper(AdminMapper.class);
		
		
		return mapper.getFAQList();
	}


	@Override
	public void write_FAQ(FAQVO faq) {
		// TODO Auto-generated method stub
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		sqlSession.getMapper(AdminMapper.class);
		try {
		mapper.write_FAQ(faq);
		System.out.println("등록 성공!");
		}
		catch(Exception e) {
			System.out.println("등록 실패");
		}
	}


	@Override
	public void deleteFAQ(Map<String, Object> deleteMap) {
		// TODO Auto-generated method stub
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		sqlSession.getMapper(AdminMapper.class);
		try {
		mapper.deleteFAQ(deleteMap);
		System.out.println("삭제성공");
		}
		catch(Exception e) {
			System.out.println("삭제 실패");
		}
		
	}


	@Override
	public FAQVO getFAQ(int faq_num) {
		// TODO Auto-generated method stub
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		sqlSession.getMapper(AdminMapper.class);
		FAQVO faq = new FAQVO();
		try {
			faq=mapper.getFAQ(faq_num);
			System.out.println("찾기성공");
		}
		catch(Exception e) {
			System.out.println("찾기실패");
		}
		return faq;
	}


	@Override
	public void ModifyFAQ(FAQVO faq) {
		// TODO Auto-generated method stub
		AdminMapper mapper = sqlSession.getMapper(AdminMapper.class);
		sqlSession.getMapper(AdminMapper.class);
		try {
			mapper.ModifyFAQ(faq);
			System.out.println("수정성공");
		}
		catch(Exception e) {
			System.out.println("수정 실패");
		}
		
	}

	/* 의정 - 후기관리 */
	// 후기 목록 출력
	@Override
	public List<ReviewVO> getReviewList(Criteria criteria, long score) {
		AdminMapper adminMapper = sqlSession.getMapper(AdminMapper.class);
		
		List<ReviewVO> reviewList = adminMapper.getReviewList(criteria, score);
		
		// user_key로 아이디 가져오고 닉네임변수에 넣을거다..(아이디변수 따로 안만드려고..), date는 년/월/일 만 나오게끔 자른다.
		for(int i=0; i<reviewList.size(); i++) {
			reviewList.get(i).setNickname(adminMapper.getID(reviewList.get(i).getUser_key()));
			
			String re_date = reviewList.get(i).getRe_date().substring(0,10);
			reviewList.get(i).setRe_date(re_date);
		}
		
		return reviewList;
	}
	// 후기 개수
	@Override
	public int getReviewCount(long score) {
		AdminMapper adminMapper = sqlSession.getMapper(AdminMapper.class);
		return adminMapper.getReviewCount(score);
	}
	
	/* 의정 - 회원관리 - 회원탈퇴 */
	// 휴면유저 출력
	@Override
	public List<DormantUserVO> getDormantUsers(Criteria criteria) {
		AdminMapper adminMapper = sqlSession.getMapper(AdminMapper.class);
		
		List<DormantUserVO> dormantList = adminMapper.getDormantUsers(criteria);
		
		// date는 년/월/일 만 나오게끔 자른다.
		for(int i=0; i<dormantList.size(); i++) {
			String wi_date = dormantList.get(i).getWI_DATE().substring(0,10);
			dormantList.get(i).setWI_DATE(wi_date);
			System.out.println(dormantList.get(i).getMEMBER_ID());
		}

		return dormantList;
	}
	// 휴면 > 탈퇴
	@Override
	public void modifyFlag(long user_key) {
		AdminMapper adminMapper = sqlSession.getMapper(AdminMapper.class);
		
		adminMapper.modifyFlag(user_key);
	}
}
