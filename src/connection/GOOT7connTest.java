package connection;

import java.sql.Connection;

public class GOOT7connTest {
	public static void main(String[] args) {
		Connection conn = GOOT7XEConnection.getInstance().getConnection();
		
		System.out.println(conn);
	}

}
