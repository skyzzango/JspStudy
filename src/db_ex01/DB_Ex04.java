package db_ex01;

public class DB_Ex04 {
	public static void main(String[] args) {

		String sql = "select DEPTNO, DNAME, COLLEGE, loc from DEPARTMENT";
		System.out.println("작성된 sql : " + sql);

		My_DB.sqlQuery(sql);
	}
}
