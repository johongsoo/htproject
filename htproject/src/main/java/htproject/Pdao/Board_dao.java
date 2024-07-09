package htproject.Pdao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
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

	@Select("select * from Board_info where b_no = #{b_no}")
	Board_info getBoardinfo(@Param("b_no") int b_no );	
	
	@Select("select * from Board_info where b_no = #{b_no}")
	Board_info getBoardinfo2(@Param("b_no") int b_no );
	
	@Insert("Insert into board_info values(board_seq.nextval,#{m_id},#{m_name},#{b_title}, \r\n"
			+ " #{b_date},#{b_content}, #{b_cnt}) ")
	int insertBoard(Board_info ins);
	
	@Update("	UPDATE Board_info \r\n"
			+ "	SET m_id = #{m_id},\r\n"
			+ "	    m_name = #{m_name},\r\n"
			+ "	    b_title = #{b_title}\r\n"
			+ "	    b_date = #{b_date}\r\n"
			+ "	    b_date = #{b_date}\r\n"
			+ "	    b_content = #{b_content}\r\n"
			+ "	    b_cnt = #{b_cnt}\r\n"
			+ "WHERE b_no = #{b_no}")
	int updateBoardinfo(Board_info upt);

	@Delete("DELETE FROM Board_info\r\n"
			+ "WHERE b_no = #{b_no}")
	int deleteBoardinfo(@Param("b_no") int b_no);	

	@Insert("INSERT INTO example_table (column1, column2) VALUES (#{param1,jdbcType=VARCHAR}, #{param2,jdbcType=INTEGER})")
	void insertExample(@Param("param1") String param1, @Param("param2") Integer param2);
}


