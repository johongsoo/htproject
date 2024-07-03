package htproject.Pdao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import htproject.P_vo.Board_info;
import htproject.P_vo.Member_info;
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
	
	@Select("select *\r\n"
			+ "	from TRAIN_INFO\r\n"
			+ "	where t_num = #{t_num}")
	Train_info getTrain(@Param("t_num") int t_num);
	
	@Update("UPDATE TRAIN_INFO \r\n"
			+ "	SET t_type = #{t_type},\r\n"
			+ "		t_depart=#{t_depart},\r\n"
			+ "		t_arrive = #{t_arrive},\r\n"
			+ "		t_dtime = #{t_dtime},\r\n"
			+ "		t_atime = #{t_atime},\r\n"
			+ "		t_station = #{t_station}\r\n"
			+ "	WHERE t_num = #{t_num}")
	int updateTrain(Train_info upt);
	
	@Delete("DELETE \r\n"
			+ "FROM TRAIN_INFO\r\n"
			+ "WHERE t_num = #{t_num}")
	int deleteTrain(@Param("t_num") int t_num);

	
	@Select("SELECT * \r\n"
			+ "FROM member_info \r\n"
			+ "WHERE m_id like '%'||#{m_id}||'%' \r\n"
			+ "AND m_name like '%'||#{m_name}||'%' ")
	List<Member_info> MemberInfoList(Member_info sch);

	@Select("select *\r\n"
			+ "	from member_info\r\n"
			+ "	where m_unique = #{m_unique}")
	Member_info getMember(@Param("m_unique") int m_unique);
	
	@Update("UPDATE member_info \r\n"
			+ "	SET m_id = #{m_id},\r\n"
			+ "		m_authority=#{m_authority},\r\n"
			+ "		m_pwd = #{m_pwd},\r\n"
			+ "		m_name = #{m_name},\r\n"
			+ "		m_age = #{m_age},\r\n"
			+ "		m_email = #{m_email},\r\n"
			+ "     m_number = #{m_number}\r\n"
			+ "	WHERE m_unique = #{m_unique}")
	int updateMember(Member_info upt);
	
	@Delete("DELETE \r\n"
			+ "FROM Member_info\r\n"
			+ "WHERE m_unique = #{m_unique}")
	int deleteMember(@Param("m_unique") int m_unique);
	
	
	@Select("SELECT * \r\n"
			+ "FROM board_info \r\n"
			+ "WHERE m_name like '%'||#{m_name}||'%' \r\n"
			+ "AND b_title like '%'||#{b_title}||'%' ")
	List<Board_info> BoardInfoList(Board_info sch);
	
	@Insert("INSERT INTO Member_info values(#{m_unique}, #{m_id},#{m_authority},#{m_pwd}, \r\n"
			+ "	#{m_name}, #{m_age},#{m_email},#{m_number})")
	int insertMember(Member_info ins);
}
