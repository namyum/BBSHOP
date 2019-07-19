package com.bbshop.bit.mapper;

import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.SavingsVO;

public interface MyPageMapper {

	List<SavingsVO> getSavingsList(Map<String, Object> map);
}
