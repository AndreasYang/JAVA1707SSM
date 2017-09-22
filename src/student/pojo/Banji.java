package student.pojo;

import java.util.List;

public class Banji {
	private Integer id;
	private String classname;
	private List<Student> studentlist;
	private List<Course> courselist;
	
	public Banji() {
		super();
	}

	public Banji(Integer id, String classname, List<Student> studentlist, List<Course> courselist) {
		super();
		this.id = id;
		this.classname = classname;
		this.studentlist = studentlist;
		this.courselist = courselist;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public List<Student> getStudentlist() {
		return studentlist;
	}

	public void setStudentlist(List<Student> studentlist) {
		this.studentlist = studentlist;
	}

	public List<Course> getCourselist() {
		return courselist;
	}

	public void setCourselist(List<Course> courselist) {
		this.courselist = courselist;
	}

	@Override
	public String toString() {
		return "Banji [id=" + id + ", classname=" + classname + ", studentlist=" + studentlist + ", courselist="
				+ courselist + "]";
	}
	
	

}
