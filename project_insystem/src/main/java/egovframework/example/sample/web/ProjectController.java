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
	
	
	
	
	@RequestMapping(value="/project/p_reg.do")
	public String projectRegistTable(@RequestParam Map<String, Object> param) {
		int result = projectService.projectRegist(param);
		return "forward:/project/search.do";
		
	}
	
	
	@RequestMapping(value="/project/search.do")
	public String projectSearchTable(@RequestParam Map<String, Object> param, ModelMap model) {
		System.out.println("서치1두");
		
		List<Map<String, Object>> result = projectService.projectSearch(param);
		
		model.addAttribute("params", param);
		model.addAttribute("result", result);
		System.out.println(result);
		
		return "project/p_search";
	}
	
	@RequestMapping(value="/project/ing.do")
	public String projectIngTable(@RequestParam Map<String, Object> param, ModelMap model) {
		System.out.println("서치2두");
		
		List<Map<String, Object>> result = projectService.projectIng(param);
		
		model.addAttribute("params", param);
		model.addAttribute("result", result);
		System.out.println(result);
		
		return "project/p_ing";
	}
	
	
	@RequestMapping(value="/project/end.do")
	public String projectEndTable(@RequestParam Map<String, Object> param, ModelMap model) {
		System.out.println("서치3두");
		
		List<Map<String, Object>> result = projectService.projectEnd(param);
		
		model.addAttribute("params", param);
		model.addAttribute("result", result);
		System.out.println(result);
		
		return "/project/p_end";
	}
	
	@RequestMapping(value="/project/detail.do")
	public String projectDetailTable(@RequestParam Map<String, Object> param, ModelMap model){
		
		Map<String, Object> result = projectService.projectDetail(param);
		
		model.addAttribute("params", param);
		model.addAttribute("result", result);
		System.out.println(model.get("result"));
		return "project/p_detail";
		
	}
	
	
	@RequestMapping(value="/project/modifygo.do")
	public String projectModifygoTable(@RequestParam Map<String, Object> param, ModelMap model){
		System.out.println("파람값 확인 "+param);
		Map<String, Object> result = projectService.projectModifygo(param);
		
		model.addAttribute("params", param);
		model.addAttribute("result", result);
		System.out.println(model.get("result"));
		return "project/p_modify";
	}
	
	
	
	

}
