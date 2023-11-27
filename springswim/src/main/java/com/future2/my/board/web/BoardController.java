package com.future2.my.board.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.future2.my.board.service.BoardService;
import com.future2.my.board.vo.BoardVO;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/boardView")
	public String boardView(Model model, HttpSession session) {
		List<BoardVO> boardList = boardService.getBoardList();
		List<BoardVO> boardListF = boardService.getBoardListF();
		List<BoardVO> boardListA = boardService.getBoardListA();
		List<BoardVO> boardListB = boardService.getBoardListB();
		model.addAttribute("boardListA", boardListA);
		model.addAttribute("boardListB", boardListB);
		System.out.println(boardListB);
		//남자기록
		model.addAttribute("boardList", boardList);
		//여자기록
		model.addAttribute("boardListF", boardListF);
		
		return "board/boardView";
	}
	@RequestMapping("/record")
	public String boardRecord(Model model, HttpSession session) {
		
		List<BoardVO> boardListA = boardService.getBoardListA();
		List<BoardVO> boardListB = boardService.getBoardListB();
		model.addAttribute("boardListA", boardListA);
		model.addAttribute("boardListB", boardListB);
		return "board/record";
	}

}
