package kr.or.fund.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.fund.model.dao.FundDao;
import kr.or.fund.model.vo.Fund;
import kr.or.fund.model.vo.Reward;

@Service
public class FundService {
	@Autowired
	private FundDao dao;

	public ArrayList<Fund> selectAllFund() {
		// TODO Auto-generated method stub
		return dao.selectAllFund();
	}

	public Fund selectOneFund(Fund f) {
		// TODO Auto-generated method stub
		return dao.selectOneFund(f);
	}

	public int updateFundStory(Fund fund) {
		// TODO Auto-generated method stub
		return dao.updateFundStory(fund);
	}

	public ArrayList<Reward> selectReward(Fund f) {
		// TODO Auto-generated method stub
		return dao.selectReward(f);
	}

}
