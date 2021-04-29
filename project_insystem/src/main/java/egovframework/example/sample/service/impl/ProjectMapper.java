package egovframework.example.sample.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("projectMapper")
public interface ProjectMapper {
	
	public int projectRegist(Map<String, Object> param);
	
	public List<Map<String, Object>> projectSearch(Map<String, Object> param);

	public List<Map<String, Object>> projectIng(Map<String, Object> param);

	public List<Map<String, Object>> projectEnd(Map<String, Object> params);

	public Map<String, Object> projectDetail(Map<String, Object> params);

	public Map<String, Object> projectModify(Map<String, Object> params);

	public Map<String, Object> projectModifygo(Map<String, Object> params);

	

}
 