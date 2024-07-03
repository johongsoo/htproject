package htproject.Pservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
