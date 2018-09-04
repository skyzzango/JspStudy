package db_ex02;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

public class ConnectionPool {
	static {
		try {
			Class.forName("org.h2.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	private ArrayList<Connection> freed; // 사용 전 Connection
	private ArrayList<Connection> used; // 사용 중 Connection
	private static final String URL = "jdbc:h2:C:/Users/skyzz/IdeaProjects/JspStudy/src/db_ex02/h2";
	private static final String ID = "iu";
	private static final String PW = "iu1004";
	private int initCons = 10; // 초기 Connection 수
	private int maxCons = 20; // 최대 Connection 수
	private int numCons = 0; // 전체 Connection 수
	private static ConnectionPool cp;

	public static ConnectionPool getInstance() {
		if (cp == null) {
			synchronized (ConnectionPool.class) {
				cp = new ConnectionPool();
			}
		}
		return cp;
	}

	private ConnectionPool() {
		/*
		 * 초기 Connection 개수를 각각의 ArrayList 에 저장 할 수 있도록
		 * 초기 Connection 수 만큼 생성
		 */
		freed = new ArrayList<>(initCons);
		used = new ArrayList<>(initCons);
		// initCons 의 수 만큼 Connection 생성
		while (numCons < initCons) {
			addConnection();
		}
	}

	private void addConnection() {
		freed.add(getNewConnection());
	}

	private Connection getNewConnection() {
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, ID, PW);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("About to connect to " + conn);
		numCons++;
		return conn;
	}

	// 요청이 왔을 때 freed 에 있는 Connection 을 used 로 옮기는 기능
	public synchronized Connection getConnection() {
		if (freed.isEmpty()) {
			while (numCons < maxCons) {
				addConnection();
			}
		}
		Connection _conn = freed.get(freed.size() - 1);
		freed.remove(_conn);
		used.add(_conn);
		return _conn;
	}

	// 요청 처리가 끝나면 used 의 connection 객체를 freed 로 옮기는 기능
	public synchronized void releaseConnection(Connection _conn) {
		boolean flag;
//		if (used.contains(_conn)) {
//			used.remove(_conn);
//			numCons--;
//			flag = true;
//		} else {
//			throw new SQLException("ConnectionPool 에 없습니다..");
//		}
//		try {
//			if (flag) {
//				freed.add(_conn);
//				numCons++;
//			} else {
//				_conn.close();
//			}
//		} catch (SQLException e) {
//			try {
//				_conn.close();
//			} catch (SQLException e1) {
//				e1.printStackTrace();
//			}
//		}

		try (Connection conn = _conn) {
			if (used.contains(conn)) {
				used.remove(_conn);
				numCons--;
			} else {
				throw new SQLException("ConnectionPool 에 없습니다.");
			}
			freed.add(conn);
			numCons++;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 모든 Connection 삭제
	public void closeAll() {
		// 사용 중인 모든 Connection 객체 삭제
		closeConn(used);
		// 사용 전인 모든 Connection 객체 삭제
		closeConn(freed);
	}

	private void closeConn(ArrayList<Connection> used) {
		for (int i = 0; i < used.size(); i++) {
			Connection _conn = used.get(i);
			used.remove(i--);
			try {
				_conn.close();
			} catch (SQLException e) {
				try {
					_conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
	}
}
