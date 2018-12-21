package model;

public class CauHoi {
	
	public String getIdCauHoi() {
		return IdCauHoi;
	}
	public void setIdCauHoi(String idCauHoi) {
		IdCauHoi = idCauHoi;
	}
	public String getMaMonHoc() {
		return MaMonHoc;
	}
	public void setMaMonHoc(String maMonHoc) {
		MaMonHoc = maMonHoc;
	}
	public String getCauHoi() {
		return CauHoi;
	}
	public void setCauHoi(String cauHoi) {
		CauHoi = cauHoi;
	}
	public String getDapAn1() {
		return DapAn1;
	}
	public void setDapAn1(String dapAn1) {
		DapAn1 = dapAn1;
	}
	public String getDapAn2() {
		return DapAn2;
	}
	public void setDapAn2(String dapAn2) {
		DapAn2 = dapAn2;
	}
	public String getDapAn3() {
		return DapAn3;
	}
	public void setDapAn3(String dapAn3) {
		DapAn3 = dapAn3;
	}
	public String getDapAn4() {
		return DapAn4;
	}
	public void setDapAn4(String dapAn4) {
		DapAn4 = dapAn4;
	}
	public String getDapAnDung() {
		return DapAnDung;
	}
	public void setDapAnDung(String dapAnDung) {
		DapAnDung = dapAnDung;
	}
	private String 	IdCauHoi ;
	private String 	MaMonHoc ; 
	private String 	CauHoi ; 
	private String 	DapAn1 ; 
	private String 	DapAn2  ;
	private String 	DapAn3  ;
	private String 	DapAn4  ;
	private String 	DapAnDung ;  
	
	public CauHoi(String IdCauHoi ,String MaMonHoc,String CauHoi,String DapAn1,String DapAn2,String DapAn3,String DapAn4,String DapAnDung)
    {
    super();
    	 this.IdCauHoi=IdCauHoi;
         this.MaMonHoc=MaMonHoc;
         this.CauHoi =CauHoi;
         this.DapAn1=DapAn1;
         this.DapAn2=DapAn2;
         this.DapAn3=DapAn3;
         this.DapAn4=DapAn4;
         this.DapAnDung=DapAnDung;          
     }
}
