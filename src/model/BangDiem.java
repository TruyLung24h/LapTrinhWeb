package model;

import java.sql.Date;

public class BangDiem {

	
	 public String getIdSinhVien() {
		return IdSinhVien;
	}
	public void setIdSinhVien(String idSinhVien) {
		IdSinhVien = idSinhVien;
	}
	public String getMaDeThi() {
		return MaDeThi;
	}
	public void setMaDeThi(String maDeThi) {
		MaDeThi = maDeThi;
	}
	public String getMaMonHoc() {
		return MaMonHoc;
	}
	public void setMaMonHoc(String maMonHoc) {
		MaMonHoc = maMonHoc;
	}
	public int getDiem() {
		return Diem;
	}
	public void setDiem(int diem) {
		Diem = diem;
	}
	public Date getDate_Time() {
		return Date_Time;
	}
	public void setDate_Time(Date date_Time) {
		Date_Time = date_Time;
	}
	 private String	IdSinhVien ;
	 private String	MaDeThi   ;
	 private String MaMonHoc  ;
     private int    Diem ;
     private Date   Date_Time ;
     
     public BangDiem(String IdSinhVien ,String MaDeThi   ,String MaMonHoc ,int Diem ,Date   Date_Time )
     {
     super();
          this.IdSinhVien=IdSinhVien;
          this.MaDeThi= MaDeThi;
          this.MaMonHoc=MaMonHoc;
          this.Diem=Diem;
          this.Date_Time=Date_Time;         
      }
}
