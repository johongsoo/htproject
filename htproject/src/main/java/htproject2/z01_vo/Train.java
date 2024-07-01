package htproject.z01_vo;

public class Train {
	private String mem_id;
	private String t_station;
	private String t_type;
	private String t_num;
	private String t_depart;
	private String t_arrival;
	private String t_departtime;
	private String t_arrivaltime;
	private String t_date;
	public Train() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Train(String mem_id, String t_station, String t_type, String t_num, String t_depar, String t_arrival,
			String t_departtime, String t_arrivaltime, String t_date) {
		super();
		this.mem_id = mem_id;
		this.t_station = t_station;
		this.t_type = t_type;
		this.t_num = t_num;
		this.t_depart = t_depart;
		this.t_arrival = t_arrival;
		this.t_departtime = t_departtime;
		this.t_arrivaltime = t_arrivaltime;
		this.t_date = t_date;
	}
	
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getT_station() {
		return t_station;
	}
	public void setT_station(String t_station) {
		this.t_station = t_station;
	}
	public String getT_type() {
		return t_type;
	}
	public void setT_type(String t_type) {
		this.t_type = t_type;
	}
	public String getT_num() {
		return t_num;
	}
	public void setT_num(String t_num) {
		this.t_num = t_num;
	}
	public String getT_depart() {
		return t_depart;
	}
	public void setT_depart(String t_depart) {
		this.t_depart= t_depart;
	}
	public String getT_arrival() {
		return t_arrival;
	}
	public void setT_arrival(String t_arrival) {
		this.t_arrival = t_arrival;
	}
	public String getT_departtime() {
		return t_departtime;
	}
	public void setT_departtime(String t_departtime) {
		this.t_departtime = t_departtime;
	}
	public String getT_arrivaltime() {
		return t_arrivaltime;
	}
	public void setT_arrivaltime(String t_arrivaltime) {
		this.t_arrivaltime = t_arrivaltime;
	}
	public String getT_date() {
		return t_date;
	}
	public void setT_date(String t_date) {
		this.t_date = t_date;
	}
	
}
