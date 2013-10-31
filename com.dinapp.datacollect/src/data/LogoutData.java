package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import beans.LoginDetails;
import database.DatabaseManager;

public class LogoutData {

	private static Connection dbconn;
	DatabaseManager databaseManager = new DatabaseManager();	
	
	public LogoutData() {
		if (dbconn == null) {
			try{
				dbconn = DatabaseManager.getConnection();
				System.out.println("DB connection successfull in LogoutData");
			}catch (Exception e){
				e.printStackTrace();
			}			
		}
	}
			
	public boolean setLogoutStatus(String usrName) {
		
		String strUpdtStatus = "update logininfo set li_loginstatus ='N' where li_userid='" +usrName + "'";
		try {
			PreparedStatement prepstat = dbconn.prepareStatement(strUpdtStatus);
			prepstat.executeUpdate();			
		}catch (SQLException e){
			System.out.println("SQL Exception: " + e.getMessage());			
		}
		return true;
	}
}
