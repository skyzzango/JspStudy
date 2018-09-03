package dbtest;

public class DB_Ex08 {
	public static void main(String[] args) {
		String sql1 = "insert into DEPARTMENT values (?, ?, ?, ?) ";
		String sql2 = "update DEPARTMENT set DNAME = ?, LOC = ? where DEPTNO = ?";
		System.out.println("작성된 sql1 : " + sql1);
		System.out.println("작성된 sql2 : " + sql2);

		My_DB.sqlPrepared4(sql1, sql2);
	}
}
