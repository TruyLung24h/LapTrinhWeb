package model;

public class ChiTietLopHoc {
	private String	MaLop ;	
	private String	Username ;	
	
	public ChiTietLopHoc(String MaLop,String Username)
	{
		super();
		    this.MaLop=MaLop;
	        this.Username= Username;
	}
	
	
	public String getMaLop() {
		return MaLop;
	}
	public void setMaLop(String maLop) {
		MaLop = maLop;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}	
}
