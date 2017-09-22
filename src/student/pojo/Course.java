package student.pojo;

import java.util.List;

public class Course {
	private Integer id;
	private String coursename;
	private Integer points;
	private List<Banji> banjilist;
	
	public Course() {
		super();
	}

	public Course(Integer id, String coursename, Integer points, List<Banji> banjilist) {
		super();
		this.id = id;
		this.coursename = coursename;
		this.points = points;
		this.banjilist = banjilist;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public Integer getPoints() {
		return points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}

	public List<Banji> getBanjilist() {
		return banjilist;
	}

	public void setBanjilist(List<Banji> banjilist) {
		this.banjilist = banjilist;
	}

	@Override
	public String toString() {
		return "Course [id=" + id + ", coursename=" + coursename + ", points=" + points + ", banjilist=" + banjilist
				+ "]";
	}
	
	

}
