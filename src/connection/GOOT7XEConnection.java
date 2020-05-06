package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// singleTone pattern

public class GOOT7XEConnection {
	private static GOOT7XEConnection oc = null;
	private static Connection conn;
	
	final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String URL = "jdbc:oracle:thin:@192.168.0.17:1521:XE";
	final String USER = "scott";
	final String PASSWORD = "tiger";
	
	private GOOT7XEConnection() {}
	
	public static GOOT7XEConnection getInstance() {
		if(oc == null) oc = new GOOT7XEConnection();
		return oc;
		
	}
	
	public Connection getConnection() {
		if(conn == null) {
			try {
				Class.forName(DRIVER);
				conn = DriverManager.getConnection(URL, USER, PASSWORD);
				
				System.out.println("conn : " + conn);
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	// if end
		
		return conn;
	}

}
