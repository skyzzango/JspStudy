package db_ex01;

public class DB_Ex07 {
	public static void main(String[] args) {

		String sql = "select a.NAME, a.PROFNO, a.POSITION, b.DNAME \n" +
				"\tfrom PROFESSOR a, DEPARTMENT b \n" +
				"\twhere a.DEPTNO = b.DEPTNO \n" +
				"\tand a.DEPTNO = ?";
		System.out.println("작성된 sql : " + sql);

		My_DB.sqlPrepared3(sql);
	}
}
