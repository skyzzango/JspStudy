package db_ex01;

import java.util.Scanner;

public class DB_Util {
	private static Scanner in = new Scanner(System.in);

	public static void main(String[] args) {
		for (int i = 0; i < 2; i++) {
			insert();
		}
	}

	private static void insert() {
		System.out.print("과목 번호 : ");
		int DEPTNO = Integer.parseInt(in.nextLine());
		System.out.print("과목 이름 : ");
		String DNAME = in.nextLine();
		System.out.print("과목 정원 : ");
		int COLLEGE = Integer.parseInt(in.nextLine());
		System.out.print("강의장 : ");
		String LOC = in.nextLine();

		String sql = "INSERT INTO DEPARTMENT VALUES (\n" +
				"\t"+DEPTNO+", \n" +
				"\t'"+DNAME+"', \n" +
				"\t"+COLLEGE+", \n" +
				"\t'"+LOC+"')";

		System.out.println("작성된 sql : " + sql);

		// sqlUpdate 문을 실행하고 갱신된 갯수를 result 에 저장
		int result = My_DB.sqlUpdate(sql);
		System.out.println(result + "개의 행이 추가 되었습니다.");
	}
}
