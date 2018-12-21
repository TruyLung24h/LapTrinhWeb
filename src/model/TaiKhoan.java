package model;
public class TaiKhoan {
	private String	Username ;
	private String	P_assword ;
	private String   HoTen ;
	private String   GioiTinh ;
	private String    NgaySinh ;
	private String    DiaChi ;
	private String   IdType ;
	private String    Avatar ;
	
	public TaiKhoan( String	Username ,String	P_assword, String   HoTen ,String   GioiTinh ,String   NgaySinh,String    DiaChi ,String   IdType ,String    Avatar ) {
       super();
        this.Username= Username;
        this.P_assword= P_assword;
        this.HoTen=HoTen;
        this.GioiTinh=GioiTinh;
        this.NgaySinh=NgaySinh;
        this.DiaChi=DiaChi;
        this.IdType=IdType;
        this.Avatar=Avatar;
    }
	
	      
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getP_assword() {
		return P_assword;
	}
	public void setP_assword(String p_assword) {
		P_assword = p_assword;
	}
	public String getHoTen() {
		return HoTen;
	}
	public void setHoTen(String hoTen) {
		HoTen = hoTen;
	}
	public String getGioiTinh() {
		return GioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}
	public String getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public String getIdType() {
		return IdType;
	}
	public void setIdType(String idType) {
		IdType = idType;
	}
	public String getAvatar() {
		return Avatar;
	}
	public void setAvatar(String avatar) {
		Avatar = avatar;
	}
	
}
