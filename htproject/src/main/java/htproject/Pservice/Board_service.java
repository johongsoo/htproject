package htproject.Pservice;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import htproject.P_vo.Board_info;
import htproject.P_vo.Member_info;
import htproject.Pdao.Board_dao;

@Service
public class Board_service {
	@Autowired(required=false)
	private Board_dao dao;
	
	public List<Board_info> BoardInfoList(Board_info sch){
		if(sch.getM_name()==null) sch.setM_name("");
		if(sch.getB_title()==null) sch.setB_title("");
		
		sch.setM_name("%"+sch.getM_name()+"%");
		sch.setB_title("%"+sch.getB_title()+"%");
		return dao.BoardInfoList(sch);
	}
	
	public Board_info getBoerd(@Param("b_no") int b_no) {
		return dao.getBoard(b_no);
	} 
	public Board_info getBoard01(@Param("b_no") int b_no) {
		return dao.getBoard01(b_no);
	}
	
	public String insertBoard(Board_info ins) {
		return dao.insertBoard(ins)>0?"등록성공":"등록실패";
	}
	
	public String updateBoard(Board_info upt) {
			return dao.updateBoard(upt)>0?"수정성공":"수정실패";
	}
	
	public String deleteBoard(@Param("b_no") int b_no) {
		return dao.deleteBoard(b_no)>0?"삭제성공":"삭제실패";
	}
}
