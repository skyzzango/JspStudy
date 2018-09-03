package dbtest;

public class DB_Ex02 {
	public static void main(String[] args) {

		String sql = "update DEPARTMENT set DNAME = '전자계산학과' where DEPTNO = 203";
		System.out.println("작성된 sql : " + sql);

		// sqlUpdate 문을 실행하고 갱신된 갯수를 result 에 저장
		int result = My_DB.sqlUpdate(sql);
		System.out.println(result + "개의 행이 변경 되었습니다.");
	}
}
