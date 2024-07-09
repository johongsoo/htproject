package htproject.Pcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import htproject.P_vo.Board_info;
import htproject.Pservice.Board_Service;

@Controller
public class Board_Controller {
	
	@Autowired(required=false)
	private Board_Service service;
	
	
	//http://localhost:7080/htproject/Boardlist.do
	@RequestMapping("Boardlist.do")
	public String Boardlist(Board_info sch, Model d) {
		d.addAttribute("blist", service.Boardlist(sch));
		return "WEB-INF\\hongsoProject\\infoPage\\Board_page.jsp"; 
	}
	
	@RequestMapping("BoardInsert.do")
	public String insertBoard() {
		return "WEB-INF\\hongsoProject\\insertPage\\board_insert.jsp";
	}

	@PostMapping("BoardInsert01.do")
	public String insertBoard(Board_info ins, Model d) {
		d.addAttribute("result", service.insertBoard(ins));
		return "WEB-INF\\hongsoProject\\insertPage\\board_insert.jsp";
	}	
	
	
}
