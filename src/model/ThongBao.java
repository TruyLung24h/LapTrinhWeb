package model;
import java.util.Date;
public class ThongBao {

	private String	IdThongBao;
	private String  NoiDung;  
	private String  NguoiGui; 
	private String	NguoiNhan; 
	private Date   Time_Gui  ;
	
	public ThongBao( String	IdThongBao,String  NoiDung , String  NguoiGui, String	NguoiNhan, Date   Time_Gui  ) {
        super();

        this.IdThongBao=IdThongBao;
        this.NoiDung=NoiDung;
        this.NguoiGui=NguoiGui;
        this.NguoiNhan=NguoiNhan;
        this.Time_Gui=Time_Gui;
    }
	
	public String getIdThongBao() {
		return IdThongBao;
	}
	public void setIdThongBao(String idThongBao) {
		IdThongBao = idThongBao;
	}
	public String getNoiDung() {
		return NoiDung;
	}
	public void setNoiDung(String noiDung) {
		NoiDung = noiDung;
	}
	public String getNguoiGui() {
		return NguoiGui;
	}
	public void setNguoiGui(String nguoiGui) {
		NguoiGui = nguoiGui;
	}
	public String getNguoiNhan() {
		return NguoiNhan;
	}
	public void setNguoiNhan(String nguoiNhan) {
		NguoiNhan = nguoiNhan;
	}
	public Date getTime_Gui() {
		return Time_Gui;
	}
	public void setTime_Gui(Date time_Gui) {
		Time_Gui = time_Gui;
	}
}
