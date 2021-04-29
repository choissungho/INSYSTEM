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
package egovframework.example.sample.service;

import java.util.List;
import java.util.Map;

public interface ProjectService {

	public int projectRegist(Map<String, Object> param);
	
	public List<Map<String, Object>> projectSearch(Map<String, Object> param);

	public List<Map<String, Object>> projectIng(Map<String, Object> param);

	public List<Map<String, Object>> projectEnd(Map<String, Object> param);

	public Map<String, Object> projectDetail(Map<String, Object> param);

	public Map<String, Object> projectModifygo(Map<String, Object> param);
	
	public Map<String, Object> projectModfiy(Map<String, Object> param);






}
