package com.future2.my.member.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.future2.my.member.service.MemberService;
import com.future2.my.member.vo.MemberVO;

@Controller
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@RequestMapping("/registView")
	public String registView() {
		return "member/registView";
	}
	
	@RequestMapping("/registDo")
	public String registDo(HttpServletRequest request) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nm = request.getParameter("nm");
		
		System.out.println("id =" + id);
		System.out.println("pw =" + pw);
		System.out.println("name =" + nm);
		
		String encodePw = passwordEncoder.encode(pw);
		System.out.println("encodePw :" + encodePw);
		
		
		MemberVO member = new MemberVO(id, encodePw, nm);
		try {
			memberService.registMember(member);
		}catch (Exception e) {
			e.printStackTrace();
			return "errorView";
		}
		return "redirect:/loginView";
	}
	
	
	@RequestMapping("/loginView")
	public String loginView() {
		
		return "member/loginView";
	}

	
	@RequestMapping("/loginDo")
	public String loginDo(MemberVO member,HttpSession session
				,boolean remember, String fromUrl
				,HttpServletResponse response) throws Exception {
		
		MemberVO login = memberService.loginMember(member);
		
		session.setAttribute("login", login);
		
		if(remember) {
			// 쿠키생성
			Cookie cookie = new Cookie("rememberId", member.getMemId());
			// 응답하는 개체에 붙여준다.
			response.addCookie(cookie);
		}else {
			// 쿠키 삭제 (동일한 key값을 쿠키를 생성 후 유효기간을 0으로 만든다)
			Cookie cookie = new Cookie("rememberId", "");
			cookie.setMaxAge(0);
			// 유효기간 0짜리인 쿠키를 응답하는 객체에 붙여준다.
			response.addCookie(cookie);
		}
		
		if (login != null) {
	          boolean match = passwordEncoder.matches(member.getMemPw(), login.getMemPw());
	          System.out.println("ma" + match);
	          if (!match) {
	              return "redirect:/loginView?msg=N";
	          }
	          session.setAttribute("login", login);
	          return "redirect:/home";
	      } else {
	          // login 객체가 null인 경우 처리
	          return "redirect:/loginView?msg=N";
	      }
	      
	   }
		
	
	@RequestMapping("/logoutDo")
	public String logoutDo(HttpSession session) {
		
		//세션 종료
		session.invalidate();
		
		return "redirect:/loginView";
	}
	

}
