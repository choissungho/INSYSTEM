package egovframework.example.sample.web;

import egovframework.example.sample.service.ProjectService;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ProjectController {

	/** EgovSampleService */
	@Resource(name = "projectservice")
	private ProjectService projectService;
	
	
	
	
	
	
	
	@RequestMapping(value="/project/search1.do")
	public String projectSearchTable(@RequestParam Map<String, Object> param, ModelMap model) {
		System.out.println("서치1두");
		
		List<Map<String, Object>> result = projectService.projectSearch(param);
		
		model.addAttribute("params", param);
		model.addAttribute("result", result);
		System.out.println(result);
		
		return "project/p_search";
	}
	
	

}
