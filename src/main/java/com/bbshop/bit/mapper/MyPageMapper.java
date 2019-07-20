package com.bbshop.bit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.domain.SavingsVO;

public interface MyPageMapper {

	List<SavingsVO> getSavingsList(@Param("pagingVO") PagingVO pagingVO, @Param("key") long key);
}
