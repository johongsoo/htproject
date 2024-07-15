package htproject.Pcontroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Main_Controller {

	
	//http://localhost:7080/htproject/Mainpage.do
	@RequestMapping("Mainpage.do")
	public String Mainpage() {
		return "WEB-INF\\hongsoProject\\mainpage\\main.jsp";
	}
	
	@RequestMapping("login.do")
	public String login(){
		return "WEB-INF\\hongsoProject\\mainpage\\login.jsp";
	}
}
