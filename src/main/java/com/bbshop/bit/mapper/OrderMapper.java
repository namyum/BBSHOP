package com.bbshop.bit.mapper;

import java.util.HashMap;

import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;

public interface OrderMapper {

	public Gd_GloveVO getGloveOption(HashMap<String, Object> map);
	
	public Gd_BatVO getBatOption(HashMap<String, Object> map);
	
	public Gd_UniformVO getUniformOption(HashMap<String, Object> map);
	
	public Gd_ShoesVO getShoesOption(HashMap<String, Object> map);
	
	public Gd_BallVO getBallOption(HashMap<String, Object> map);
}
