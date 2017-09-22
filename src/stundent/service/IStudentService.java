package stundent.service;

import java.util.List;

import student.pojo.Student;
import student.vo.PageBean;

public interface IStudentService {
	public List<Student> findAll();

	public void deleteStudentById(int id);

	public List<Student> findStudentBuId(int id);

	public void updateStudent(Student student);

	public void addStudent(Student student);

	public List<Student> searchStudent(Student student);

	public PageBean getPageBean(int pageIndexStr, int pageSizeStr);

}
