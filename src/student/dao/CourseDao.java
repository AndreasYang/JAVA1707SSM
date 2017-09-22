package student.dao;

import java.util.List;

import student.pojo.Course;

public interface CourseDao {

	List<Course> findAllCourse();

	void addCourse(Course course);

	void deleteCourse(int id);

}
