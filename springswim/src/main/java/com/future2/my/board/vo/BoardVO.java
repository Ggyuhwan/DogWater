package com.future2.my.board.vo;


public class BoardVO {
	private String division;
	private String distance;
	private String korPr;
	private String worldPr;
	private String olympicPr;
	private String asiaPr;
	
	
	public BoardVO() {
	}


	public BoardVO(String division, String distance, String korPr, String worldPr, String olympicPr, String asiaPr) {
		
		this.division = division;
		this.distance = distance;
		this.korPr = korPr;
		this.worldPr = worldPr;
		this.olympicPr = olympicPr;
		this.asiaPr = asiaPr;
	}


	


	public String getDivision() {
		return division;
	}


	public void setDivision(String division) {
		this.division = division;
	}


	public String getDistance() {
		return distance;
	}


	public void setDistance(String distance) {
		this.distance = distance;
	}


	public String getKorPr() {
		return korPr;
	}


	public void setKorPr(String korPr) {
		this.korPr = korPr;
	}


	public String getWorldPr() {
		return worldPr;
	}


	public void setWorldPr(String worldPr) {
		this.worldPr = worldPr;
	}


	public String getOlympicPr() {
		return olympicPr;
	}


	public void setOlympicPr(String olympicPr) {
		this.olympicPr = olympicPr;
	}


	public String getAsiaPr() {
		return asiaPr;
	}


	public void setAsiaPr(String asiaPr) {
		this.asiaPr = asiaPr;
	}


	@Override
	public String toString() {
		return "BoardVO [division=" + division + ", distance=" + distance + ", korPr=" + korPr + ", worldPr=" + worldPr
				+ ", olympicPr=" + olympicPr + ", asiaPr=" + asiaPr + "]";
	}
	
	

}
