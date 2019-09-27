package com.company.hami.user;

public class UserVO {
	//멤버변수 선언
	private String id;
	private String passwd;
	//private String name;
	private String email;
	//private String address;
	private String address1;	//zipcode에서 가져오는 주소 ex) 서울 중랑구 면목2동 131∼142번지 
	private String address2;	//상세 주소 ex) 서일대학교 호천관 807호
	private int rank;
	
	//setter,getter 메소드 구현
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	/*
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	*/
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	/*
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	*/
	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	
	//toString()
	@Override
	public String toString() {
		/*
		return "UserVO [id=" + id + ", passwd=" + passwd + ", name=" + name + ", email=" + email + ", address="
				+ address + ", rank=" + rank + "]";
		*/
		return "UserVO [id=" + id + ", passwd=" + passwd + ", email=" + email + ", zipcode=" + zipcode + ", address1="
				+ address1 + ", address2=" + address2 + ", rank=" + rank + "]";
	}

}
