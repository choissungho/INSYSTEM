package egovframework.example.sample.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("projectMapper")
public interface ProjectMapper {
	
	public List<Map<String, Object>> projectSearch(Map<String, Object> param);

}
 