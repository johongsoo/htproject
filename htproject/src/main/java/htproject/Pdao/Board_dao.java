package htproject.Pdao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import htproject.P_vo.Board_info;

public interface Board_dao {

	@Select("Select * \r\n"
			+ "from Board_info \r\n"
			+ "where b_title like '%'||#{b_title}||'%' \r\n"
			+ "AND m_name like '%'||#{m_name}||'%'")
	List<Board_info> Boardlist(Board_info sch);
	
	@Update("update board_info\r\n"
			+ "   set b_cnt = b_cnt + 1\r\n"
			+ "where b_no = #{b_no}")
	int uptb_Cnt(@Param("b_no") int b_no);
	
	@Insert("Insert into Board_info values(#{b_no},#{m_id},#{m_name},#{b_title},sysdate,#{b_cnt}),#{b_content}")
	int insertBoard(Board_info ins);
	
	@Update("")
}


