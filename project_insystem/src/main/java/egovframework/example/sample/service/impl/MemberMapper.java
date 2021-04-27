package egovframework.example.sample.service.impl;

import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("memberMapper")
public interface MemberMapper {
	
	public int test(Map<String, Object> params);
	
	public void member_reg(Map<String, Object> params);

}
 