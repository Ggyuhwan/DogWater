package com.future2.my.member.dao;

import org.apache.ibatis.annotations.Mapper;

import com.future2.my.member.vo.MemberVO;

@Mapper
public interface IMemberDAO {
	public int registMember(MemberVO member);
	public MemberVO loginMember(MemberVO member);
}
