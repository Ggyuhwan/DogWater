package com.future2.my.myboard.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.future2.my.member.vo.MemberVO;
import com.future2.my.myboard.service.MyBoardService;
import com.future2.my.myboard.vo.MyBoardVO;

@Controller
public class MyBoardController {
	
	@Autowired
	MyBoardService myboardService;
	
	@RequestMapping("/myBoardView")
	public String boardView (Model model, HttpSession session) {
		List<MyBoardVO> myboardList = myboardService.getMyBoardList();
		model.addAttribute("myboardList", myboardList);
		return "board/myBoardView";
	}
	
	@RequestMapping("/myboardWriteView")
	public String myboardWriteView(HttpSession session) {
		return "board/myboardWriteView";
	}
	
	@RequestMapping("/myboardWriteDo")
	public String myboardWriteDo(MyBoardVO board, HttpSession session) throws Exception {
		MemberVO login = (MemberVO) session.getAttribute("login");
		board.setMemId(login.getMemId());
		
		myboardService.writeBoard(board);
		return "redirect:/myBoardView";
	}
	
}
