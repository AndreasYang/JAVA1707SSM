package student.pojo;

public class BanjiCourse {
	private Banji banji;
	private Course course;
	private Integer banjicourseId;
	public BanjiCourse() {
		super();
	}
	public BanjiCourse(Banji banji, Course course, Integer banjicourseId) {
		super();
		this.banji = banji;
		this.course = course;
		this.banjicourseId = banjicourseId;
	}
	public Banji getBanji() {
		return banji;
	}
	public void setBanji(Banji banji) {
		this.banji = banji;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public Integer getBanjicourseId() {
		return banjicourseId;
	}
	public void setBanjicourseId(Integer banjicourseId) {
		this.banjicourseId = banjicourseId;
	}
	@Override
	public String toString() {
		return "BanjiCourse [banji=" + banji + ", course=" + course + ", banjicourseId=" + banjicourseId + "]";
	}
	
	

}
