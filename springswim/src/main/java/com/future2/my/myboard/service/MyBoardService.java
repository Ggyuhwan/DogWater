package com.future2.my.myboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.future2.my.myboard.dao.IMyBoardDAO;
import com.future2.my.myboard.vo.MyBoardVO;

@Service
public class MyBoardService {

	@Autowired
	IMyBoardDAO dao;
	
	public List<MyBoardVO> getMyBoardList(){
		List<MyBoardVO> result = dao.getMyBoardList();
		return result;
	}
	
	public void writeBoard(MyBoardVO board) throws Exception{
		int result = dao.writeMyBoard(board);
		if(result == 0) {
			throw new Exception();
		}
	}
}
