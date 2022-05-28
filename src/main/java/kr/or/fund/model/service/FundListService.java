package kr.or.fund.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.fund.model.dao.FundListDao;
import kr.or.fund.model.vo.Fund;

@Service
public class FundListService {
	@Autowired
	private FundListDao dao;

	//펀딩 리스트 메인페이지
	public ArrayList<Fund> selectFundList(String category) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		return dao.selectFundList(map);
	}
	
	//펀딩 상세 메인페이지-story
	public Fund selectOneFund(int fundNo) {
		return dao.selectOneFund(fundNo);
	}
	
	//펀딩 셀러 조회
}
