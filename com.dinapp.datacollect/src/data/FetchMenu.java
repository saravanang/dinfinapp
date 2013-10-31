package database;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import java.util.ArrayList;
import java.util.List;

import beans.MenuCategory;

public class FetchMenu {
/*
	private DatabaseManager dbm;

	public MenuCategory getMenus (String usrID, Connection dbconn) throws SQLException {
		
		MenuCategory menucate = null;
		Statement menstat = null;
		ResultSet menurs = null;
		List<MenuCategory> mainmenulst = new ArrayList<MenuCategory>();
		
		if (dbconn == null) {
			dbconn = dbm.getConnection();
			System.out.println("DB connecting in getMenus function");
		}
		
		if (dbconn != null) {
			String strMenuQry = "select mc_menuname from menucateg where mc_menucateid";
			menstat = dbconn.createStatement();
			menurs = menstat.executeQuery(strMenuQry);
			while (menurs.next()) {
				menucate = new MenuCategory();
				menucate.setMc_menuname(menurs.getString("mc_menuname"));
				mainmenulst.add(menucate);
			}
			
		}else {
			System.out.println("DB connection is NULL in getMenus function");
		}
		
		return menucate;
	}
	*/
}
