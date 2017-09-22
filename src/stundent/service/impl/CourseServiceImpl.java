package stundent.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import student.dao.CourseDao;
import student.pojo.Course;
import stundent.service.ICourseService;

@Service("courseService")
public class CourseServiceImpl implements ICourseService{
	
	@Resource(name="courseDao")
	private CourseDao courseDao;

	@Override
	public List<Course> findAllCourse() {
		return courseDao.findAllCourse();
	}

	@Override
	public void addCourse(Course course) {
		courseDao.addCourse(course);
	}

	@Override
	public void deleteCourse(int id) {
		courseDao.deleteCourse(id);
	}

}
