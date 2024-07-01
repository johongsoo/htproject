package htproject.mvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import htproject.mvc.Dao.A01_Dao;
import htproject.z01_vo.Mem;
import htproject.z01_vo.Train;

@Service
public class A01_Service{
	@Autowired(required=false)
	private A01_Dao dao;
	
	public Mem getMem(String mem_id) {
		return dao.getMem(mem_id);
	}
	
	public Train getTrain(String mem_id) {
		return dao.getTrain(mem_id);
	}
	
	public 	String insertMem(Mem ins) {
		return dao.insertMem(ins)>0?"등록성공":"등록실패";
	}
	
	public String updateMem(Mem upt) {
		return dao.updateMem(upt)>0?"수정성공":"수정실패";
	}
	
	public String deleteMem(String mem_id) {
		return dao.deleteMem(mem_id)>0?"삭제실패":"삭제성공";
	}
	
	
}
