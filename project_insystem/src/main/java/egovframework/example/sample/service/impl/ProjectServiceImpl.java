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

import egovframework.example.sample.service.ProjectService;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("projectservice")
public class ProjectServiceImpl implements ProjectService {
	
	@Autowired
	private ProjectMapper projectMapper;
	@Override
	public int projectRegist(Map<String, Object> params) {
		
		return projectMapper.projectRegist(params);
	}
	
	

	@Override
	public List<Map<String, Object>> projectSearch(Map<String, Object> params) {
		
		return projectMapper.projectSearch(params);
	}



	@Override
	public List<Map<String, Object>> projectIng(Map<String, Object> params) {
		
		return projectMapper.projectIng(params);
	}



	@Override
	public List<Map<String, Object>> projectEnd(Map<String, Object> params) {

		return projectMapper.projectEnd(params);

	}



	@Override
	public Map<String, Object> projectDetail(Map<String, Object> params) {
		
		return projectMapper.projectDetail(params);
	}


	

	@Override
	public Map<String, Object> projectModfiy(Map<String, Object> params) {
		
		return projectMapper.projectModify(params);
	}



	@Override
	public Map<String, Object> projectModifygo(Map<String, Object> params) {
		
		return projectMapper.projectModifygo(params);
	}







	
}
