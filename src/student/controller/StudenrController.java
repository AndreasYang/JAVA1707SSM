package student.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import student.dao.StudentDao;
import student.pojo.Banji;
import student.pojo.Student;
import student.vo.PageBean;
import stundent.service.IBanjiService;
import stundent.service.IStudentService;

@Controller
@RequestMapping(value="/student")
public class StudenrController {
    @Resource(name="studentService")
    private IStudentService studentService;
    @Resource(name="banjiService")
    private IBanjiService banjiService;
    
   /* //����ѧ����Ϣ
    @RequestMapping(value="/list")
    public String list(Model model) {
       List<Student> list = studentService.findAll();
       for (Student student : list) {
		System.out.println(student);
       }
       model.addAttribute("list", list);
      return "student_list";
    }*/
    
    //����idɾ��ѧ��
    @RequestMapping(value="/deleteStudent")
    public String deleteStudent(int id){
    	studentService.deleteStudentById(id);
    	return "redirect:/student/list.action";
    }
    
    //����id������Ҫ���µ�ѧ��
    @RequestMapping(value="/findStudentBuId")
    public String findStudentBuId(int id, Model model){
    	List<Student> list = studentService.findStudentBuId(id);
    	List<Banji> banjilist = banjiService.findAllBanji();
    	model.addAttribute("banjilist", banjilist);
    	model.addAttribute("list", list);
    	
    	return "student_update";
    }
    
    //����ѧ����Ϣ
    @RequestMapping(value="/updateStudent")
    public String updateStudent(Student student){
    	//System.out.println(student);
    	studentService.updateStudent(student);
    	return "redirect:/student/list.action";
    } 
    
    //���ѧ����Ϣ
    @RequestMapping(value="/addStudent")
    public String addStudent(Student student){
    	studentService.addStudent(student);
    	return "redirect:/student/list.action";
    }
    
    //������������ѧ����Ϣ
    @RequestMapping(value="/searchStudent")
    public String searchStudent(Student student, Model model){
		List<Student> list = studentService.searchStudent(student);
		for (Student student2 : list) {
			System.out.println(student2);
		}
		model.addAttribute("list", list);
		
    	return "student_search";
    }
    
    //ѧ����Ϣ��ҳ
    @RequestMapping(value="pageList")
    public String list(String pageIndex, String pageSize, Model model) {
       int pageIndexStr = 1;
       if(pageIndex != null && !pageIndex.equals("")){
    	   pageIndexStr = Integer.parseInt(pageIndex);
       }
       int pageSizeStr = 3;
		if (pageSize != null && !pageSize.equals("")) {
			pageSizeStr = Integer.parseInt(pageSize);
		}
		
		PageBean pageBean = studentService.getPageBean(pageIndexStr, pageSizeStr);
		model.addAttribute("pageBean", pageBean);
       return "student_list";
     }
    
    //�����ǿ���ҳ����ת
    @RequestMapping(value="/getAddStudentPage")
    public String getAddStudentPage(Model model){
    	List<Banji> banjilist = banjiService.findAllBanji();
    	model.addAttribute("banjilist", banjilist);
    	return "student_add";
    }
    
    @RequestMapping(value="/getSearchStudentPage")
    public String getSearchStudentPage(){
    	return "student_search";
    }
}
