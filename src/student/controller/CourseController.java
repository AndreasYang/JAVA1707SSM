package student.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import student.pojo.Course;
import stundent.service.ICourseService;

@Controller
@RequestMapping(value="/course")
public class CourseController {
	
	@Resource(name="courseService")
	private ICourseService courseService;
	
	//所有课程信息
	@RequestMapping(value="/courselist")
	public String courseList(Model model){
		List<Course> courselist = courseService.findAllCourse();
		model.addAttribute("courselist", courselist);
		return "course_list";
	}
	
	//添加课程
	@RequestMapping(value="/addCourse")
	public String addCourse(Course course){
		courseService.addCourse(course);
		return "redirect:/course/courselist.action";
	}
	
	//删除课程
	@RequestMapping(value="/deleteCourse")
	public String deleteCourse(int id){
		courseService.deleteCourse(id);
		return "redirect:/course/courselist.action";
	}
	
	
	//以下是控制页面跳转
	@RequestMapping(value="/getAddCoursePage")
	public String getAddCoursse(){
		return "course_add";
	}
}
