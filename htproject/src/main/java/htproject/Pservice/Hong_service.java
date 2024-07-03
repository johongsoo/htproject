package htproject.Pservice;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import htproject.P_vo.Board_info;
import htproject.P_vo.Member_info;
import htproject.P_vo.Train_info;
import htproject.Pdao.Hong_dao;

@Service
public class Hong_service {
	
	
	@Autowired(required=false)
	private Hong_dao dao;
	
	public List<Train_info> TrainInfoList(Train_info sch){
		if(sch.getT_depart()==null) sch.setT_depart("");
		if(sch.getT_arrive()==null) sch.setT_arrive("");
		if(sch.getT_station()==null) sch.setT_station("");
		
		sch.setT_depart("%"+sch.getT_depart()+"%");
		sch.setT_arrive("%"+sch.getT_arrive()+"%");
		sch.setT_station("%"+sch.getT_station()+"%");
		return dao.TrainInfoList(sch);
	}
	
	public 	String insertTrain(Train_info ins) {
		return dao.insertTrain(ins)>0?"등록성공":"등록실패";
	}
	
	public Train_info getTrain(int t_num) {
		return dao.getTrain(t_num);
	}
	
	public String updateTrain(Train_info upt) {
		return dao.updateTrain(upt)>0?"수정성공":"수정실패";
	}	
	public String deleteTrain(int t_num) {
		return dao.deleteTrain(t_num)>0?"삭제성공":"삭제실패";
	}
	
	public List<Member_info> MemberInfoList(Member_info sch){
		if(sch.getM_id()==null) sch.setM_id("");
		if(sch.getM_name()==null) sch.setM_name("");
		
		sch.setM_id("%"+sch.getM_id()+"%");
		sch.setM_name("%"+sch.getM_name()+"%");
		
		return dao.MemberInfoList(sch);
	}
	
	public String insertMember(Member_info ins) {
		return dao.insertMember(ins)>0?"등록성공":"등록실패";
	}
	
	
	public Member_info getMember(int m_unique) {
		return dao.getMember(m_unique);
	}
	
	public String updateMember(Member_info upt) {
		return dao.updateMember(upt)>0?"수정성공":"수정실패";
	}
	
	public String deleteMember(int m_unique) {
		return dao.deleteMember(m_unique)>0?"삭제성공":"삭제실패";
	}
	
	
	public List<Board_info> BoardInfoList(Board_info sch){
		if(sch.getM_name()==null) sch.setM_name("");
		if(sch.getB_title()==null) sch.setB_title("");
		
		sch.setM_name("%"+sch.getM_name()+"%");
		sch.setB_title("%"+sch.getB_title()+"%");
		
		return dao.BoardInfoList(sch);
	}

}
