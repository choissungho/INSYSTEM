/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.sample.web;


import egovframework.example.sample.service.MemberService;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class MemberController {

	/** EgovSampleService */
	@Resource(name = "memberservice")
	private MemberService memberService;
	
//	@RequestMapping(value="/test.do")
//	public String test(ModelMap model, @RequestParam Map<String, Object> params){
//
//		int result = memberService.test(params);
//		System.out.println(result);
//		return "member/m_reg";
//	}
	@RequestMapping(value="/member/m_reg.do")
	public String member_reg(ModelMap model, @RequestParam Map<String, Object> params){
		System.out.println("뭐라도나와야지");
		System.out.println(params);
		
		memberService.member_reg(params);
		System.out.println("성공적가입");
		
		return "member/m_reg";
	}
	
//	@RequestMapping(value="/member/m_list.do")
//	public String member_list(ModelMap model, @RequestParam Map<String, Object> params){
//		System.out.println("멤버리스트.두");
//		
//		List<Map<String, Object>> listmember = memberService.member_list(params);
//		model.addAttribute("listmember", listmember);
//		System.out.println(model.get("listmember"));
//		
//		return "member/m_list";
//	}
	
	
	@RequestMapping(value="/member/m_list.do")
	public String member_board(ModelMap model, @RequestParam Integer p ,HttpSession session,HttpServletRequest request) {
		System.out.println("파람값 "+p);
		int start=0;int end=0;
		if(p%10==0) {
			start=(((p-1)/10)*10)+1;
			end=start+9;
		}
		else{
			start=((p/10)*10)+1;
			end=start+9;
		}
		System.out.println("시작 "+start + "끝 "+end);
	
		//총 게시글 수 -> 페이징 갯수 카운트 하는 로직
		int d_count = memberService.member_count(p);
		if(d_count%10==0)d_count=d_count/10;
		else d_count=((d_count/10)+1);
		session.setAttribute("f_end", d_count);
		session.setAttribute("start", start);
		session.setAttribute("end", end);
		session.setAttribute("index", p);
		System.out.println("마지막 인덱스값 "+ session.getAttribute("f_end"));
	
		//페이징 갯수 10개씩 나타내는 로직
//		if(d_count%10==0)d_count=d_count/10;
//		else d_count=((d_count/10)+1);
//		System.out.println("페 카운트 "+d_count);

		//해당 페이징 내에 게시글 10개씩 나타내는 로직
		int index = (p-1)*10;
		System.out.println("인덱스값 : "+index);
		
		List<Map<String, Object>> listmember = memberService.member_list(index);
		model.addAttribute("listmember", listmember);
		
		
		
//		List<Map<String, Object>> free_list2 = memberService.member_list(index);
//		session.setAttribute("freedata", free_list2);
		
		return "/member/m_list";
	}
	
}
