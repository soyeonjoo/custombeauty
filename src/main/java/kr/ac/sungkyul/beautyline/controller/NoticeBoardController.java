package kr.ac.sungkyul.beautyline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/noticeboard")
public class NoticeBoardController {
	
	@RequestMapping("/board")
	public String list(){
		return"board/board";
	}
	
	
	@RequestMapping("/write")
	public String write(){
		return"board/noticewrite";
	}


}
