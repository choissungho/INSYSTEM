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

import java.util.Map;

import javax.annotation.Resource;
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
	
	@RequestMapping(value="/test.do")
	public String test(ModelMap model, @RequestParam Map<String, Object> params){

		int result = memberService.test(params);
		System.out.println(result);
		return "member/m_reg";
		
	}
	@RequestMapping(value="/member/m_reg.do")
	public String member_reg(ModelMap model, @RequestParam Map<String, Object> params){
		System.out.println("뭐라도나와야지");
		System.out.println(params);
		
		memberService.member_reg(params);
		System.out.println("성공적가입");
//		int result = memberService.test(params);
//		System.out.println(result);
		return "member/m_reg";
		
	}
}
