package htproject.mvc.Dao;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import htproject.z01_vo.Mem;
import htproject.z01_vo.Train;



public interface A01_Dao {
	
	@Select("select *\r\n"
			+ "	from mem\r\n"
			+ "	where mem_id = #{mem_id}")
	Mem getMem(@Param("mem_id") String mem_id);
	
	@Select("select *\r\n"
			+ "	from traininfo\r\n"
			+ "	where mem_id = #{mem_id}")
	Train getTrain(@Param("mem_id") String mem_id);
	
	@Insert("INSERT INTO mem values(#{mem_id}, #{mem_pwd},#{mem_name},#{mem_email}, \r\n"
			+ "	#{mem_number}, #{mem_age})")
	int insertMem(Mem ins);
	
	@Update("UPDATE mem " +
            "SET mem_pwd = #{mem_pwd}, " +
            "    mem_name = #{mem_name}, " +
            "    mem_email = #{mem_email}, " +
            "    mem_number = #{mem_number}, " +
            "    mem_age = #{mem_age} " +
            "WHERE mem_id = #{mem_id}")
    int updateMem(Mem upt);
	
	@Delete("DELETE \r\n"
			+ "FROM mem\r\n"
			+ "WHERE mem_id = #{mem_id}")
	int deleteMem(@Param("mem_id") String mem_id);
	
}
