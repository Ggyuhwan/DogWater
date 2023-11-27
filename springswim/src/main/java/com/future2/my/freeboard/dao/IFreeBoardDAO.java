package com.future2.my.freeboard.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.future2.my.freeboard.vo.FreeBoardVO;
import com.future2.my.freeboard.vo.ReplyVO;

@Mapper
public interface IFreeBoardDAO {

		public List<FreeBoardVO> getFreeBoardList();
		public int writeBoard(FreeBoardVO board);
		public FreeBoardVO getFreeBoard(int boardNo);
		public int updateBoard(FreeBoardVO board);
		public int deleteBoard(int boardNo);
		public int writeReply(ReplyVO reply);
		public ReplyVO getReply(String replyNo);
		public List<ReplyVO> getReplyList(int boardNo);
		public int delReply(String replyNo);
		
		
		
	
}
