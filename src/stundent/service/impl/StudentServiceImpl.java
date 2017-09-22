package stundent.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import student.dao.StudentDao;
import student.pojo.Student;
import student.vo.PageBean;
import stundent.service.IStudentService;

@Service("studentService")
public class StudentServiceImpl implements IStudentService{

	@Resource(name="studentDao")
    private StudentDao studentDao;
    
	public List<Student> findAll() {
       return studentDao.findAll();
    }
	
	public void deleteStudentById(int id) {
		studentDao.deleteStudentById(id);
		
	}

	@Override
	public List<Student> findStudentBuId(int id) {
		return studentDao.findStudentBuId(id);
	}

	@Override
	public void updateStudent(Student student) {
		studentDao.updateStudent(student);
	}

	@Override
	public void addStudent(Student student) {
		studentDao.addStudent(student);
	}

	@Override
	public List<Student> searchStudent(Student student) {
		return studentDao.searchStudent(student);
	}

	@Override
	public PageBean getPageBean(int pageIndexStr, int pageSizeStr) {
		PageBean pageBean = new PageBean();
		
		pageBean.setPageIndex(pageIndexStr);
		pageBean.setPageSize(pageSizeStr);
		int totalCount = studentDao.getToutalCount();
		pageBean.setTotalCount(totalCount);
		int totalPage = (int) Math.ceil((double) totalCount / pageSizeStr);
		pageBean.setTotalPage(totalPage);
		int index = (pageIndexStr-1)*pageSizeStr;
		List<Student> list = studentDao.findPageBeanList(index, pageSizeStr);
		pageBean.setStudentlist(list);
		
		
		return pageBean;
	}
}
