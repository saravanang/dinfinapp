package beans;

import java.sql.Timestamp;

/**
TABLE definition menucateg;
+---------------+-------------+------+-----+---------+
| Field         | Type        | Null | Key | Default |
+---------------+-------------+------+-----+---------+
| MC_MENUCATEID | int(2)      | NO   | PRI | NULL    |
| MC_MENUNAME   | varchar(45) | YES  |     | NULL    |
| MC_CRTTIME    | timestamp   | YES  |     | NULL    |
+---------------+-------------+------+-----+---------+
 */

public class MenuCategory {
	
	private int mc_menucateid;
	private String mc_menuname;
	private Timestamp mc_crttime;

	public MenuCategory () {}

	public int getMc_menucateid() {
		return mc_menucateid;
	}

	public void setMc_menucateid(int mc_menucateid) {
		this.mc_menucateid = mc_menucateid;
	}

	public String getMc_menuname() {
		return mc_menuname;
	}

	public void setMc_menuname(String mc_menuname) {
		this.mc_menuname = mc_menuname;
	}

	public Timestamp getMc_crttime() {
		return mc_crttime;
	}

	public void setMc_crttime(Timestamp mc_crttime) {
		this.mc_crttime = mc_crttime;
	}


	
}
