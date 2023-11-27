package com.future2.my.display.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.future2.my.display.vo.MainVO;

@Mapper
public interface IMainDAO {
	public List<MainVO> getMainList();
	public List<MainVO> getMainList2();
	public List<MainVO> getMainList3();

}
