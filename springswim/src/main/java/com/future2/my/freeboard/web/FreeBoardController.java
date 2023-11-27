package com.future2.my.freeboard.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.future2.my.freeboard.service.FreeBoardService;
import com.future2.my.freeboard.vo.FreeBoardVO;
import com.future2.my.freeboard.vo.ReplyVO;
import com.future2.my.member.vo.MemberVO;

@Controller
public class FreeBoardController {
	
	@Autowired
	FreeBoardService freeboardService;
	
	@RequestMapping("/freeboardView")
	public String boardView(Model model, HttpSession session) {
		List<FreeBoardVO> freeboardList = freeboardService.getFreeBoardList();
		model.addAttribute("freeboardList", freeboardList);
		return "board/freeboardView";
	}
	
	@RequestMapping("/boardWriteView")
	public String boardWriteView(HttpSession session) {
		
		return "board/boardWriteView";
	}
	
	@RequestMapping("/boardWriteDo")
	public String boardWriteDo(FreeBoardVO board, HttpSession session) throws Exception {
		MemberVO login = (MemberVO) session.getAttribute("login");
		board.setMemId(login.getMemId());
		
		
		System.out.println(","+board);
		
		freeboardService.writeBoard(board);
		
		return "redirect:/freeboardView";
	}
	
	@RequestMapping("/boardDetailView")
	public String boardDetailView(Model model,int boardNo) throws Exception {
		
	    FreeBoardVO boardVO = freeboardService.getFreeBoard(boardNo);
	    List<ReplyVO> replyList = freeboardService.getReplyList(boardNo);
	    System.out.println(replyList);
	    model.addAttribute("board", boardVO);
	    model.addAttribute("replyList", replyList);
		
		return "board/boardDetailView";
	}
	
	@RequestMapping(value="/boardEditView", method=RequestMethod.POST)
	public String boardEditView(int boardNo, Model model) throws Exception   {
		FreeBoardVO board = freeboardService.getFreeBoard(boardNo);
		model.addAttribute("board", board);
		
		return "board/boardEditView";
	}
	
	@PostMapping("/boardEditDo")
	public String boardEditDo(FreeBoardVO board) throws Exception {
		
		freeboardService.updateBoard(board);
		
		return "redirect:/freeboardView";
	}
	
	@PostMapping("/boardDel")
	public String boardDel(int boardNo) throws Exception {
		freeboardService.deleteBoard(boardNo);
		
		return "redirect:/freeboardView";
	}
	
	@ResponseBody
	@PostMapping("/writeReplyDo")
	public ReplyVO boardReplyDO(@RequestBody ReplyVO reply) throws Exception {
	System.out.println(reply);
	//유니크 아이디 생성
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmssSSS");
	String uniqueId = sdf.format(date);
	for(int i = 0; i < 3; i++) {
		int randNum = (int)(Math.random() * 10); //0~9
		uniqueId += randNum;
	}
	reply.setReplyNo(uniqueId);
	freeboardService.writeReply(reply);
	ReplyVO result = freeboardService.getReply(uniqueId);
	System.out.println(result);
	return result;
	}
	
	@ResponseBody
	@PostMapping("/delReplyDo")
	public String delReplyDO(@RequestBody ReplyVO reply) throws Exception {
		System.out.println(reply);
		String result = "fail";
		
		freeboardService.delReply(reply.getReplyNo());
		
		result = "success";
		
		return result;
	}
	
	
	
}
