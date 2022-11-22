package esg.example.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/header")
public class HeaderController {
	
	@RequestMapping(value="/wallet", method=RequestMethod.POST)
	@ResponseBody
	public String getAddress(HttpServletRequest request, RedirectAttributes rttr, String address){
		HttpSession session = request.getSession(); 
		String short_address = address.substring(0,2) + "..." + address.substring(address.length()-4,address.length());
		session.setAttribute("address", short_address);
		session.setMaxInactiveInterval(-1); // 세션 시간 무한대
		return "redirect:/header";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, RedirectAttributes rttr){
		HttpSession session = request.getSession(); 
		session.invalidate(); // 로그아웃
		return "redirect:/header";
	}
}
