package student.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import student.pojo.Student;

public interface StudentDao {

	public List<Student> findAll();

	public void deleteStudentById(int id);

	public List<Student> findStudentBuId(int id);

	public void updateStudent(Student student);

	public void addStudent(Student student);

	public List<Student> searchStudent(Student student);

	public int getToutalCount();

	public List<Student> findPageBeanList(@Param(value="index")int index, @Param(value="pageSizeStr")int pageSizeStr);
}
