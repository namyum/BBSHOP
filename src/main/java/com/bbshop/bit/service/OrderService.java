package com.bbshop.bit.service;

import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.GoodsVO;

public interface OrderService {

//	public GoodsVO getGoodsInfo(Long goods_num);

	public Gd_GloveVO getGloveOption(long goods_num, int hand, int taming);
	
	public Gd_BatVO getBatOption(long goods_num, int gd_size);
	
	public Gd_UniformVO getUniformOption(long goods_num, int gd_size);
	
	public Gd_ShoesVO getShoesOption(long goods_num, int spike, int gd_size);
	
	public Gd_BallVO getBallOption(long goods_num, int sales_unit);
}
