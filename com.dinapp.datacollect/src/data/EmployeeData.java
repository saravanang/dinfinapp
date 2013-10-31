package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.DatabaseManager;
import beans.EmployeeDetails;

public class EmployeeData {
	
	private static Connection dbconn;
	DatabaseManager databaseManager = new DatabaseManager();

	
	public EmployeeData(){
		if (dbconn == null) {
			try {
				dbconn = DatabaseManager.getConnection();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public EmployeeDetails getEmployeeData(String empID){
		
		EmployeeDetails empinfo = new EmployeeDetails();
		
		if(dbconn != null) {
			String strFetchEmp = "select * from empinfo where ei_empid ='" + empID + "'";
			try {
				System.out.println(strFetchEmp);
				PreparedStatement prepstat =  dbconn.prepareStatement(strFetchEmp);
				ResultSet empdatars = prepstat.executeQuery();
				if (empdatars.next()) {
					empinfo.setEi_empid(empdatars.getInt("ei_empid"));
					empinfo.setEi_fname(empdatars.getString("ei_fname"));
					empinfo.setEi_lname(empdatars.getString("ei_lname"));
					empinfo.setEi_mname(empdatars.getString("ei_mname"));
					empinfo.setEi_status(empdatars.getString("ei_status").charAt(0));		
					System.out.println(empdatars.getString("ei_fname"));
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return empinfo;	
	}
}
