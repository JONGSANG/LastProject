package com.kosta.controller;

import java.io.File;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.AdminBookService;
import com.kosta.service.SearchService;
import com.kosta.vo.BookVO;
import com.kosta.vo.CodeMaker;
import com.kosta.vo.PageMaker_rep;
import com.kosta.vo.Rent_BookVO;

import net.sourceforge.barbecue.Barcode;
import net.sourceforge.barbecue.BarcodeFactory;
import net.sourceforge.barbecue.BarcodeImageHandler;

@Controller
public class AdminBookController {

	private static final Logger logger = LoggerFactory.getLogger(AdminBookController.class);

	@Autowired
	private AdminBookService service;
	@Autowired
	private SearchService searchService;
	@Resource(name = "bookImgPath")
	private String bookImgPath;
	@Resource(name = "barcodeImgPath")
	private String barcodeImgPath;

	
	@RequestMapping(value = "adminLibrary/adminBook/rentBook/rent", method = RequestMethod.GET)
	public String rentGet() {
		logger.info("RentBook page");
		
		return "adminLibrary/adminBook/rentBook/rent";
	}

	@RequestMapping(value = "adminLibrary/adminBook/rentBook/rent", method = RequestMethod.POST)
	public String rentPost(Model model, Rent_BookVO vo, RedirectAttributes rttr) {
		logger.info("RentBook userInfo search");
		if (vo.getBno() == null) {
			if (service.selectMember(vo) == 0) { // 입력한 ID가 없거나 잘못입력을 눌렀을때 0
				rttr.addFlashAttribute("msg", "NOID");
				return "redirect:/adminLibrary/adminBook/rentBook/rent";
			} else {
				if (service.checkLateUser(vo) == 0) { // 연체테이블에서 연체내역이 있는 사용자인지
														// 판별
														// 0이면 연체내역이 없음
					model.addAttribute("check_late", service.checkLateUser(vo));
					model.addAttribute("userInfo", service.userInfo(vo));
					model.addAttribute("rent", service.currentRent(vo));
					model.addAttribute("rcnt", service.rentCnt(vo));
					return "adminLibrary/adminBook/rentBook/rent";
				} else {
					// 연체 정보를 넘겨야함.
					model.addAttribute("check_late", service.checkLateUser(vo));
					model.addAttribute("msg", "LATE");
					model.addAttribute("userInfo", service.userInfo(vo));
					model.addAttribute("rent", service.currentRent(vo));
					model.addAttribute("rcnt", service.rentCnt(vo));
					return "adminLibrary/adminBook/rentBook/rent";
				}
			}
		} else {
			model.addAttribute("userInfo", service.userInfo(vo));
			model.addAttribute("rent", service.currentRent(vo));
			model.addAttribute("rcnt", service.rentCnt(vo));
			if (service.selectBook(vo) == 0) { // 입력한 책번호가 없거나 잘못 입력을 눌렀을때 0
				model.addAttribute("msg", "NOBOOK");
				return "adminLibrary/adminBook/rentBook/rent";
			} else {
				service.rentBook(vo);
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/rent";
			}
		}
	}

	@RequestMapping(value = "adminLibrary/adminBook/rentBook/submit", method = RequestMethod.GET)
	public String submitGet() {
		logger.info("SubmitBook page");
		return "adminLibrary/adminBook/rentBook/submit";
	}

	@RequestMapping(value = "adminLibrary/adminBook/rentBook/submit", method = RequestMethod.POST)
	public String submitPost(@RequestParam("select") String select, Model model, Rent_BookVO vo,
			RedirectAttributes rttr) {
		logger.info("SubmitBook page");
		// 주석
		if (select.equals("null")) {
			if (service.selectBook2(vo) == 0) { // 입력한 책이 대출중이 아닐경우 0
				model.addAttribute("msg", "NOBOOK");
				return "adminLibrary/adminBook/rentBook/submit";
			} else {
				vo.setId(service.searchID(vo));
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/submit";
			}
		} else {
			vo.setBno(select);
			vo.setId(service.searchID(vo));
			if (service.checkLateBook(vo)) {
				model.addAttribute("money", service.selectMoney(vo));
				model.addAttribute("msg", "LATEBOOK");
				service.submitLateBook(vo);
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/submit";
			} else {
				model.addAttribute("msg", "SUBMIT");
				service.submitBook(vo);
				model.addAttribute("userInfo", service.userInfo(vo));
				model.addAttribute("rent", service.currentRent(vo));
				model.addAttribute("rcnt", service.rentCnt(vo));
				return "adminLibrary/adminBook/rentBook/submit";
			}
		}
	}

////////////////////////////////////////////////////////////////////////	
	
	//상세보기
	@RequestMapping(value = "adminLibrary/adminBook/**/readInfo", method = RequestMethod.GET)
	public void readInfo(Model model, @RequestParam("bNo") String bNo) throws Exception {
		logger.info("search result!  page !");
		model.addAttribute("read",searchService.readInfo(bNo));
	}

