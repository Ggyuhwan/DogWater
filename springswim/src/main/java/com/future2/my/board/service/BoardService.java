package com.future2.my.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.future2.my.board.dao.IBoardDAO;
import com.future2.my.board.vo.BoardVO;
import com.future2.my.member.vo.MemberVO;

@Service
public class BoardService {
	
	@Autowired
	IBoardDAO dao;
	
	public List<BoardVO> getBoardList(){
		List<BoardVO> result = dao.getBoardList();
		System.out.println(result);
		return result;
	}
	public List<BoardVO> getBoardListF(){
		List<BoardVO> result = dao.getBoardListF();
		System.out.println(result);
		return result;
	}
	public List<BoardVO> getBoardListA(){
		List<BoardVO> result = dao.getBoardListA();
		System.out.println(result);
		return result;
	}
	
	public List<BoardVO> getBoardListB(){
		List<BoardVO> result = dao.getBoardListB();
		System.out.println(result);
		return result;
	}
	
	

}
