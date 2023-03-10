package com.board.domain;

import java.util.Date;

public class BoardVO {

/*
   CREATE TABLE tbl_board(
		bno int NOT NULL AUTO_INCREMENT,
		title varchar(50) NOT NULL,
		content text NOT NULL,
		writer varchar(30) NOT NULL,
		regDate timestamp NOT NULL DEFAULT now(),
		viewCnt int DEFAULT 0,
		PRIMARY key(bno)
	);
*/
	
	private int bno;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private int viewCnt;
	private String eduCd;
	private String sportsCd;
	
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public String getEduCd() {
		return eduCd;
	}
	public void setEduCd(String eduCd) {
		this.eduCd = eduCd;
	}
	public String getSportsCd() {
		return sportsCd;
	}
	public void setSportsCd(String sportsCd) {
		this.sportsCd = sportsCd;
	}
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer + ", regDate="
				+ regDate + ", viewCnt=" + viewCnt + ", eduCd=" + eduCd + ", sportsCd=" + sportsCd + "]";
	}


	
}