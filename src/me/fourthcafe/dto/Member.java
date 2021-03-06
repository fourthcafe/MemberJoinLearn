package me.fourthcafe.dto;


/**
 * @author fourthcafe
 *
 */
public class Member {
	
	private int userNo;
	private String userId;
	private String userPw;
	private String userName;
	private String companyNo;
	private String companyName;
	
	
	
	public int getUserNo() {
		return userNo;
	}
	
	
	
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	
	
	public String getUserId() {
		return userId;
	}
	
	
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
	
	public String getUserPw() {
		return userPw;
	}
	
	
	
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	
	
	
	public String getUserName() {
		return userName;
	}
	
	
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
	
	public String getCompanyNo() {
		return companyNo;
	}
	
	
	
	public void setCompanyNo(String companyNo) {
		this.companyNo = companyNo;
	}
	
	
	
	public String getCompanyName() {
		return companyName;
	}
	
	
	
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	
	
	
	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPw=" + userPw + ", userName=" + userName
				+ ", companyNo=" + companyNo + ", companyName=" + companyName + "]";
	}
}
