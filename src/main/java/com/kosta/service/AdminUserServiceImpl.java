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
		String eMail, name;
		String bookTitle="";
		
		for(int i=0; i<lateUser.size(); i++){
			System.out.println("연체유저 아이디 찍어봄");
			List<String> bTitle=adminUserdao.lateBook(lateUser.get(i));
			System.out.println("연체유저 책정보 찍어봄(list라 아마 안될거임"+bTitle);
			eMail=adminUserdao.getEmail(lateUser.get(i));
			System.out.println("연체유저 아이디에 해당하는 이메일"+eMail);
			name=adminUserdao.getName(lateUser.get(i));
			System.out.println("연체유저 아이디에 해당하는 이름"+name);
			
			for(int j=0; j<bTitle.size(); j++){
				bookTitle+=bTitle.get(j)+"\n";
			}
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			
			//받는사람
			messageHelper.setTo(eMail);
			//메일제목, 생략도 가능하긴 함
			messageHelper.setSubject(name+"님 KOSTA도서관에 연체중인 도서가 있습니다");
			//본문
			messageHelper.setText(name+"님 안녕하세요? KOSTA도서관입니다\n현재 "+name+"님께서는\n"+bookTitle+"의 책을 연체중이십니다\n"
					+ "장기 연체시 각종 불이익이 있을 수 있습니다\n빠른 시일내에 도서반납을 부탁드립니다");
			
			//위의 설정값을 이용하여 메일발송
			mailSender.send(message);
			bookTitle="";
		}
	}

}
