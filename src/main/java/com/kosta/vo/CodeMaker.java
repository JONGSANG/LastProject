package com.kosta.vo;

public class CodeMaker {

	private BookVO vo;
	private String code;
	private String bno;

	public CodeMaker(BookVO vo) {
		this.vo = vo;
	}
	
	public String create(){
		bno=vo.getbNo();
		if(vo.getSelect().equals("A")){	//select : A ==> 다른 종류의 책을 신규로 등록 
			model.addAttribute("BNO", (((Integer.parseInt(vo2.getbNo())/10)+1)*10)+1);
		}else if(vo.getSelect().equals("B")){	//select : B ==> 같은 종류의 책을 추가로 등록 
			
		}else if(vo.getSelect().equals("C")){	//select : C ==>(연속간행물) 다른 종류의 책을 신규로 등록  
			
		}else if(vo.getSelect().equals("D")){	//select : D ==>(연속간행물) 같은 종류의 책을 추가로 등록  
			
		}
		
		return code;
	}
	
}
