package model;
public class ChiTietDeThi {

	
	public String getIdDeThi() {
		return IdDeThi;
	}
	public void setIdDeThi(String idDeThi) {
		IdDeThi = idDeThi;
	}
	public String getIdCauHoi() {
		return IdCauHoi;
	}
	public void setIdCauHoi(String idCauHoi) {
		IdCauHoi = idCauHoi;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public int getTime_GioiHanLamBai() {
		return Time_GioiHanLamBai;
	}
	public void setTime_GioiHanLamBai(int time_GioiHanLamBai) {
		Time_GioiHanLamBai = time_GioiHanLamBai;
	}
	public String getTime_BatDau() {
		return Time_BatDau;
	}
	public void setTime_BatDau(String time_BatDau) {
		Time_BatDau = time_BatDau;
	}
	public String getTime_KetThuc() {
		return Time_KetThuc;
	}
	public void setTime_KetThuc(String time_KetThuc) {
		Time_KetThuc = time_KetThuc;
	}
	public String getDapAn() {
		return DapAn;
	}
	public void setDapAn(String dapAn) {
		DapAn = dapAn;
	}
	private String	IdDeThi ; 
	private String    IdCauHoi ;
	private String    Username ;
	private int    Time_GioiHanLamBai ;
	private String    Time_BatDau ;
	private String   Time_KetThuc;
	private String   DapAn ;
	public ChiTietDeThi(String IdDeThi,String IdCauHoi,String Username,int Time_GioiHanLamBai,String Time_BatDau,String Time_KetThuc,String DapAn)
    {
    super();
         this.IdDeThi=IdDeThi;
         this.IdCauHoi= IdCauHoi;
         this.Username =Username;
         this.Time_GioiHanLamBai=Time_GioiHanLamBai;
         this.Time_BatDau=Time_BatDau;
         this.Time_KetThuc=Time_KetThuc;
         this.DapAn=DapAn;                
     }
}
