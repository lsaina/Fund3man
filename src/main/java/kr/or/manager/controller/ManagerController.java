package kr.or.manager.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.or.manager.model.service.ManagerService;
import kr.or.manager.model.vo.FundPageData;
import kr.or.manager.model.vo.MemberPageData;
import kr.or.member.vo.Member;
import kr.or.member.vo.Seller;
import kr.or.store.model.vo.StoreAllPageData;
import kr.or.store.model.vo.StoreStar;

@Controller
public class ManagerController {
		
	@Autowired
	private ManagerService service;
	
	//판매자 승인페이지
	@RequestMapping(value="/sellerManage.do")
	public String sellerManage(String keyword, String type, Model model) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("keyword", keyword);
		map.put("type", type);
		//총 데이터 수 
		int totalCount = service.totalSellerCount(map);
		model.addAttribute("totalCount", totalCount);
		
		//셀러리스트 불러오기
		ArrayList<Seller> sellerList = service.selectSellerForManager(map);
		model.addAttribute("sellerList", sellerList);
		
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
		return "manager/sellerManage";
	}
	
	
	//판매자 허가 변경
	@RequestMapping(value="/authSellerChange.do")
	public String authSellerChange(String keyword, String type, String memberId, int sellerNo, String msg, int authSeller, int categoryNo, Model model ) {
		//멤버테이블 권한변경
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("memberId", memberId);
		map.put("categoryNo", categoryNo);
		int result1 = service.changeMemberAuth(map);
		
		//셀러테이블 승인상태, 메세지 변경
		Seller seller = new Seller();
		seller.setSellerNo(sellerNo);
		seller.setAuthSeller(authSeller);
		seller.setAuthMessage(msg);
		int result2 = service.changeSellerAuth(seller);
		
		if(result1>0 && result2>0) {
		
			model.addAttribute("title", "SUCCESS" );
			model.addAttribute("text", "변경 되었습니다.");
			model.addAttribute("icon", "info");
		}else {
			model.addAttribute("title", "FAIL" );
			model.addAttribute("text", "변경에 실패하였습니다.");
			model.addAttribute("icon", "info");
			
		}
		model.addAttribute("loc", "/sellerManage.do?keyword="+keyword+"&type="+type);
		return "manager/msg";
		
		
		//return "redirect:/sellerManage.do?keyword="+keyword+"&type="+type ;
	}
	
	//사업자등록증 다운로드
	@RequestMapping(value="/photoFileDown.do")
	public void photoFileDown(String enPath, HttpServletRequest request, HttpServletResponse response) {
		String savePath = request.getSession().getServletContext().getRealPath("/resources/image/member/");
		String downLoadFile = savePath+enPath;
		
		try {
			FileInputStream fis = new FileInputStream(downLoadFile);
			BufferedInputStream bis = new BufferedInputStream(fis);
			ServletOutputStream sos = response.getOutputStream();
			BufferedOutputStream bos = new BufferedOutputStream(sos);
			String resFilename = new String(enPath.getBytes("utf-8"),"ISO-8859-1");
			response.setContentType("application/octet-stream");
			response.setHeader("Content-Disposition", "attachment;filename="+resFilename);
			while(true) {
				int read = bis.read();
				if(read != -1) {
					bos.write(read);
				}else {
					break;
				}
			}
			bos.close();
			bis.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//moreSeller ajax
	@ResponseBody
	@RequestMapping(value="/moreSeller.do", produces="application/json;charset=utf-8")
	public String moreSeller(int type, String keyword, int amount, int start) {
		int end = start+amount-1;
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("keyword", keyword);
		map.put("type", type);
		map.put("start", start);
		map.put("end", end);
		
		ArrayList<Seller> sellerList = service.moreSeller(map);
		return new Gson().toJson(sellerList);
	}
	
	//회원 관리 페이지
	@RequestMapping(value="/memberManage.do")
	public String memberManager(int reqPage, String type, String keyword, Model model) {
		//회원조회
		MemberPageData mpd = service.selectAllMember(reqPage, type, keyword);
		ArrayList<Member> mList = mpd.getList();
		/*
		경고수조회(해당멤버에게 admin이 보낸 메세지 수 )
		ArrayList<Integer> rCountList = new ArrayList<Integer>();
		for(int i=0;i<mList.size();i++) {
			//Student s = students.get(i);
			//System.out.println(s.getName()+"\t"+s.getAge()+"\t"+s.getAddr());
			int result = service.countReport(memberId);
			rCountList.add(result);
		}
		*/
		model.addAttribute("list", mpd.getList());
		model.addAttribute("pageNavi", mpd.getPageNavi());
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
		model.addAttribute("reqPage", reqPage);
		//model.addAttribute("rCountList", rCountList);   
		//jsp에서 경고수 <c:foreach>에서 ${rCountList}
		return "manager/memberManage";
	}
	
	//회원 신고 상세페이지
	@RequestMapping(value="/memberReportDetail.do")
	public String memberReportDetail(String memberId, Model model) {
		ArrayList<StoreStar> list = service.selectOneStar(memberId);
		model.addAttribute("starList", list);
		return "manager/memberReport";
	}
	
	//펀드 관리
	@RequestMapping(value="/fundManage.do")
	public String fundManage(int reqPage, String type, String keyword, Model model) {
		//펀드조회
		FundPageData fpd = service.selectAllFund(reqPage, type, keyword);
		model.addAttribute("list", fpd.getList());
		model.addAttribute("pageNavi", fpd.getPageNavi());
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
		model.addAttribute("reqPage", reqPage);
		return "manager/fundManage";
	}
	//펀드 경고관리
	
	
	//스토어 관리
	@RequestMapping(value="/storeManage.do")
	public String storeManage(int reqPage, String type, String keyword, Model model) {
		StoreAllPageData spd = service.selectAllStore(reqPage, type, keyword);
		model.addAttribute("list", spd.getList());
		model.addAttribute("pageNavi", spd.getPageNavi());
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
		model.addAttribute("reqPage", reqPage);
		return "manager/storeManage";
	}
	
	
}








