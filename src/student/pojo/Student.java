package student.pojo;

public class Student {
	private Integer id;
	private Integer number;
	private String name;
	private Integer age;
	private String gender;
	private String address;
	private Integer banjiId;
	private Banji banji;
	
	public Student() {
		super();
	}

	public Student(Integer id, Integer number, String name, Integer age, String gender, String address, Banji banji) {
		super();
		this.id = id;
		this.number = number;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.banji = banji;
	}

	public Integer getBanjiId() {
		return banjiId;
	}

	public void setBanjiId(Integer banjiId) {
		this.banjiId = banjiId;
	}

	public Student(Integer id, Integer number, String name, Integer age, String gender, String address, Integer banjiId,
			Banji banji) {
		super();
		this.id = id;
		this.number = number;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.address = address;
		this.banjiId = banjiId;
		this.banji = banji;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Banji getBanji() {
		return banji;
	}

	public void setBanji(Banji banji) {
		this.banji = banji;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", number=" + number + ", name=" + name + ", age=" + age + ", gender=" + gender
				+ ", address=" + address + ", banjiId=" + banjiId + ", banji=" + banji + "]";
	}

	
}
