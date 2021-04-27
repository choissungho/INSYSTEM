package egovframework.example.sample.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("memberMapper")
public interface MemberMapper {
	
	public Integer member_count(int params);
	
	public void member_reg(Map<String, Object> params);
	
	public List<Map<String, Object>> member_list(int params);

}
 