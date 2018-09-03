package dbtest;

public class DB_Ex05 {
	public static void main(String[] args) {

		String sql = "insert into PROFESSOR values (?, ?, ?, ?, ?, sysdate, ?, ?)";
		System.out.println("작성된 sql : " + sql);

		My_DB.sqlPrepared1(sql);
	}
}
