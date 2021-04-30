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
	

	@RequestMapping(value="/member/m_reg.do")
	public String member_reg(ModelMap model, @RequestParam Map<String, Object> params){
		System.out.println("가입 컨트롤러");
		System.out.println(params);
		
		memberService.member_reg(params);
		System.out.println("성공적가입");
		
		return "member/m_reg";
	}

	
	@RequestMapping(value="/member/m_detail.do")
	public String member_detail(ModelMap model, @RequestParam Integer member ,HttpSession session,HttpServletRequest request) {
		System.out.println("개발자 상세");
		Map<String, Object> detailmember = memberService.member_detail(member);
		System.out.println(detailmember);
		model.addAttribute("memberdetail", detailmember);
		
		return "/member/m_detail";
	}
	
	@RequestMapping(value="/member/m_modify.do")
	public String member_modify(ModelMap model, @RequestParam Integer member ,HttpSession session,HttpServletRequest request) {
		System.out.println("개발자 수정");
		System.out.println(member);
		Map<String, Object> detailmember = memberService.member_detail(member);
		System.out.println(detailmember);
		model.addAttribute("memberdetail", detailmember);
//		memberService.member_modify(params);
//		System.out.println(params.get("dvlprNo"));
//		int member = Integer.parseInt(params.get("dvlprNo").toString());
//		Map<String, Object> detailmember = memberService.member_detail(member);
//		model.addAttribute("memberdetail", detailmember);
		return "/member/m_modify";
	}
	
	@RequestMapping(value="/member/m_modify2.do")
	public String member_modify2(ModelMap model, @RequestParam Map<String, Object> params ,HttpSession session,HttpServletRequest request) {
		System.out.println("개발자 수정버튼눌렀을때");
		System.out.println(params);
		System.out.println(params.get("cosa_yn"));
		System.out.println(params.get("rgllbr_yn"));
		if(params.get("cosa_yn")==null){
			params.put("cosa_yn", "N");
		}
		if(params.get("rgllbr_yn")==null){
			params.put("rgllbr_yn", "N");	
		}
		memberService.member_modify(params);
		int member = Integer.parseInt(params.get("dvlpr_no").toString());
		Map<String, Object> detailmember = memberService.member_detail(member);
		model.addAttribute("memberdetail", detailmember);

		
		return "/member/m_detail";
	}
	
	@RequestMapping(value="/member/m_delete.do")
	public String member_delete(ModelMap model, @RequestParam Integer member ,HttpSession session,HttpServletRequest request) {
		System.out.println("개발자 삭제");
		System.out.println(member);
		memberService.member_delete(member);
		return "redirect:/member/m_list.do?p=1";
	}
	
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








//@RequestMapping(value="/member/m_list.do")
//public String member_list(ModelMap model, @RequestParam Map<String, Object> params){
//	System.out.println("멤버리스트.두");
//	
//	List<Map<String, Object>> listmember = memberService.member_list(params);
//	model.addAttribute("listmember", listmember);
//	System.out.println(model.get("listmember"));
//	
//	return "member/m_list";
//}

//@RequestMapping(value="/test.do")
//public String test(ModelMap model, @RequestParam Map<String, Object> params){
//
//	int result = memberService.test(params);
//	System.out.println(result);
//	return "member/m_reg";
//}	
