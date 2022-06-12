package kr.or.store.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.store.model.vo.TmpStore;

@Repository
public class StoreTmpDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int createTmpStore(TmpStore t) {
		// TODO Auto-generated zdmethod stub
		sqlSession.insert("tmpStore.createTmpStore",t);
		int result = t.getStNo();
		return result;
	}

	public TmpStore selectOneTmpStore(TmpStore ts) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("tmpStore.selectOneTmpStore",ts);
	}

	public int updateStore3(TmpStore ts) {
		// TODO Auto-generated method stub
		return sqlSession.update("tmpStore.updateStore3",ts);
	}

	public int updateStore4(TmpStore ts) {
		// TODO Auto-generated method stub
		return sqlSession.update("tmpStore.updateStore4",ts);
	}

	public int updateStore5(TmpStore ts) {
		// TODO Auto-generated method stub
		return sqlSession.update("tmpStore.updateStore5",ts);
	}
}
