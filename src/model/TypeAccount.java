package model;

public class TypeAccount {

	private String 	IdType ;
	private String TenType ;
	
	public TypeAccount(String IdType,String TenType) {
        super();
        this.IdType=IdType;
        this.TenType=TenType;    
    }
	
	public String getIdType() {
		return IdType;
	}
	public void setIdType(String idType) {
		IdType = idType;
	}
	public String getTenType() {
		return TenType;
	}
	public void setTenType(String tenType) {
		TenType = tenType;
	}
	
	
}
