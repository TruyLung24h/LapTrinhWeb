package model;

public class DeThi {

	
	public String getIdDeThi() {
		return IdDeThi;
	}
	public void setIdDeThi(String idDeThi) {
		IdDeThi = idDeThi;
	}
	public String getTenDeThi() {
		return TenDeThi;
	}
	public void setTenDeThi(String tenDeThi) {
		TenDeThi = tenDeThi;
	}
	public String getMaMonHoc() {
		return MaMonHoc;
	}
	public void setMaMonHoc(String maMonHoc) {
		MaMonHoc = maMonHoc;
	}
	public int getSoLuongCau() {
		return SoLuongCau;
	}
	public void setSoLuongCau(int soLuongCau) {
		SoLuongCau = soLuongCau;
	}
	private String 	IdDeThi;
	private String 	TenDeThi;
	private String 	MaMonHoc;
	private int SoLuongCau ;
	public DeThi(String IdDeThi,String TenDeThi,String MaMonHoc,int SoLuongCau )
    {
    super();
         this.IdDeThi=IdDeThi;
         this.TenDeThi= TenDeThi;
         this.MaMonHoc =MaMonHoc;
         this.SoLuongCau=SoLuongCau;                 
     }
}
