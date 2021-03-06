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
package egovframework.example.sample.service.impl;
import java.util.List;
import java.util.Map;

import egovframework.example.sample.service.MemberService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberservice")
public class MemberServiceImpl implements MemberService {
	
	@Autowired

	private MemberMapper memberMapper;
	
	@Override
	public Integer member_count(int params){
		return memberMapper.member_count(params);
	}

	
	@Override
	public void member_reg(Map<String, Object> params) {
		
		memberMapper.member_reg(params);
	}
	
	@Override
	public List<Map<String, Object>> member_list(int params) {
		return memberMapper.member_list(params);
	}
	
	@Override
	public Map<String, Object> member_detail(int member) {
		return memberMapper.member_detail(member);
	}
	
	@Override
	public void member_modify(Map<String, Object> params) {
		
		memberMapper.member_modify(params);
	}
	
	@Override
	public void member_delete(int member){

		memberMapper.member_delete(member);
	}
}
