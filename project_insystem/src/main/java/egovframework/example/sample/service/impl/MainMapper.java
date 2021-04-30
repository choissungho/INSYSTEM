package egovframework.example.sample.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("mainMapper")
public interface MainMapper {

	public Map<String, Object> mainlogin(Map<String, Object> params);

	public void mainsignup(Map<String, Object> params);
	
	public int idcheck(Map<String, Object> params);
	
	public List<Map<String, Object>> memberoption(String code);
	
	public Integer admin_count(int params);
	
	public List<Map<String, Object>> admin_list(int params);
		
	public Map<String, Object> admin_detail(int member);
		
	public void admin_modify(Map<String, Object> params);
}
 