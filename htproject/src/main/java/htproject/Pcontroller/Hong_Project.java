package htproject.Pcontroller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hong_Project {
	
	
	//http://localhost:7080/htproject/Board_main.do
	@RequestMapping("Board_main.do")
	public String Board_main(){
		return "Board-main";
	}
	//http://localhost:7080/htproject/Board_view.do
	@RequestMapping("Board_view.do")
	public String Board_view(){
		return "Board-view";
	}
	//http://localhost:7080/htproject/Board_insert.do
	@RequestMapping("Board_insert.do")
	public String Board_insert(){
		return "Board_insert";
	}
	
	
	//http://localhost:7080/htproject/Board_upload.do
	@RequestMapping("Board_upload.do")
	public String Board_upload(){
		return "Board_upload";
	}
	
	//http://localhost:7080/htproject/dispatch_page.do
	@RequestMapping("dispatch_page.do")
	public String dispatch_page(){
		return "dispatch_page";
	}
	//http://localhost:7080/htproject/master_page.do
	@RequestMapping("master_page.do")
	public String master_page(){
		return "master_page";
	}
	

}
