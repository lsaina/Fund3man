package kr.or.member.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.multi.MultiFileChooserUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.Gson;

import kr.or.member.service.SellerService;
import kr.or.member.vo.Member;
import kr.or.member.vo.Seller;

@Controller
public class SellerController {

	@Autowired
	private SellerService service;

	@RequestMapping(value = "sellerReqFrm.do")
	public String sellerReqFrm() {
		return "member/sellerReq";
	}

	@RequestMapping(value = "sellerReq.do")
	public String sellerReq(Seller s, HttpServletRequest request, MultipartFile[] upfile) {

		String savepath = request.getSession().getServletContext().getRealPath("/resources/image/member/");
		String photopath = upfile[0].getOriginalFilename();
		String enPath = upfile[1].getOriginalFilename();

		s.setEnPath(enPath);
		s.setPhotopath(photopath);
			
		int result = service.insertSeller(s);
		if(result>0) {
			for (MultipartFile file : upfile) {
				String filepath = file.getOriginalFilename();
				try {
					FileOutputStream fos = new FileOutputStream(new File(savepath+filepath));
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();

				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println(s);
				}
			}
	
		}
		return "redirect:/";

	}
	@RequestMapping(value="updateSellerFrm.do")
	public String updateSellerFrm(Model model,@SessionAttribute(required=false)Member m) {
		
		Seller sel = service.selectOneSeller(m);
		
		model.addAttribute("s", sel);
		return "member/updateSeller";
	}
	@RequestMapping(value="updateSeller.do")
	public String updateSeller(HttpServletRequest request,Seller sel,String status1,String status2,MultipartFile[] upfile) {
		String savepath = request.getSession().getServletContext().getRealPath("/resources/image/member/");
		
		//??????????????? ??? ????????? ?????? ??? ????????? null
		String photopath = upfile[0].getOriginalFilename();
		String enPath = upfile[1].getOriginalFilename();
		
		//????????????????????? null 
		String oldPhotopath =sel.getPhotopath();
		String oldEnPath = sel.getEnPath();
		if(status1.equals("delete")) { //????????? ????????? ????????? ?????? 
			File delFile1 = new File(savepath+oldPhotopath);
			delFile1.delete();
		}else if(oldPhotopath!=null) {
			photopath=oldPhotopath;
		}
		if(status2.equals("delete")) { //????????? ????????? ????????? ?????? 
			File delFile2 = new File(savepath+oldEnPath);
			delFile2.delete();
		}else if(oldEnPath!=null) {
			enPath=oldEnPath;
		}
		
		sel.setPhotopath(photopath);
		sel.setEnPath(enPath);
		int result = service.updateSeller(sel);
		
		if(result>0) {
			try {
				for(MultipartFile file :upfile) {
					if(file!=null) {
					FileOutputStream fos = new FileOutputStream(new File(savepath+file.getOriginalFilename()));
					BufferedOutputStream bos = new BufferedOutputStream(fos); 
					byte[] bytes=file.getBytes();
					bos.write(bytes);
					bos.close();
					}
				}
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "member/mypage";
		}else {
			return "redirect:updateSellerFrm.do";
		}
		
	}//?????? ?????? ????????? 
	@RequestMapping(value="selectSeller.do",produces="application/json;charset=utf-8")
	@ResponseBody
	public String selectSeller(Member m) {
		
		Seller s = service.selectOneSeller(m);
		System.out.println(s);
		return new Gson().toJson(s);
	}
	
	@RequestMapping(value="onLoadFrm.do")
	public String onLoadFrm() {
		return "member/onLoad";
	}
}
