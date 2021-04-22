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


import egovframework.example.sample.service.MainService;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class MainController {

	/** EgovSampleService */
	@Resource(name = "mainservice")
	private MainService mainService;
	
	@RequestMapping(value="/login.do")
	public String loginPage(ModelMap model, @RequestParam Map<String, Object> params, HttpSession session) {
		return "sample/login";
		
/*		if(session.getAttribute("loginId") != null) {
			return "forward:./test1.do";
		}
		return "./login";*/
	}
	
	@RequestMapping(value="/testtest.do")
	public String testPage(ModelMap model, @RequestParam Map<String, Object> params, HttpSession session) {
		System.out.println("테스트.두");
		return "common/sidebar";
	}
	@RequestMapping(value="/test.do")
	public String testPage2(ModelMap model, @RequestParam Map<String, Object> params, HttpSession session) {
		System.out.println("테스트.두");
		return "common/sidebar";
	}
	
	@RequestMapping(value="/logingo.do")
	public String logingoPage(ModelMap model, @RequestParam Map<String, Object> params,HttpSession session) {
		Map<String, Object> userinfo = mainService.mainlogin(params);

		if(userinfo == null) {
			model.addAttribute("userinfo",null);
			session.setAttribute("loginId","false");
			return "sample/login";
		}

		else {
			model.addAttribute("userinfo",userinfo);
			session.setAttribute("loginId",userinfo);
			return "sample/test1";
		}
	}
	

	
	@RequestMapping(value="signup.do")
	public String signupPage(ModelMap model, @RequestParam Map<String, Object> params){
		
		int result = mainService.idcheck(params);
		
		try{
			if(result ==1){
				return "login";
			}else if(result == 0){
				mainService.mainsignup(params);
			}
		}catch(Exception e){
			throw new RuntimeException();
		}
		return "login";
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="/idcheck")
	public int idcheck(ModelMap model, @RequestParam Map<String, Object> params) {
		
		int result = mainService.idcheck(params);
		return result;
	}
	
	
	
}
