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
	
	
	//http://localhost:7080/htproject/traininfolist.do
	@RequestMapping("traininfolist.do")
	public String traininfo(Train_info sch, Model d){
		d.addAttribute("train", service.TrainInfoList(sch));
		return "traininfo";
	}
	
	@RequestMapping("getTrain.do")
	public String getTrain(@RequestParam("t_num") int t_num, Model d){
		d.addAttribute("gettrain", service.getTrain(t_num));
		return "traininfo_detail";
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
	
	
//	회원 등록과 배차등록의 셀렉 인설트 컨트롤/서비스는 거의비슥하다
	@RequestMapping("master_page.do")
	public String master_page(Member_info sch, Model d){
		d.addAttribute("mlist", service.MemberInfoList(sch));
		return "master_page";
	}
	
	@RequestMapping("getMember.do")
	public String getMember(@RequestParam("m_unique") int m_unique, Model d){
		d.addAttribute("getmember", service.getMember(m_unique));
		return "master_detail";
	}
	


//  등록에 관한 컨트롤러	
	@RequestMapping("memberInsert.do")
	public String memberInsert() {
		return "member_insert";
	}
	
	@RequestMapping("memberinsert100.do")
	public String trainInsert(Member_info ins, Model d) {
		d.addAttribute("result", service.insertMember(ins));
		return "member_insert";
	}
	
//	업데이트에 관한 매핑
	@RequestMapping("memberUpdate.do")
	public String memberUpdate(Member_info upt, Model d) {
		
		d.addAttribute("msg", service.updateMember(upt));
		d.addAttribute("getmember", service.getMember(upt.getM_unique())); 
		
		return "master_detail"; 
	}
//  삭제에 관한 매핑	 
	@RequestMapping("deleteMember.do")
	public String deleteMember(@RequestParam("m_unique") int m_unique, Model d) {
		d.addAttribute("msg", service.deleteMember(m_unique));
		d.addAttribute("proc", "삭제");
		return "master_detail"; 
	}
	

}
