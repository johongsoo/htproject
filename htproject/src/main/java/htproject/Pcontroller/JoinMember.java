package htproject.Pcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinMember {

	// http://localhost:7080/htproject/Joinfirst.do
	@RequestMapping("Joinfirst.do")
	public String Joinfirst() {
		return "WEB-INF\\hongsoProject\\joinMembership\\firstPage.jsp";
	}
	
	@RequestMapping("secondPage.do")
	public String secondPage() {
		return "WEB-INF\\hongsoProject\\joinMembership\\secondPage.jsp";
	}
}
