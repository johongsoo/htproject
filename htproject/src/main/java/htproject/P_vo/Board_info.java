package htproject.P_vo;

import java.util.Date;

public class Board_info {

	
	private int b_no;
	private String m_id;
	private String m_name;
	private String b_title;
	private String b_content;
	private Date b_date;
	private int b_cnt;
	public Board_info() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Board_info(int b_no, String m_name, String b_title, String b_content, int b_cnt) {
		super();
		this.b_no = b_no;
		this.m_name = m_name;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_cnt = b_cnt;
	}

	public Board_info(int b_no, String m_id, String m_name, String b_title,String b_content ,Date b_date) {
		super();
		this.b_no = b_no;
		this.m_id = m_id;
		this.m_name = m_name;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_date = b_date;

	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public int getB_cnt() {
		return b_cnt;
	}
	public void setB_cnt(int b_cnt) {
		this.b_cnt = b_cnt;
	}

	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	
	
	
}
