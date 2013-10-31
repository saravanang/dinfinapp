package database;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

import beans.LoginDetails;



public class DatabaseManager_Old
{
	
	private String dbURL = "";
	private String dbUser = "";
	private String dbPasswd = "";
	public Connection dbconn = null;
	
	public void setdbURL(String dbURL) {
		this.dbURL = dbURL;		
	}
	
	public String getdbURL () {
		return dbURL;
	}
	
	public void setdbUser(String dbUser) {
		this.dbUser = dbUser;
	}
	
	public String getdbUser () {
		return dbUser;
	}

	public void setdbPasswd (String dbPasswd) {
		this.dbPasswd = dbPasswd;
	}
	
	public String getdbPasswd () {
		return dbPasswd;
	}
	
	public Connection getConnection  () {
		
		//System.out.println(getdbURL());
		Connection dbconn = null;
		try {
			
			dbconn = DriverManager.getConnection(getdbURL(), getdbUser(), getdbPasswd());
			System.out.println("Database connection Successfull");
			
			
		} catch (Exception e) {
			System.out.println("Error: In DB Connection " + e);
			e.printStackTrace();
		}
		
		return dbconn;
	}

	public void disconnectDB (Connection dbconn) {
		
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
	
	public LoginDetails getLoginDetls(String usrName, String usrPasswd, Connection dbconn) {
		
		LoginDetails logininfo = new LoginDetails();
		
		//Connection dbconn = getConnection();
		if (dbconn == null) {
			dbconn = getConnection();
			System.out.println("DB connection in getLoginDetails function is NULL");
		}
		
		if (dbconn != null) {
			System.out.println("Inside SQL Query");
			ResultSet loginrs = null;
			Statement loginstat = null;
			
			try {
				
				String strLoginQry = "select li_userid,li_password,li_status,li_loginstatus,li_lastlogin"
						+" from logininfo where li_userid='" +usrName +"' and li_password='" +usrPasswd + "'" ;
				
				System.out.println(strLoginQry);
				loginstat = dbconn.createStatement();
				loginrs = loginstat.executeQuery(strLoginQry);				
				
				while(loginrs.next()) {
					logininfo.setLi_userid(loginrs.getInt("li_userid"));
					logininfo.setLi_password(loginrs.getString("li_password"));
					logininfo.setLi_status(loginrs.getString("li_status").charAt(0));
					logininfo.setLi_loginstatus(loginrs.getString("li_loginstatus").charAt(0));
					logininfo.setLi_lastlogin(loginrs.getTimestamp("li_lastlogin"));
				}
			} catch (SQLException e) {
				System.out.println("SQL Exception: " + e.getMessage());
			} finally {
				if (loginstat != null) {
					try{ loginstat.close();}
					catch (SQLException e) {
						e.printStackTrace();
					}
					//disconnectDB(dbconn);
					//System.out.println("Database disconnected Successfully");
				}
			}
		} else {
			System.out.println("Database connection is NULL");
		}
		
		return logininfo;
	}
	
	public LoginDetails setLoginDetls(String usrName, Connection dbconn) {
		
		LoginDetails logininfo = new LoginDetails();
		
		//Connection dbconn = getConnection();
		if (dbconn == null) {
			dbconn = getConnection();
			System.out.println("DB connection in setLoginDetails function is NULL");
		}
		
		if (dbconn != null) {
			ResultSet loginrs = null;
			Statement loginstat = null;
			
			try {
				
				String strLoginQry = "update logininfo set li_loginstatus='Y' where li_userid='" +usrName +"'";
				
				System.out.println(strLoginQry);
				loginstat = dbconn.prepareStatement(strLoginQry);
			//	loginrs = loginstat.executeUpdate();			
		
			} catch (SQLException e) {
				System.out.println("SQL Exception: " + e.getMessage());
			} finally {
				if (loginstat != null) {
					try{ loginstat.close();}
					catch (SQLException e) {
						e.printStackTrace();
					}
					//disconnectDB(dbconn);
					//System.out.println("Database disconnected Successfully");
				}
			}
		} else {
			System.out.println("Database connection is NULL");
		}
		
		return logininfo;
	}
	
}
