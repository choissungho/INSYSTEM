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


import egovframework.example.sample.service.MainService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("mainservice")
public class MainServiceImpl implements MainService {
	
	@Autowired

	private MainMapper mainMapper;

	@Override
	public int idcheck(Map<String, Object> params) {
		
		int result =  mainMapper.idcheck(params);
		return result;
		
	}

	@Override
	public Map<String, Object> mainlogin(Map<String, Object> params) {
		
		return mainMapper.mainlogin(params);
		
	}

	@Override
	public void mainsignup(Map<String, Object> params) {
		
		mainMapper.mainsignup(params);
	}
	
	@Override
	public List<Map<String, Object>> memberoption(String code){
		return mainMapper.memberoption(code);
	}
	
	@Override
	public Integer admin_count(int params){
		return mainMapper.admin_count(params);
	}
	@Override
	public List<Map<String, Object>> admin_list(int params) {
		return mainMapper.admin_list(params);
	}
	
	@Override
	public Map<String, Object> admin_detail(int member) {
		return mainMapper.admin_detail(member);
	}
	
	@Override
	public void admin_modify(Map<String, Object> params) {
		
		mainMapper.admin_modify(params);
	}
	
}
