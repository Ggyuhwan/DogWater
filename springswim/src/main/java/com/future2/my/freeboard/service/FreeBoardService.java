package com.future2.my.freeboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.future2.my.board.vo.BoardVO;
import com.future2.my.freeboard.dao.IFreeBoardDAO;
import com.future2.my.freeboard.vo.FreeBoardVO;
import com.future2.my.freeboard.vo.ReplyVO;

@Service
public class FreeBoardService {

	@Autowired
	IFreeBoardDAO dao;
	
	public List<FreeBoardVO> getFreeBoardList(){
		List<FreeBoardVO> result = dao.getFreeBoardList();
		return result;
	}
	
	public void writeBoard(FreeBoardVO board) throws Exception {
		int result = dao.writeBoard(board);
		
		if(result == 0) {
			throw new Exception();
		}
	}
	
	public FreeBoardVO getFreeBoard(int boardNo) throws Exception {
		FreeBoardVO result = dao.getFreeBoard(boardNo);
		if(result == null) {
			throw new Exception();
		}
		return result;
	}
	
	public void updateBoard(FreeBoardVO board) throws Exception {
		int result = dao.updateBoard(board);
		
		if(result == 0) {
			throw new Exception();
		}
	}
	
	public void deleteBoard(int boardNo) throws Exception {
		int result = dao.deleteBoard(boardNo);
		
		if(result == 0) {
			throw new Exception();
		}
	}
	public void writeReply(ReplyVO reply) throws Exception {
		int result = dao.writeReply(reply);
		
		if(result == 0) {
			throw new Exception();
		}
	}
	public ReplyVO getReply(String replyNo) throws Exception {
		ReplyVO result = dao.getReply(replyNo);
		
		if(result == null) {
			throw new Exception();
		}
		return result;
	}
	public List<ReplyVO> getReplyList(int boardNo){
		List<ReplyVO> result = dao.getReplyList(boardNo);
		return result;
	}
	public void delReply(String replyNo)throws Exception{
		int result = dao.delReply(replyNo);
		
		if(result == 0) {
			throw new Exception();
		}
	}
}
