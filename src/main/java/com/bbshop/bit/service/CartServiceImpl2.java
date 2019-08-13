package com.bbshop.bit.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.Cart_GDVO2;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.mapper.CartMapper2;

@Service("cartService")
public class CartServiceImpl2 implements CartService2 {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Cart_GDVO2> getCartList(long user_key) {
		
		System.out.println("유저키가 여기까지 들어오는가?"+user_key);
		CartMapper2 mapper = sqlSession.getMapper(CartMapper2.class);
		sqlSession.getMapper(CartMapper2.class);
		List<Cart_GDVO2> cartList = mapper.getCartList(user_key);
		
		System.out.println(cartList);
		
		// TODO Auto-generated method stub
		return cartList;
	}
	@Override
	public GoodsVO getGoods(long goodsnum){
		System.out.println("GoodsNum이 들어오는가?"+goodsnum);
		
		CartMapper2 mapper = sqlSession.getMapper(CartMapper2.class);
		sqlSession.getMapper(CartMapper2.class);
		
		GoodsVO goods = mapper.getGoods(goodsnum);
		System.out.println(goods);
		
		return goods;
		
	}
	
	@Override
	public void modify(Cart_GDVO2 qnt) {
		CartMapper2 mapper = sqlSession.getMapper(CartMapper2.class);
		sqlSession.getMapper(CartMapper2.class);
		mapper.modify(qnt);
		System.out.println("수정되었습니다.");
	}
	@Override
	public void selectDelete(Map<String,Object> deleteMap) {
		CartMapper2 mapper = sqlSession.getMapper(CartMapper2.class);
		sqlSession.getMapper(CartMapper2.class);
		mapper.selectDelete(deleteMap);
		System.out.println("삭제 되었습니다.");
		
	}
	@Override
	public void deleteAll() {
		CartMapper2 mapper = sqlSession.getMapper(CartMapper2.class);
		sqlSession.getMapper(CartMapper2.class);
		mapper.deleteAll();
		System.out.println("전체삭제 되었습니다.");
	}

}
