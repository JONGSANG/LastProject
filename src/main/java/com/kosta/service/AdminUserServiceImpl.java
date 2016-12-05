package com.kosta.service;

import java.util.ArrayList;
import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.kosta.dao.AdminUserDAO;
import com.kosta.vo.LateInfoVO;
import com.kosta.vo.LateVO;
import com.kosta.vo.MailVO;

@Service
public class AdminUserServiceImpl implements AdminUserService {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private AdminUserDAO adminUserdao;
	
	@Override
	public void memberMail(MailVO vo) throws Exception {
	List<String> eMail=new ArrayList<String>();
	eMail=adminUserdao.allMember();
	String[] eMailTo=new String[eMail.size()];
	
		for(int i=0; i<eMail.size(); i++){
			eMailTo[i]=eMail.get(i);
		}
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		//받는사람
		messageHelper.setTo(eMailTo);
		//메일제목, 생략도 가능하긴 함
		messageHelper.setSubject(vo.getSubject());
		//본문
		messageHelper.setText(vo.getText());
		
		//위의 설정값을 이용하여 메일발송
		mailSender.send(message);
		
	}

	@Override
	public void adminMail(MailVO vo) throws Exception {
		List<String> eMail=new ArrayList<String>();
		eMail=adminUserdao.allAdmin();
		String[] eMailTo=new String[eMail.size()];
		
			for(int i=0; i<eMail.size(); i++){
				eMailTo[i]=eMail.get(i);
			}
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			//받는사람
			messageHelper.setTo(eMailTo);
			//메일제목, 생략도 가능하긴 함
			messageHelper.setSubject(vo.getSubject());
			//본문
			messageHelper.setText(vo.getText());
			
			//위의 설정값을 이용하여 메일발송
			mailSender.send(message);
			
		}

	@Override
	public List<LateVO> selectLateUserList(LateVO vo) {
		return adminUserdao.selectLateUserList(vo);
	}

	@Override
	public int countLateUserList(LateVO vo) {
		return adminUserdao.countLateUserList(vo);
	}
	@Override
	public void lateUserMail(MailVO vo) throws Exception {
		List<String> eMail=new ArrayList<String>();
		eMail=adminUserdao.lateUser();
		String[] eMailTo=new String[eMail.size()];
		
			for(int i=0; i<eMail.size(); i++){
				eMailTo[i]=eMail.get(i);
			}
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			//받는사람
			messageHelper.setTo(eMailTo);
			//메일제목, 생략도 가능하긴 함
			messageHelper.setSubject(vo.getSubject());
			//본문
			messageHelper.setText(vo.getText());
			
			//위의 설정값을 이용하여 메일발송
			mailSender.send(message);
		
	}

	@Override
	public List<LateVO> selectLateCurUserList(LateVO vo) {
		return adminUserdao.selectLateCurUserList(vo);
	}

	@Override
	public int countLateCurUserList(LateVO vo) {
		return adminUserdao.countLateCurUserList(vo);
	}

	@Override
	public LateInfoVO lateInfo() {
		return adminUserdao.lateInfo();
	}

	@Override
	public LateInfoVO lateUserInfo() {
		return adminUserdao.lateUserInfo();
	}

	@Override
	public String cntLateUser() {
		return adminUserdao.cntLateUser();
	}

	@Override
	public void lateMatil() throws Exception {
		List<String> lateUser=adminUserdao.lateUser1();
		List<String> bTitle;
		
		for(int i=0; i<lateUser.size(); i++){
			bTitle=adminUserdao.lateBook(lateUser.get(i));
		}
	}

}
