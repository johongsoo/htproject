package htproject.Pservice;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import htproject.P_vo.Board_info;
import htproject.Pdao.Board_dao;

@Service
public class Board_Service {
	
	
	@Autowired(required=false)
	private Board_dao dao;
	
	
	public List<Board_info> Boardlist(Board_info sch){
		if(sch.getB_title()==null) sch.setB_title("");
		if(sch.getM_name()==null) sch.setM_name("");
		
		sch.setB_title("%"+sch.getB_title()+"%");
		sch.setM_name("%"+sch.getM_name()+"%");
		return dao.Boardlist(sch);
	}
	
	public int uptb_Cnt(int b_no) {
		return dao.uptb_Cnt(b_no);
	}
	
	public String insertBoard(Board_info ins) {
		return dao.insertBoard(ins)>0?"등록성공":"등록실패";
		
	}
}
