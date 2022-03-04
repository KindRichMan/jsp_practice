package kr.co.ict;

public class UserVO {
	
	private String uname;
	private String uid;
	private String upw;
	private String uemail;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public UserVO(String uname, String uid, String upw, String uemail) {
		super();
		this.uname = uname;
		this.uid = uid;
		this.upw = upw;
		this.uemail = uemail;
	}
	@Override
	public String toString() {
		return "UserVO [uname=" + uname + ", uid=" + uid + ", upw=" + upw + ", uemail=" + uemail + "]";
	}
	
	
	
	
	
	
	

}
