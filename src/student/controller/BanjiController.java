package student.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import student.pojo.Banji;
import student.pojo.BanjiCourse;
import student.pojo.Course;
import stundent.service.IBanjiService;
import stundent.service.ICourseService;

@Controller
@RequestMapping(value="/banji")
public class BanjiController {
 
	@Resource(name="banjiService")
	private IBanjiService banjiService;
	@Resource(name="courseService")
	private ICourseService courseService;
	
	//所有班级
	@RequestMapping(value="/banjilist")
	public String banjiList(Model model){
		List<Banji> banjilist = banjiService.findAllBanji();
		model.addAttribute("banjilist", banjilist);
		return "banji_list";
	} 
	
	//删除班级
	@RequestMapping(value="/deleteBanji")
	public String deleteBanji(int id){
		banjiService.deleteBanji(id);
		return "redirect:/banji/banjilist.action";
	}
	
	//添加班级
	@RequestMapping(value="/addBanji")
	public String addBanji(Banji banji){
		banjiService.addBanji(banji);
		return "redirect:/banji/banjilist.action";
	}
	
	//所有班级课程信息
	@RequestMapping(value="/banjicourselist")
	public String banjiCoursesList(Model model){
		List<BanjiCourse> banjicoursselist = banjiService.findAllBanjiCourse();
		for (BanjiCourse banjiCourse : banjicoursselist) {
			System.out.println(banjiCourse);
		}
		model.addAttribute("banjicoursselist", banjicoursselist);
		return "banji_course_list";
	}
	
	//删除班级课程
	@RequestMapping(value="deleteBanjiCourse")
	public String deleteBanjiCourse(int id){
		banjiService.deleteBanjiCourse(id);
		return "redirect:/banji/banjicourselist.action";
	}
	
	//添加班级课程信息
	@RequestMapping(value="addbanjicourse")
	public String addbanjicourse(int banjiId, int courseId){
		banjiService.addBanjiCourse(banjiId, courseId);
		return "redirect:/banji/banjicourselist.action";
	}
	
	//以下是控制页面跳转
	@RequestMapping(value="/getAddBanjiPage")
	public String getAddBanjiPage(){
		return "banji_add";
	}
	
	@RequestMapping(value="/getAddBanjiCoursePage")
	public String getAddBanjiCoursePage(Model model){
		List<Banji> banjilist = banjiService.findAllBanji();
		List<Course> courselist = courseService.findAllCourse();
		model.addAttribute("banjilist", banjilist);
		model.addAttribute("courselist", courselist);
		return "banji_course_add";
	}
	
	
}
