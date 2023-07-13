package com.web.vo;


public class HumanVo {
	private int age;
	private String name;
	private String addr;	
	
	public void setAge(int age) {
		this.age = age;
	}
	public int getAge() {
		return age;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getname() {
		return name;
	}
	
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getAddr() {
		return addr;
	}
	
	@Override
	public String toString() {
		return "name = " + name + ", age = " + age + ", addr = "+ addr;
	}
}

