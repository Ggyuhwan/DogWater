package com.future2.my.display.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.future2.my.display.service.MainService;
import com.future2.my.display.vo.MainVO;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@RequestMapping("/home")
	public String mainView(Model model, HttpSession session) {
		List<MainVO> mainList = mainService.getMainList();
		List<MainVO> mainList2 = mainService.getMainList2();
		List<MainVO> mainList3 = mainService.getMainList3();
		System.out.println(mainList);
		model.addAttribute("mainList", mainList);
		model.addAttribute("mainList2", mainList2);
		model.addAttribute("mainList3", mainList3);
		
		return "home";
	}

}
