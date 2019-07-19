package com.bbshop.bit.mapper;

import java.util.List;

import com.bbshop.bit.domain.SavingsVO;

public interface MyPageMapper {

	List<SavingsVO> getSavingsList(int user_key);
}
