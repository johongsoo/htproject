package htproject.Pdao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import htproject.P_vo.Train_info;

public interface Hong_dao {
	
	
	@Select("SELECT * \r\n"
			+ "FROM TRAIN_INFO \r\n"
			+ "WHERE t_depart like '%'||#{t_depart}||'%' \r\n"
			+ "AND t_arrive like '%'||#{t_arrive}||'%' \r\n"
			+ "AND t_station like '%'||#{t_station}||'%' ")
	List<Train_info> TrainInfoList(Train_info sch);
	
	@Insert("INSERT INTO Train_info values(#{t_num}, #{t_type},#{t_depart},#{t_arrive}, \r\n"
			+ "	#{t_dtime}, #{t_atime},#{t_station})")
	int insertTrain(Train_info ins);
}
