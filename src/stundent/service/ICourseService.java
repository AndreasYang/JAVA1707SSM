package stundent.service;

import java.util.List;

import student.pojo.Course;

public interface ICourseService {

	List<Course> findAllCourse();

	void addCourse(Course course);

	void deleteCourse(int id);

}
