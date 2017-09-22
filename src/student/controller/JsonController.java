package student.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import student.pojo.Student;
import stundent.service.IStudentService;

@Controller
public class JsonController {
	 @Resource(name="studentService")
	 private IStudentService studentService;
	 
	 @RequestMapping(value="/stu", method = RequestMethod.GET)
	 public @ResponseBody List<Student> list(Student student){
		 List<Student> list = studentService.findAll();
		 return list;
	 }
	 
	 @RequestMapping(value="/stu/{id}", method = RequestMethod.GET)
	 public @ResponseBody Student student(@PathVariable("id")Integer id){
		 List<Student> list = studentService.findStudentBuId(id);
		 return (Student) list;
	 }
}
