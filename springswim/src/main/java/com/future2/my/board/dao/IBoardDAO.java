package com.future2.my.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.future2.my.board.vo.BoardVO;

@Mapper
public interface IBoardDAO {
	public List<BoardVO> getBoardList();
	public List<BoardVO> getBoardListF();
	public List<BoardVO> getBoardListA();
	public List<BoardVO> getBoardListB();
	
	
}
