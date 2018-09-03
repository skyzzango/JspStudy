package javaBeans;

public class PersonBean {
	private String nameValue;
	private int age;
	// 필드명에 밑줄 쓰지마세요. 이름 규칙 지키기

	public String getNameValue() {
		return nameValue;
	}

	public void setNameValue(String nameValue) {
		this.nameValue = nameValue;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}
