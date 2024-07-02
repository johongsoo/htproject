package htproject.Pcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import htproject.P_vo.Train_info;
import htproject.Pservice.Hong_service;

@Controller
public class Hong_Project {
	
	
	@Autowired(required=false)
	private Hong_service service;
	
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
	
	//http://localhost:7080/htproject/traininfolist.do
	@RequestMapping("traininfolist.do")
	public String traininfo(Train_info sch, Model d){
		d.addAttribute("train", service.TrainInfoList(sch));
		return "traininfo";
	}
	
	
	//http://localhost:7080/htproject/trainInsert.do
	@GetMapping("trainInsert.do")
	public String trainInsert() {
		return "train_insert";
	}
	
	@PostMapping("trainInsert.do")
	public String trainInsert(Train_info ins, Model d) {
		d.addAttribute("msg", service.insertTrain(ins));
		return "train_insert";
	}
	
	
	//http://localhost:7080/htproject/master_page.do
	@RequestMapping("master_page.do")
	public String master_page(){
		return "master_page";
	}
	

}
