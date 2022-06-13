package kr.or.store.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.store.model.dao.StoreTmpDao;
import kr.or.store.model.vo.TmpStore;

@Service
public class StoreTmpService {
	@Autowired
	private StoreTmpDao dao;

	public int createTmpStore(TmpStore t) {
		// TODO Auto-generated method stub
		return dao.createTmpStore(t);
	}

	public TmpStore selectOneTmpStore(TmpStore ts) {
		// TODO Auto-generated method stub
		return dao.selectOneTmpStore(ts);
	}

	public int updateStore3(TmpStore ts) {
		// TODO Auto-generated method stub
		return dao.updateStore3(ts);
	}

	public int updateStore4(TmpStore ts) {
		// TODO Auto-generated method stub
		return dao.updateStore4(ts);
	}

	public int updateStore5(TmpStore ts) {
		// TODO Auto-generated method stub
		return dao.updateStore5(ts);
	}

	public int createStore(TmpStore tmp) {
		// TODO Auto-generated method stub
		return dao.createStore(tmp);
	}
}
