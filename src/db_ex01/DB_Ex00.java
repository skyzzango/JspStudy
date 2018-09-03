package db_ex01;

public class DB_Ex00 {
	public static void main(String[] args) {

		String sql1 = "create table \"DEPARTMENT\" (\n" +
				"\t\"DEPTNO\" number(3,0) not null, \n" +
				"\t\"DNAME\" varchar2(30) not null, \n" +
				"\t\"COLLEGE\" number(3,0) not null, \n" +
				"\t\"LOC\" varchar2(10) not null, \n" +
				"\tconstraint \"DEPARTMENT_PK\" primary key (\"DEPTNO\"))";
		System.out.println("작성된 sql : " + sql1);
		My_DB.sqlUpdate(sql1);
		System.out.println("테이블1 이 추가 되었습니다.");

		String sql2 = "create table \"PROFESSOR\" (\n" +
				"\t\"PROFNO\" number(5,0) not null, \n" +
				"\t\"NAME\" varchar2(10) not null, \n" +
				"\t\"ENAME\" varchar2(20) not null, \n" +
				"\t\"POSITION\" varchar2(20) not null, \n" +
				"\t\"SAL\" number(4,0) not null, \n" +
				"\t\"HIREDATE\" date not null, \n" +
				"\t\"AGE\" number(3,0) not null, \n" +
				"\t\"DEPTNO\" number(3,0) not null, \n" +
				"\tconstraint \"PROFESSOR_PK\" primary key (\"PROFNO\"))";
		System.out.println("작성된 sql : " + sql2);
		My_DB.sqlUpdate(sql2);
		System.out.println("테이블2 가 추가 되었습니다.");

		String sql3 = "alter table \"PROFESSOR\" add constraint \"PROFESSOR_FK\" \n" +
				"\tforeign key (\"DEPTNO\") \n" +
				"\treferences \"DEPARTMENT\" (\"DEPTNO\")";
		System.out.println("작성된 sql : " + sql3);
		My_DB.sqlUpdate(sql3);
		System.out.println("테이블2 속성 연결!");
	}
}
