package htproject.Pcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import htproject.P_vo.Board_info;
import htproject.P_vo.Member_info;
import htproject.Pservice.Board_service;

@Controller
public class Board_project {
	@Autowired(required=false)
	private Board_service service;

	//http://localhost:7080/htproject/BoardInfoList.do
	@RequestMapping("BoardInfoList.do")
	public String BoardInfoList(Board_info sch, Model d){
		d.addAttribute("blist", service.BoardInfoList(sch));
		return "Board_list";
	}
	@RequestMapping("getBoard.do")
	public String getBoard(@RequestParam("b_no") int b_no, Model d){
		d.addAttribute("getBoerd", service.getBoerd(b_no));
		return "Board_view";
	}
	
	@RequestMapping("getBoard01.do")
	public String getBoard01(@RequestParam("b_no") int b_no, Model d){
		d.addAttribute("getBoerd", service.getBoard01(b_no));
		return "Board_upload";
	}
	
	//http://localhost:7080/htproject/BoardInsert.do
	@RequestMapping("BoardInsert.do")
	public String BoardInsert() {
		return "Board_insert";
	}
	
	@RequestMapping("BoardInsert100.do")
	public String trainInsert(Board_info ins, Model d) {
		d.addAttribute("result", service.insertBoard(ins));
		return "Board_insert";
	}
	
	// http://localhost:7080/springweb/BoardUpdate.do
	@RequestMapping("BoardUpdate.do")
	public String BoardUpdate(Board_info upt, Model d) {
		
		d.addAttribute("msg", service.updateBoard(upt));
		d.addAttribute("gboard", service.getBoerd(upt.getB_no())); // 수정후, 수정된 내용 확인..
		
		return "Board_upload"; 
	}
	
	// http://localhost:7080/springweb/deleteBoard.do   
	@RequestMapping("deleteBoard.do")
	public String deleteBoard(@RequestParam("b_no") int b_no, Model d) {
		d.addAttribute("msg", service.deleteBoard(b_no));
		d.addAttribute("proc", "삭제");
		return "Board_upload"; 
	}
}
