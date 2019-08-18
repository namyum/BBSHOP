package com.bbshop.bit.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bbshop.bit.domain.Cart_GDVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.domain.Order_GDVO;

public interface OrderMapper {
	
	// 지수 장바구니
	public List<Cart_GDVO> getCheckedCartList(String[] goods_num_list, long user_key);
	
	public Gd_GloveVO getOptionListGlove(long gd_details);
	
	public Gd_BatVO getOptionListBat(long gd_details);
	
	public Gd_UniformVO getOptionListUniform(long gd_details);
	
	public Gd_ShoesVO getOptionListShoes(long gd_details);
	
	public Gd_BallVO getOptionListBall(long gd_details);
	
	public int insertOrder(OrderVO order);
	
	public long getLastOrderNum(long user_key);
	
	public OrderVO getOrderList(long order_num);
	
	public int updateGloveStock(@Param("QNTTY") int qntty,
			@Param("GLOVE_NUM") long glove_num);
	
	public int updateBatStock(@Param("QNTTY") int qntty,
			@Param("BAT_NUM") long bat_num);
	
	public int updateUniformStock(@Param("QNTTY") int qntty,
			@Param("UNIFORM_NUM") long uniform_num);
	
	public int updateShoesStock(@Param("QNTTY") int qntty,
			@Param("SHOES_NUM") long shoes_num);
	
	public int updateBallStock(@Param("QNTTY") int qntty,
			@Param("BALL_NUM") long ball_num);
	
	public int deleteOrder(long order_num);
	
	public int updateTid(@Param("tid") String tid,
			@Param("order_num") long order_num);
	
	public int insertOrderGD(Order_GDVO order_gd);

	// 의정 단일상품
	public Gd_GloveVO getGloveOption(HashMap<String, Object> map);	
	
	public Gd_BatVO getBatOption(HashMap<String, Object> map);	
	
	public Gd_UniformVO getUniformOption(HashMap<String, Object> map);	
	
	public Gd_ShoesVO getShoesOption(HashMap<String, Object> map);	
	
	public Gd_BallVO getBallOption(HashMap<String, Object> map);
}
