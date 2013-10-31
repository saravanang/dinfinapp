package beans;

import java.sql.Timestamp;

//Update this class whenever you change the table structure for logininfo table
/*+----------------+-------------+------+-----+---------+
| Field          | Type        | Null | Key | Default |
+----------------+-------------+------+-----+---------+
| LI_USERID      | int(10)     | NO   | PRI | NULL    |
| LI_PASSWORD    | varchar(32) | NO   |     | NULL    |
| LI_CRTTIME     | timestamp   | YES  |     | NULL    |
| LI_STATUS      | char(1)     | NO   |     | Y       |
| LI_LOGINSTATUS | char(1)     | NO   |     | N       |
| LI_LASTLOGIN   | timestamp   | YES  |     | NULL    |
+----------------+-------------+------+-----+---------+ */

public class LoginDetails {
	private int li_userid;			//Login User id
	private String li_password;		//Login password
	private Timestamp li_crttime;	//User id created time
	private char li_status;			//User id status (Active or Inactive)
	private char li_loginstatus;	//User id login status (whether logged in or not)
	private Timestamp li_lastlogin;	//Last Login time
	
	public LoginDetails() {}
	
	public int getLi_userid() {
		return li_userid;
	}

	public void setLi_userid(int li_userid) {
		this.li_userid = li_userid;
	}

	public String getLi_password() {
		return li_password;
	}

	public void setLi_password(String li_password) {
		this.li_password = li_password;
	}

	public char getLi_status() {
		return li_status;
	}

	public void setLi_status(char li_status) {
		this.li_status = li_status;
	}

	public char getLi_loginstatus() {
		return li_loginstatus;
	}

	public void setLi_loginstatus(char li_loginstatus) {
		this.li_loginstatus = li_loginstatus;
	}

	public Timestamp getLi_lastlogin() {
		return li_lastlogin;
	}

	public void setLi_lastlogin(Timestamp li_lastlogin) {
		this.li_lastlogin = li_lastlogin;
	}

	public Timestamp getLi_crttime() {
		return li_crttime;
	}

	public void setLi_crttime(Timestamp li_crttime) {
		this.li_crttime = li_crttime;
	}
	
	
}
