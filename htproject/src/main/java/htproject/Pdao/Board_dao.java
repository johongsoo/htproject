package htproject.Pdao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import htproject.P_vo.Board_info;


public interface Board_dao {
	
	
	@Select("SELECT * \r\n"
			+ "FROM board_info \r\n"
			+ "WHERE m_name like '%'||#{m_name}||'%' \r\n"
			+ "AND b_title like '%'||#{b_title}||'%' ")
	List<Board_info> BoardInfoList(Board_info sch);

	@Select("select *\r\n"
			+ "	from board_info\r\n"
			+ "	where b_no = #{b_no}")
	Board_info getBoard(@Param("b_no") int b_no);
	
	@Select("select *\r\n"
			+ "	from board_info\r\n"
			+ "	where b_no = #{b_no}")
	Board_info getBoard01(@Param("b_no") int b_no);
	
	@Insert("INSERT INTO Board_info values(#{b_no}, #{m_id},#{m_name},#{b_title}, \r\n"
			+ "	#{b_date}, #{b_content})")
	int insertBoard(Board_info ins);
	
	@Update("UPDATE Board_INFO \r\n"
			+ "	SET m_name=#{m_name},\r\n"
			+ "		b_title = #{b_title},\r\n"
			+ "		b_content = #{b_content}\r\n"
			+ "	WHERE b_no = #{b_no}")
	int updateBoard(Board_info upt);
	
	@Delete("DELETE \r\n"
			+ "FROM Board_info\r\n"
			+ "WHERE b_no = #{b_no}")
	int deleteBoard(@Param("b_no") int b_no);
}


