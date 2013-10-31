package beans;

import java.sql.Timestamp;

/*
+-------------+-------------+------+-----+---------+
| Field       | Type        | Null | Key | Default |
+-------------+-------------+------+-----+---------+
| CI_CUSTID   | varchar(17) | NO   | PRI | NULL    |       
| CI_FNAME    | varchar(45) | NO   |     | NULL    |       
| CI_MNAME    | varchar(10) | YES  |     | NULL    |       
| CI_LNAME    | varchar(45) | NO   |     | NULL    |      
| CI_STATUS   | char(1)     | NO   |     | Y       |       
| CI_ADDRID	  | bigint(20)	| NO   |     | NULL	   |       
| CI_CRTEMPID | int(10)     | YES  |     | NULL    |       
| CI_DATEINS  | timestamp   | YES  |     | NULL    |       
| CI_DATEUPD  | timestamp   | YES  |     | NULL    |       
+-------------+-------------+------+-----+---------+
 */

public class CustomerInfoMain {

	private String ci_custid;			// Customer ID
	private String ci_fname;			// Customer First Name
	private String ci_mname;			// Customer Middle Name
	private String ci_lname;			// Customer Last Name
	private char ci_status;				// Customer Status - Active (Y) or Inactive (N)
	private int ci_crtempid;			// Customer created Employee ID
	private Timestamp ci_datainst;		// Customer created date and time
	private Timestamp ci_dateupd;		// Customer data updated date and time
	
	public CustomerInfoMain () {}

	public String getCi_custid() {
		return ci_custid;
	}

	public void setCi_custid(String ci_custid) {
		this.ci_custid = ci_custid;
	}

	public String getCi_mname() {
		return ci_mname;
	}

	public void setCi_mname(String ci_mname) {
		this.ci_mname = ci_mname;
	}

	public String getCi_fname() {
		return ci_fname;
	}

	public void setCi_fname(String ci_fname) {
		this.ci_fname = ci_fname;
	}

	public String getCi_lname() {
		return ci_lname;
	}

	public void setCi_lname(String ci_lname) {
		this.ci_lname = ci_lname;
	}

	public char getCi_status() {
		return ci_status;
	}

	public void setCi_status(char ci_status) {
		this.ci_status = ci_status;
	}

	public int getCi_crtempid() {
		return ci_crtempid;
	}

	public void setCi_crtempid(int ci_crtempid) {
		this.ci_crtempid = ci_crtempid;
	}

	public Timestamp getCi_datainst() {
		return ci_datainst;
	}

	public void setCi_datainst(Timestamp ci_datainst) {
		this.ci_datainst = ci_datainst;
	}

	public Timestamp getCi_dateupd() {
		return ci_dateupd;
	}

	public void setCi_dateupd(Timestamp ci_dateupd) {
		this.ci_dateupd = ci_dateupd;
	}
	
}
