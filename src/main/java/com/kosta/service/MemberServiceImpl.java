package com.kosta.service;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kosta.dao.MemberDAO;
import com.kosta.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberdao;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public void memberJoin(MemberVO vo) throws Exception {
		vo.setPwd(passwordEncoder.encode(vo.getPwd()));
		memberdao.memberJoin(vo);
	}

	@Override
	public MemberVO findId(MemberVO vo) throws Exception {
		return memberdao.findId(vo);
	}

	@Override
	public void idEmail(MemberVO vo) throws Exception {

		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		//받는사람
		messageHelper.setTo(vo.getEmail());
		//메일제목, 생략도 가능하긴 함
		messageHelper.setSubject(vo.getName() + "님 KOSTA도서관에서 아이디 확인 이메일을 보내드립니다");
		//본문
		messageHelper.setText(vo.getName() + "님 안녕하세요. KOSTA도서관입니다\n"+
		"회원님의 아이디는 "+vo.getId()+"입니다. 개인정보를 분실하지 않도록 각별히 주의해주시기 바랍니다");

		//위의 설정값을 이용하여 메일발송
		mailSender.send(message);
	}

	@Override
	public MemberVO findPassword(MemberVO vo) throws Exception {
		return memberdao.findPassword(vo);
	}

	@Override
	@Transactional
	public void passwordEmail(MemberVO vo) throws Exception {
		//전달받은 매개변수(ID)가 기준이 되는 DB의 암호를 변경해야함
		//랜덤하게 8자리 암호를 생성함. math.random함수가 좋은 랜덤암호는 아니지만, SecureRandom이나 BigInteger를 이용하는건 봐도 잘 모르겠음
		Integer tempPwd=(int)(Math.random()*100000000+1);
		//생성한 암호를 기준으로 암호화
		String tempEncodingPwd=passwordEncoder.encode(tempPwd.toString());
		//암호화된 암호를 기준으로 DB의 PWD를 업데이트
		vo.setPwd(tempEncodingPwd);
		memberdao.passwordEmail(vo);
		
		//완료후 이메일 전송
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		//받는사람
		messageHelper.setTo(vo.getEmail());
		//메일제목, 생략도 가능하긴 함
		messageHelper.setSubject(vo.getName() + "님 KOSTA도서관에서 임시 비밀번호 이메일을 보내드립니다");
		//본문
		//이메일로 보낼 임시암호는 Bcrpyt로 암호화하기 전의tempPwd를 보내야한다
		messageHelper.setText(vo.getName() + "님 안녕하세요. KOSTA도서관입니다\n" + 
		"회원님의 임시 비밀번호는 "+tempPwd+"입니다. 개인정보를 분실하지 않도록 각별히 주의해주시기 바랍니다\n"+
		"임시 비밀번호를 발급받은 후 개인정보 수정을 통해 비밀번호를 꼭 변경해주시기 바랍니다");

		//위의 설정값을 이용하여 메일발송
		mailSender.send(message);
		
	}

	@Override
	public String idCheck(String checkid) throws Exception {
		return memberdao.idCheck(checkid);
	}
	
}
