package egovframework.example.sample.service.impl;

import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("mainMapper")
public interface MainMapper {
	public int idcheck(Map<String, Object> params);

	public Map<String, Object> mainlogin(Map<String, Object> params);
}
 