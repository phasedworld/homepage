package com.company.hami.user;

/*
 * DO(Data Object) 클래스
 */

public class ZipcodeBean {
	//1. zipcode 테이블에 관련된 멤버변수(프로퍼티) 선언
	private String zipcode;
	private String area1;
	private String area2;
	private String area3;
	private String area4;
	
	//2. getter, setter 메소드
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getArea1() {
		return area1;
	}
	public void setArea1(String area1) {
		this.area1 = area1;
	}
	public String getArea2() {
		return area2;
	}
	public void setArea2(String area2) {
		this.area2 = area2;
	}
	public String getArea3() {
		return area3;
	}
	public void setArea3(String area3) {
		this.area3 = area3;
	}
	public String getArea4() {
		return area4;
	}
	public void setArea4(String area4) {
		this.area4 = area4;
	}
	
	
}
