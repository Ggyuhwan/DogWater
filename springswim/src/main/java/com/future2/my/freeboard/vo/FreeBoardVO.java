package com.future2.my.freeboard.vo;

public class FreeBoardVO {

	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private String memId;
	private String memNm;
	private String createDate;
	private String updateDate;
	
	
	public FreeBoardVO() {
	}
	
	public FreeBoardVO(int boardNo, String boardTitle, String boardContent, String memId, String memNm,
			String createDate, String updateDate) {
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.memId = memId;
		this.memNm = memNm;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	
	@Override
	public String toString() {
		return "FreeBoardVO [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", memId=" + memId + ", memNm=" + memNm + ", createDate=" + createDate + ", updateDate=" + updateDate
				+ "]";
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemNm() {
		return memNm;
	}
	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}
	
	
}
