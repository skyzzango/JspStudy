package db_ex01;

public class DB_Ex03 {
	public static void main(String[] args) {

		String sql = "delete DEPARTMENT where DNAME = '전자계산학과'";
		System.out.println("작성된 sql : " + sql);

		// sqlUpdate 문을 실행하고 갱신된 갯수를 result 에 저장
		int result = My_DB.sqlUpdate(sql);
		System.out.println(result + "개의 행이 삭제 되었습니다.");
	}
}
