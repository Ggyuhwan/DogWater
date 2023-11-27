package com.future2.my.display.vo;

public class MainVO {
	private String skil;
	private String stroke;
	private String detail;
	private int distance;
	private int ssat;
	
	public MainVO() {
	}
	
	public MainVO(String skil, String stroke, String detail, int distance, int ssat, String cyc) {
		this.skil = skil;
		this.stroke = stroke;
		this.detail = detail;
		this.distance = distance;
		this.ssat = ssat;
		this.cyc = cyc;
	}
	
	@Override
	public String toString() {
		return "MainVO [skil=" + skil + ", stroke=" + stroke + ", detail=" + detail + ", distance=" + distance
				+ ", ssat=" + ssat + ", cyc=" + cyc + "]";
	}
	public String getSkil() {
		return skil;
	}
	public void setSkil(String skil) {
		this.skil = skil;
	}
	public String getStroke() {
		return stroke;
	}
	public void setStroke(String stroke) {
		this.stroke = stroke;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public int getDistance() {
		return distance;
	}
	public void setDistance(int distance) {
		this.distance = distance;
	}
	public int getSsat() {
		return ssat;
	}
	public void setSsat(int ssat) {
		this.ssat = ssat;
	}
	public String getCyc() {
		return cyc;
	}
	public void setCyc(String cyc) {
		this.cyc = cyc;
	}
	private String cyc;
	

}
