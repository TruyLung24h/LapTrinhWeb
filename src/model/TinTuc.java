package model;
import java.util.Date;
public class TinTuc {

	private String	IdNews ;
	private String TieuDe   ;
	private String NoiDung  ;
	private String HinhAnh ;
	private Date Time_Dang  ;
	private String Creator ;
	
	public TinTuc(String IdNews ,String TieuDe ,String NoiDung,String HinhAnh ,Date Time_Dang ,String Creator ) {
        super();
        this.IdNews=IdNews;
        this.TieuDe=TieuDe;  
        this.NoiDung=NoiDung;
        this.HinhAnh=HinhAnh;
        this.Time_Dang=Time_Dang;
        this.Creator=Creator;       
    }
	
	public String getIdNews() {
		return IdNews;
	}
	public void setIdNews(String idNews) {
		IdNews = idNews;
	}
	public String getTieuDe() {
		return TieuDe;
	}
	public void setTieuDe(String tieuDe) {
		TieuDe = tieuDe;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public String getHinhAnh() {
		return HinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		HinhAnh = hinhAnh;
	}
	public Date getTime_Dang() {
		return Time_Dang;
	}
	public void setTime_Dang(Date time_Dang) {
		Time_Dang = time_Dang;
	}
	public String getCreator() {
		return Creator;
	}
	public void setCreator(String creator) {
		Creator = creator;
	}
	
}
