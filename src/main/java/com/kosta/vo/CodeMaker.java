package com.kosta.vo;

public class CodeMaker {

	private BookVO vo;
	private String code;
	private String bno;
	private int temp;
	
	public CodeMaker(BookVO vo) {
		this.vo = vo;
	}
	
	public String create(){
		
		bno = vo.getbNo(); // 현재 마지막 책 번호를 받아옴
		
		if(vo.getSelect().equals("A")){	//select : A ==> 다른 종류의 책을 신규로 등록 
			temp=((((Integer.parseInt(bno)/10)+1)*10)+1); // Int 형태로 변환호 코드 계산 
			code=String.format("%08d",temp);
		}else if(vo.getSelect().equals("B")){	//select : B ==> 같은 종류의 책을 추가로 등록 
			temp=(Integer.parseInt(bno)+1); // Int 형태로 변환호 코드 계산 
			code=String.format("%08d",temp);
		}else if(vo.getSelect().equals("C")){	//select : C ==>(연속간행물) 등록  
			temp=((Integer.parseInt(bno)/10000)+1); // Int 형태로 변환호 코드 계산 
			code=String.format("%04d",temp);
			code=code.substring(0, 4)+vo.getGan_Y()+vo.getGan_M();
		}
		
		return code;
	}
	
}
