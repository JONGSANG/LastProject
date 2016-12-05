package com.kosta.controller;

import java.util.Calendar;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kosta.service.AdminServiceService;
import com.kosta.vo.AfterVO;
import com.kosta.vo.CultureVO;
import com.kosta.vo.DeliveryVO;
import com.kosta.vo.L_AfterVO;
import com.kosta.vo.L_CultureVO;
import com.kosta.vo.PageInfo;
import com.kosta.vo.PageMaker;
import com.kosta.vo.SchadulVO;

@Controller
public class AdminServiceController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminServiceController.class);
	
	@Autowired
	AdminServiceService adminServiceService;
	
	@RequestMapping(value="adminLibrary/adminService/a_list", method=RequestMethod.GET)
	public String afterListGET(PageInfo page, Model model) throws Exception {
		
		logger.info("방과후학교 페이지");
		
		model.addAttribute("after", adminServiceService.afterList(page));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageInfo(page);
	    pageMaker.setTotalCount(adminServiceService.afterCount());
	    
	    model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminService/a_list";
	}
	
	@RequestMapping(value="adminLibrary/adminService/a_detail", method=RequestMethod.GET)
	public String afterDetailGET(AfterVO vo, Model model) throws Exception {
		
		logger.info("방과후학교(상세보기) 페이지");
		
		model.addAttribute("detail", adminServiceService.afterDetail(vo));
		model.addAttribute("list", adminServiceService.afterID(vo));
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageInfo(vo);
		pageMaker.setTotalCount(adminServiceService.afterDetailCount(vo));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminService/a_detail";
	}
	
	@RequestMapping(value="adminLibrary/adminService/a_change", method=RequestMethod.GET)
	public String afterChange(AfterVO countCheck, L_AfterVO vo, RedirectAttributes rttr) throws Exception {
		
		logger.info("방과후학교(상세보기) 유저 권한변경");
		
		if(countCheck.getMax_cnt()<=countCheck.getTocnt()&&vo.getState()==1){
			rttr.addFlashAttribute("maxcount", "full");
			return "redirect:/adminLibrary/adminService/a_detail?num="+vo.getAnum();
		}
		
		adminServiceService.afterChange(vo);
		
		return "redirect:/adminLibrary/adminService/a_detail?num="+vo.getAnum();
	}
	
	
	@RequestMapping(value="adminLibrary/adminService/c_list", method=RequestMethod.GET)
	public String cultureListGET(PageInfo page, Model model) throws Exception {
		
		logger.info("문화행사 페이지");
		
		model.addAttribute("culture", adminServiceService.cultureList(page));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageInfo(page);
	    pageMaker.setTotalCount(adminServiceService.cultureCount());
	    
	    model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminService/c_list";
	}
	
	@RequestMapping(value="adminLibrary/adminService/c_detail", method=RequestMethod.GET)
	public String cultureDetailGET(CultureVO vo, Model model) throws Exception {
		
		logger.info("문화행사(상세보기) 페이지");
		
		model.addAttribute("detail", adminServiceService.cultureDetail(vo));
		model.addAttribute("list", adminServiceService.cultureID(vo));
		
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageInfo(vo);
		pageMaker.setTotalCount(adminServiceService.cultureDetailCount(vo));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminService/c_detail";
	}
	
	@RequestMapping(value="adminLibrary/adminService/c_change", method=RequestMethod.GET)
	public String cultureChange(CultureVO countCheck, L_CultureVO vo, RedirectAttributes rttr) throws Exception {
		
		logger.info("문화행사(상세보기) 유저 권한변경");
		
		if(countCheck.getMax_cnt()<=countCheck.getTocnt()&&vo.getState()==1){
			rttr.addFlashAttribute("maxcount", "full");
			return "redirect:/adminLibrary/adminService/c_detail?num="+vo.getAnum();
		}
		
		adminServiceService.cultureChange(vo);
		
		return "redirect:/adminLibrary/adminService/c_detail?num="+vo.getAnum();
	}
	
	@RequestMapping(value="adminLibrary/adminService/calendar", method=RequestMethod.GET)
	public String calendarGET(Model model) throws Exception {
		Calendar date =Calendar.getInstance();
		model.addAttribute("nowyear", date.get(Calendar.YEAR));
		model.addAttribute("nowmonth", date.get(Calendar.MONTH));
		
		model.addAttribute("list", adminServiceService.schadule_list());
		
		logger.info("관리자 스케쥴");
		
		
		return "adminLibrary/adminService/calendar";
		
	}
	
	@RequestMapping(value="adminLibrary/adminService/calendar", method=RequestMethod.POST)
	public String calendarPost(SchadulVO vo ,RedirectAttributes rttr) throws Exception {
		
		adminServiceService.schedule_insert(vo);
		
		logger.info("관리자 스케쥴");
		
		
		return "redirect:/adminLibrary/adminService/calendar";
		
	}
	@RequestMapping(value="adminLibrary/adminService/calendar/delete", method=RequestMethod.POST)
	public String calendardelete(@RequestParam("date")String date, RedirectAttributes rttr, SchadulVO vo) throws Exception {
		
		System.out.println("뭐가 올까요" + date);
		
		logger.info("관리자 스케쥴");
		String year = date.substring(0, 4);
		String month = date.substring(5, 7);
		String day = date.substring(8);
		
		if (day.substring(0, 1).equals("0")) {
			day = day.substring(1);
		}
		vo.setDay(day); vo.setMonth(month); vo.setYear(year);
		
		adminServiceService.schedule_delete(vo);
		
		return "redirect:/adminLibrary/adminService/calendar";
		
	}
	
	@RequestMapping(value="adminLibrary/adminService/delivery", method=RequestMethod.GET)
	public String deliveryGET(Model model, PageInfo page) throws Exception {
		
		logger.info("관리자 도서배달서비스");
		
		model.addAttribute("delivery", adminServiceService.deliveryList());
		model.addAttribute("deliverySuccesss", adminServiceService.deliverySuccesss(page));
		PageMaker pageMaker=new PageMaker();
		pageMaker.setPageInfo(page);
	    pageMaker.setTotalCount(adminServiceService.deliveryCount(page));
	    model.addAttribute("pageMaker", pageMaker);
		
		return "adminLibrary/adminService/delivery";
	}
	
	@RequestMapping(value="adminLibrary/adminService/code", method=RequestMethod.GET)
	public String codeGET(DeliveryVO vo, Model model) throws Exception {
		
		adminServiceService.code(vo);
		
		return "redirect:/adminLibrary/adminService/delivery";
	}
}
