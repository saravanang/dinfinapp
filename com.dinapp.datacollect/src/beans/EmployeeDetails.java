package beans;

import java.sql.Date;
import java.sql.Timestamp;

/**
+------------------+-------------+------+-----+---------+
| Field            | Type        | Null | Key | Default |
+------------------+-------------+------+-----+---------+
| EI_EMPID         | int(10)     | NO   | PRI | NULL    |
| EI_FNAME         | varchar(45) | NO   |     | NULL    |
| EI_MNAME         | varchar(10) | YES  |     | NULL    |
| EI_LNAME         | varchar(45) | NO   |     | NULL    |
| EI_STATUS        | char(1)     | NO   |     | Y       |
| EI_JOINDATE      | date        | YES  |     | NULL    |
| EI_ENDDATE       | date        | YES  |     | NULL    |
| EI_SALARY        | varchar(45) | YES  |     | NULL    |
| EI_QUALIFICATION | varchar(45) | YES  |     | NULL    |
| EI_DATEINS       | timestamp   | YES  |     | NULL    |
| EI_DATEUPD       | timestamp   | YES  |     | NULL    |
| EI_ADDEDBY       | int(10)     | YES  |     | NULL    |
+------------------+-------------+------+-----+---------+
 */

public class EmployeeDetails {

	private int ei_empid;         
	private String ei_fname;       
	private String ei_mname;      
	private String ei_lname;       
	private char ei_status;      
	private Date ei_joindate;    
	private Date ei_enddate;     
	private long ei_salary;      
	private String ei_qualification;
	private Timestamp ei_dateins;     
	private Timestamp ei_dateupd;     
	private int ei_addedby; 
	
	public EmployeeDetails() {}

	public int getEi_empid() {
		return ei_empid;
	}

	public void setEi_empid(int ei_empid) {
		this.ei_empid = ei_empid;
	}

	public String getEi_fname() {
		return ei_fname;
	}

	public void setEi_fname(String ei_fname) {
		this.ei_fname = ei_fname;
	}

	public String getEi_mname() {
		return ei_mname;
	}

	public void setEi_mname(String ei_mname) {
		this.ei_mname = ei_mname;
	}

	public String getEi_lname() {
		return ei_lname;
	}

	public void setEi_lname(String ei_lname) {
		this.ei_lname = ei_lname;
	}

	public char getEi_status() {
		return ei_status;
	}

	public void setEi_status(char ei_status) {
		this.ei_status = ei_status;
	}

	public Date getEi_joindate() {
		return ei_joindate;
	}

	public void setEi_joindate(Date ei_joindate) {
		this.ei_joindate = ei_joindate;
	}

	public long getEi_salary() {
		return ei_salary;
	}

	public void setEi_salary(long ei_salary) {
		this.ei_salary = ei_salary;
	}

	public Date getEi_enddate() {
		return ei_enddate;
	}

	public void setEi_enddate(Date ei_enddate) {
		this.ei_enddate = ei_enddate;
	}

	public String getEi_qualification() {
		return ei_qualification;
	}

	public void setEi_qualification(String ei_qualification) {
		this.ei_qualification = ei_qualification;
	}

	public Timestamp getEi_dateins() {
		return ei_dateins;
	}

	public void setEi_dateins(Timestamp ei_dateins) {
		this.ei_dateins = ei_dateins;
	}

	public Timestamp getEi_dateupd() {
		return ei_dateupd;
	}

	public void setEi_dateupd(Timestamp ei_dateupd) {
		this.ei_dateupd = ei_dateupd;
	}

	public int getEi_addedby() {
		return ei_addedby;
	}

	public void setEi_addedby(int ei_addedby) {
		this.ei_addedby = ei_addedby;
	}
	
}
