package com.future2.my.myboard.vo;

public class MyBoardVO {
	
	private int seq;
	private String memId;
	private String title;
	private String upload;
	private String division;
	private String skil;
	private String stroke;
	private String detail;
	private int distance;
	private int ssat;
	private String cyc;
	
	
	public MyBoardVO() {
	}
	
	public MyBoardVO(int seq, String memId, String title, String upload, String division, String skil, String stroke,
			String detail, int distance, int ssat, String cyc) {
		this.seq = seq;
		this.memId = memId;
		this.title = title;
		this.upload = upload;
		this.division = division;
		this.skil = skil;
		this.stroke = stroke;
		this.detail = detail;
		this.distance = distance;
		this.ssat = ssat;
		this.cyc = cyc;
	}
	@Override
	public String toString() {
		return "MyBoardVO [seq=" + seq + ", memId=" + memId + ", title=" + title + ", upload=" + upload + ", division="
				+ division + ", skil=" + skil + ", stroke=" + stroke + ", detail=" + detail + ", distance=" + distance
				+ ", ssat=" + ssat + ", cyc=" + cyc + "]";
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUpload() {
		return upload;
	}
	public void setUpload(String upload) {
		this.upload = upload;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
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

	
}
