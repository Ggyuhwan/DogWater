package com.future2.my.display.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.future2.my.display.dao.IMainDAO;
import com.future2.my.display.vo.MainVO;

@Service
public class MainService {

	@Autowired
	IMainDAO dao;
	
	public List<MainVO> getMainList(){
		List<MainVO> result = dao.getMainList();
		
		System.out.println(result);
		return result;
	}
	public List<MainVO> getMainList2(){
		List<MainVO> result = dao.getMainList2();
		
		System.out.println(result);
		return result;
	}
	public List<MainVO> getMainList3(){
		List<MainVO> result = dao.getMainList3();
		
		System.out.println(result);
		return result;
	}
	
	
}
