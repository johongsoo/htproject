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
	
	public Board_info getBoardinfo(int b_no ) {
		return dao.getBoardinfo(b_no);
	}
	
	
	public Board_info getBoardinfo2(int b_no ) {
		return dao.getBoardinfo2(b_no);
	}
	
	
	public String updateBoardinfo(Board_info upt) {
		return dao.updateBoardinfo(upt)>0?"수정성공":"수정실패";
	}
	
	public String deleteBoardinfo(int b_no) {
		return dao.deleteBoardinfo(b_no)>0?"삭제성공":"삭제실패";
	}

	
}
