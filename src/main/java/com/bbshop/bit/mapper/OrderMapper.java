package com.bbshop.bit.mapper;

import java.util.List;

import com.bbshop.bit.domain.Cart_PDVO;
import com.bbshop.bit.domain.Gd_GloveVO;

public interface OrderMapper {
	
	public List<Cart_PDVO> getCheckedCartList(String[] goods_num_list);
	public Gd_GloveVO getOptionListGlove(long gd_details);
	//public Gd_batVO getOptionListBat(long gd_details);
	//public Gd_uniformVO getOptionListUniform(long gd_details);
	//public Gd_shoesVO getOptionListShoes(long gd_details);
	//public Gd_ballVO getOptionListBall(long gd_details);
	
}
