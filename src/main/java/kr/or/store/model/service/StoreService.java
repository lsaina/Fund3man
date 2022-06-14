package kr.or.store.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.coupon.model.vo.Coupon;
import kr.or.coupon.model.vo.MemberCoupon;
import kr.or.member.vo.Member;
import kr.or.store.model.dao.StoreDao;
import kr.or.store.model.vo.Store;
import kr.or.store.model.vo.StoreAllPageData;
import kr.or.store.model.vo.StoreDelivery;
import kr.or.store.model.vo.StoreStar;
import kr.or.store.model.vo.StoreViewData;


@Service
public class StoreService {
	@Autowired
	private StoreDao dao;

	public ArrayList<Store> selectAllStore() {
		// TODO Auto-generated method stub
		return dao.selectAllStore();
	}

	public StoreViewData selectOneStore(int storeNo) {
		// TODO Auto-generated method stub
		Store sm = dao.selectOneStore(storeNo);
		ArrayList<StoreStar> list = dao.selectcommentAllList(storeNo);
		double starAvg = dao.selectStarAvg(storeNo);
		StoreViewData sv = new StoreViewData(sm, list, starAvg);
		return sv;
	}

	public StoreAllPageData selectStoreAllList(int reqPage, String storeCategory) {
		// 한 페이지 당 보여줄 게시물 수 : 8개
		int numPerPage = 8;
		//reqPage 1 -> 1~8, reqPage 2 -> 9~16
		//페이지 마지막 번호
		int end = reqPage * numPerPage;
		//페이지 첫번째 번호
		int start = end - numPerPage + 1;
		//게시물 목록 조회
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("start",start);
		map.put("end", end);
		map.put("storeCategory", storeCategory);	
		ArrayList<Store> list = dao.selectStoreAllList(map);
		//pageNavi 작성시작
		//전체페이지수 계산이 필요 => 전체 게시물 수의 db에서 조회해와야 계산
		//전체게시물수
		int totalCount = dao.selectStoreCount(map);
		//전체게시물로 전체 페이지수 구하기
		int totalPage = 0;
		if(totalCount % numPerPage == 0) {
			totalPage = totalCount/numPerPage;
		}else {
			totalPage = totalCount/numPerPage + 1;
		}
		//페이지 네비 길이
		int pageNaviSize = 5;
		//페이지번호
		int pageNo = 1;
		if(reqPage>3) {
			pageNo = reqPage - 2;
		}
		//페이지Navi생성시작
		String pageNavi = "";
		//이전버튼
		if(pageNo != 1) {
			pageNavi += "<a href='/storeList.do?reqPage="+(reqPage-1)+"&storeCategory="+storeCategory+"'><</a>";
		}
		//페이지숫자생성
		for(int i=0;i<pageNaviSize;i++) {
			if(pageNo == reqPage) {
				pageNavi += "<span>"+pageNo+"</span>";
			}else {
				pageNavi += "<a href='/storeList.do?reqPage="+pageNo+"&storeCategory="+storeCategory+"'>"+pageNo+"</a>";
			}
			pageNo++;
			if(pageNo > totalPage) {
				break;
			}
		}
		//다음버튼
		if(pageNo<=totalPage) {
			pageNavi += "<a href='/storeList.do?reqPage="+(reqPage+1)+"&storeCategory="+storeCategory+"'>></a>";
		}
		StoreAllPageData spd = new StoreAllPageData(list, pageNavi);
		return spd;
	}

	public int insertComment(StoreStar ss) {
		int result = dao.insertComment(ss);
		return result;
	}



	public ArrayList<MemberCoupon> SelectMemberCouponList(int memberNo) {
		return dao.selectMemberCouponList(memberNo);
	}

	public Coupon selectOneCoupon(int couponNo, int totalprice, String storeCategory) {
		HashMap<String, Object> map = new HashMap<String, Object>();
        map.put("couponNo", couponNo);
        map.put("totalprice", totalprice);
        map.put("storeCategory", storeCategory);
        return dao.selectOneCoupon(map);
	}

	public int selectStorepayNo(int memberNo,int storeNo, String memberId) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memberNo", memberNo);
		map.put("storeNo", storeNo);
		map.put("memberId", memberId);
		//구매를 했는 지 안했는지 알 수 있는 list
		ArrayList<Integer> list = dao.selectStorepayNo(map);
		if(list.size()>0) {
			//구매했을 때(후기여부조회)
			int result = dao.selectStoreStar(map);
			if(result>0) {
				//후기 있으면 return 0
				return 0;
			}else {
				//없으면 return->list의 0번째 값 돌려주기
				return list.get(0);
			}
		}else {
			//구매 안했을 때
			return 0;
		}
	}

	public int insertPay(int memberNo, int couponNo, int storeNo, int number, int storeDelivery, int storePrice,
			int storepayAllprice, StoreDelivery sd) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memberNo", memberNo);
		map.put("couponNo", couponNo);
		map.put("storeNo", storeNo);
		map.put("number", number);
		map.put("storeDelivery", storeDelivery);
		map.put("storePrice", storePrice);
		map.put("storepayAllprice", storepayAllprice);
		int result = dao.insertPay(map);
		//가장 최근의 결제번호 가져오기
		int storepayNo = dao.selectPayno();
		//storepay값 넣어주기
		sd.setStorepayNo(storepayNo);
		//쿠폰 사용 유무를 알기 위한 변수
		int result2 = 0;
		int result3 = 0;
		if(result>0){
			//쿠폰을 썼을 경우
			result2 = dao.updateMemberCoupon(map);
			//delivery insert
			result3 = dao.insertDelivery(sd);
		}else{
			//쿠폰을 사용하지 않았을 경우
			result2 = -1;
		}
		return result2;
	}
	

	public int updateReport(int storeNo) {
		return dao.updateReport(storeNo);
	}



	public int storeCommentDelete(int starNo) {
		// TODO Auto-generated method stub
		return dao.storeCommentDelete(starNo);
	}

	public int updateStoreComment(int starNo, int storeNo, String starContent) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("starNo", starNo);
		map.put("storeNo", storeNo);
		map.put("starContent", starContent);
		return dao.updateStoreComment(map);
	}

	public int updateReportMem(int starNo, int memberNo) {
		int result1 = dao.updateReportstar(starNo);
		int result2 = dao.updateReportMem(memberNo);
		return result1+result2;
	}

	public int insertDelivery(StoreDelivery sd) {
		return dao.insertDelivery(sd);
	}



	




}
