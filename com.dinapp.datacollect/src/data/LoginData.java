package data;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Logger;

import beans.LoginDetails;
import database.DatabaseManager;
import common.Utilities;

public class LoginData {

	private static Connection dbconn;
	DatabaseManager databaseManager = new DatabaseManager();
	Utilities utl = new Utilities();
	
	public LoginData() {
		if (dbconn == null) {
			try{
				dbconn = DatabaseManager.getConnection();
				System.out.println("DB connection successfull in LoginData");
			}catch (Exception e){
				e.printStackTrace();
			}			
		}
	}
	
	public LoginDetails getLoginDetls(String usrName, String usrPasswd) {
		
		LoginDetails logininfo = new LoginDetails();
		if (dbconn != null) {
			String strLoginQry = "select li_userid,li_password,li_status,li_loginstatus,li_lastlogin"
								+" from logininfo where li_userid='" +usrName +"' and li_password='" +usrPasswd + "'" ;
						
			System.out.println(strLoginQry);
			try {
				Statement loginstat = dbconn.createStatement();
				ResultSet loginrs = loginstat.executeQuery(strLoginQry);
				System.out.println(loginrs);
				while(loginrs.next()) {
					logininfo.setLi_userid(loginrs.getInt("li_userid"));
					logininfo.setLi_password(loginrs.getString("li_password"));
					logininfo.setLi_status(loginrs.getString("li_status").charAt(0));
					logininfo.setLi_loginstatus(loginrs.getString("li_loginstatus").charAt(0));
					logininfo.setLi_lastlogin(loginrs.getTimestamp("li_lastlogin"));
				}
			}catch (SQLException e) {
				System.out.println("SQL Exception: " + e.getMessage());
			}
		}
	return logininfo;
	}
	
	public void setLoginStatus(String usrName) {
		
		String strUpdtStatus = "update logininfo set li_loginstatus ='Y', li_lastlogin = '" + utl.GetTimeStamp() + "' where li_userid='" +usrName + "'";
		System.out.println(strUpdtStatus);
		try {
			PreparedStatement prepstat = dbconn.prepareStatement(strUpdtStatus);
			prepstat.executeUpdate();			
		}catch (SQLException e){
			System.out.println("SQL Exception: " + e.getMessage());
		}
	}
}