	//비치도서 목록보기.
	@RequestMapping(value = "adminLibrary/adminBook/room_b/b_list", method = RequestMethod.GET)
	public String b_listGet(Model model, BookVO vo) {
		logger.info("selectBookList page");
		model.addAttribute("list",service.selectBookList(vo));
		
		PageMaker_rep pageMaker = new PageMaker_rep();
		pageMaker.setPageInfo(vo);
		
		pageMaker.setTotalCount(service.countBookList(vo));
		model.addAttribute("pageMaker", pageMaker);

		return "adminLibrary/adminBook/room_b/b_list";
	}
	
	//폐기도서 목록보기.
	@RequestMapping(value = "adminLibrary/adminBook/warehouse/w_list", method = RequestMethod.GET)
	public String w_listGet(Model model, BookVO vo) {
		logger.info("selectBookList page");
		model.addAttribute("list",service.selectBookList2(vo));
		
		PageMaker_rep pageMaker = new PageMaker_rep();
		pageMaker.setPageInfo(vo);
		
		pageMaker.setTotalCount(service.countBookList2(vo));
		model.addAttribute("pageMaker", pageMaker);

		return "adminLibrary/adminBook/warehouse/w_list";
	}
	
	//폐기도서 등록.
	@RequestMapping(value = "adminLibrary/adminBook/reg_ware/index", method = RequestMethod.GET)
	public String reg_WGet(Model model, BookVO vo) {
		logger.info("selectBookList page");
		model.addAttribute("list",service.selectRegBookList(vo));
		
		PageMaker_rep pageMaker = new PageMaker_rep();
		pageMaker.setPageInfo(vo);
		
		pageMaker.setTotalCount(service.countRegBookList(vo));
		model.addAttribute("pageMaker", pageMaker);

		return "adminLibrary/adminBook/reg_ware/index";
	}
	
	//폐기도서 등록.
	@RequestMapping(value = "adminLibrary/adminBook/reg_ware/reg_ware", method = RequestMethod.GET)
	public String reg_WareGet(BookVO vo, RedirectAttributes rttr) {
		service.reg_ware(vo);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/adminLibrary/adminBook/reg_ware/index";    
	}
	
	//신규도서 등록.
	//페이지 불러오기
	@RequestMapping(value = "adminLibrary/adminBook/reg_new/index", method = RequestMethod.GET)
	public String reg_NewGet(Model model, BookVO vo) {
		logger.info("selectBookList page");
		return "adminLibrary/adminBook/reg_new/index";
	}
	//
	@RequestMapping(value = "adminLibrary/adminBook/reg_new/index", method = RequestMethod.POST)
	public String reg_NewPost(Model model, BookVO vo) {
		logger.info("selectBookList page");

		model.addAttribute("lastBook",service.selectLastBookList(vo));
		model.addAttribute("searchType",vo.getSearchType());
		model.addAttribute("value", vo.getValue());
		
		
		return "adminLibrary/adminBook/reg_new/registerSelect";
	}

	//신규도서 등록.
	@RequestMapping(value = "adminLibrary/adminBook/reg_new/register", method = RequestMethod.POST)
	public String registerPost(Model model, BookVO vo) {
		logger.info("registBook page");

		String select = vo.getSelect();
		String gan_M = vo.getGan_M();
		String gan_Y = vo.getGan_Y();
		
		vo=service.selectLastBookList(vo);
		
		vo.setSelect(select);
		vo.setGan_Y(gan_Y);
		vo.setGan_M(gan_M);
		CodeMaker codeMaker = new CodeMaker(vo);
		
		model.addAttribute("lastBook",vo);
		model.addAttribute("select",vo.getSelect());
		model.addAttribute("BNO", codeMaker.create());
		
		if(vo.getSelect().equals("A")){
			return "adminLibrary/adminBook/reg_new/registerFormA";
		}else if(vo.getSelect().equals("B")){
			return "adminLibrary/adminBook/reg_new/registerFormB";
		}
		else{
			return "adminLibrary/adminBook/reg_new/registerFormC";
		}
	}
	
	@RequestMapping(value = "adminLibrary/adminBook/reg_new/registBook", method = RequestMethod.POST)
	public String regBookPost(BookVO vo, RedirectAttributes rttr) throws Exception{
		logger.info("registBook excute page");
		
		// 선택해서 올린파일을 f로 지정함
		MultipartFile f = vo.getFile();
		// 저장될 파일 명을 bno.jpg로 바꿔줌
		String filename = vo.getbNo()+".jpg";
		uploadFile(filename, f.getBytes());
		// 바코드 생성, 저장
		barcode(vo.getbNo());
		
		service.insertBook(vo);
		rttr.addFlashAttribute("msg", "insertS");
		return "adminLibrary/adminBook/reg_new/readInfo&bNo="+vo.getbNo();
	}
	
	// 이미지 업로드용	
	private void uploadFile(String filename, byte[] fileData) throws Exception {
		File target = new File(bookImgPath, filename);
		FileCopyUtils.copy(fileData, target);
	}

	// 바코드 생성기
	private void barcode(String bno) throws Exception{
		String filename=bno+".png";
		Barcode barcode=BarcodeFactory.createCode128(bno);
		barcode.setLabel(bno);
		File target = new File(barcodeImgPath, filename);
		BarcodeImageHandler.savePNG(barcode, target);
	}
}
