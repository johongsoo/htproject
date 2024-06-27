package board.htproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pageController {

	//http://localhost:7080/board/masterpage.do

	@RequestMapping("masterpage.do")
	public String master_page(Model d) {
		return "master_page";
	}
	
	
	//http://localhost:7080/board/dispatchpage.do
	@RequestMapping("dispatchpage.do")
	public String dispatch_page(Model d) {
		return "dispatch_page";
	}
	
	//http://localhost:7080/board/boardpage.do
	@RequestMapping("boardpage.do")
	public String board_page(Model d) {
		return "board_page";
	}
}
