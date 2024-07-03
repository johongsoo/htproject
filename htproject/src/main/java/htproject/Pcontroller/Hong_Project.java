package htproject.Pcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import htproject.P_vo.Member_info;
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
	@RequestMapping("trainInsert.do")
	public String trainInsert() {
		return "traininfo_insert";
	}
	
	@RequestMapping("trainInsert100.do")
	public String trainInsert(Train_info ins, Model d) {
		d.addAttribute("result", service.insertTrain(ins));
		return "traininfo_insert";
	}
	
	@RequestMapping("getTrain.do")
	public String getTrain(@RequestParam("t_num") int t_num, Model d){
		d.addAttribute("gettrain", service.getTrain(t_num));
		return "traininfo_detail";
	}
	
	// http://localhost:7080/springweb/trainUpdate.do
	@RequestMapping("trainUpdate.do")
	public String trainUpdate(Train_info upt, Model d) {
		
		d.addAttribute("msg", service.updateTrain(upt));
		d.addAttribute("gettrain", service.getTrain(upt.getT_num())); // 수정후, 수정된 내용 확인..
		
		return "traininfo_detail"; 
	}
	
	// http://localhost:7080/springweb/trainDelete.do   
	@RequestMapping("trainDelete.do")
	public String trainDelete(@RequestParam("t_num") int t_num, Model d) {
		d.addAttribute("msg", service.deleteTrain(t_num));
		d.addAttribute("proc", "삭제");
		return "traininfo_detail"; 
	}	
	
	
	
	
	
	
	
	
	
	
	//http://localhost:7080/htproject/master_page.do
	@RequestMapping("master_page.do")
	public String master_page(Member_info sch, Model d){
		d.addAttribute("mlist", service.MemberInfoList(sch));
		return "master_page";
	}
	
	//http://localhost:7080/htproject/memberInsert.do
	@RequestMapping("memberInsert.do")
	public String memberInsert() {
		return "member_insert";
	}
	
	@RequestMapping("memberinsert100.do")
	public String trainInsert(Member_info ins, Model d) {
		d.addAttribute("result", service.insertMember(ins));
		return "member_insert";
	}
	
	
	@RequestMapping("getMember.do")
	public String getMember(@RequestParam("m_unique") int m_unique, Model d){
		d.addAttribute("getmember", service.getMember(m_unique));
		return "master_detail";
	}
	
	// http://localhost:7080/springweb/memberUpdate.do
	@RequestMapping("memberUpdate.do")
	public String memberUpdate(Member_info upt, Model d) {
		
		d.addAttribute("msg", service.updateMember(upt));
		d.addAttribute("getmember", service.getMember(upt.getM_unique())); // 수정후, 수정된 내용 확인..
		
		return "master_detail"; 
	}
	
	// http://localhost:7080/springweb/memberDelete.do   
	@RequestMapping("deleteMember.do")
	public String deleteMember(@RequestParam("m_unique") int m_unique, Model d) {
		d.addAttribute("msg", service.deleteMember(m_unique));
		d.addAttribute("proc", "삭제");
		return "master_detail"; 
	}
	

}
