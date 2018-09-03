package db_ex01;

public class DB_Ex06 {
	public static void main(String[] args) {

		String sql = "update PROFESSOR set SAL = ? where name = ?";
		System.out.println("작성된 sql : " + sql);

		My_DB.sqlPrepared2(sql);
	}
}
