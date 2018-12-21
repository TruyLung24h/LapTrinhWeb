package model;

public class MonHoc {
	private String IdMonHoc ;
	public String getIdMonHoc() {
		return IdMonHoc;
	}
	public void setIdMonHoc(String idMonHoc) {
		IdMonHoc = idMonHoc;
	}
	public String getTenMonHoc() {
		return TenMonHoc;
	}
	public void setTenMonHoc(String tenMonHoc) {
		TenMonHoc = tenMonHoc;
	}
	private String TenMonHoc   ;
	
	
	public MonHoc(String IdMonHoc ,String TenMonHoc )
    {
    super();
         this.IdMonHoc=IdMonHoc;
         this.TenMonHoc= TenMonHoc;
                  
     }
}
