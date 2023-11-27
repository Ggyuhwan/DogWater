package com.future2.my.myboard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.future2.my.myboard.vo.MyBoardVO;

@Mapper
public interface IMyBoardDAO {

	public List<MyBoardVO> getMyBoardList();
	public int writeMyBoard(MyBoardVO board);

}
