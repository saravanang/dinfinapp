package database;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.IOException;

public class DatabaseManager {
	
	private static Connection dbconn = null;

	public static Connection getConnection () {
		
		//System.out.println(getdbURL());
		if (dbconn != null)
			return dbconn;
		else {
			try {
				
				Properties prop = new Properties();
				InputStream inpstrm = DatabaseManager.class.getClassLoader().getResourceAsStream("/config/db.properties");
				prop.load(inpstrm);
				String driver = prop.getProperty("driver");
				String url = prop.getProperty("url");
				String user = prop.getProperty("user");
				String password = prop.getProperty("password");
				
				Class.forName(driver);
				System.out.println("DB driver loaded successfully");
				dbconn = DriverManager.getConnection(url,user, password);
				System.out.println("Database connection Successfull");
			} catch (SQLException e) {
				System.out.println("Error: In DB Connection " + e);
				e.printStackTrace();
			}catch (IOException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {				
				e.printStackTrace();			
            }					
			return dbconn;
		}
	}

	public void disconnectDB () {
		
		if (dbconn != null) {
			try {
				dbconn.close();
				dbconn = null;
				System.out.println("Database disconnected successfully ");
			}catch (Exception e) {
				System.out.println("Error: Unable to disconnect database: " + e);
			}
		}
	}
}
