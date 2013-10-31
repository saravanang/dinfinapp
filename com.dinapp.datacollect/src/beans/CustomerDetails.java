package beans;

import java.sql.Date;
import java.sql.Timestamp;

import sun.security.util.BigInt;

/**
TABLE NAME custaddr
+-------------+-------------+------+-----+---------+
| Field       | Type        | Null | Key | Default |
+-------------+-------------+------+-----+---------+
| CA_ADDRID   | bigint(20)  | NO   | PRI | NULL    |
| CA_CUSTID   | varchar(17) | YES  | MUL | NULL    |
| CA_HPHONE   | int(10)     | YES  |     | NULL    |
| CA_MPHONE   | int(10)     | YES  |     | NULL    |
| CA_EMAIL    | varchar(75) | YES  |     | NULL    |
| CA_ADDRESS1 | varchar(50) | YES  |     | NULL    |
| CA_ADDRESS2 | varchar(50) | YES  |     | NULL    |
| CA_ADDRESS3 | varchar(50) | YES  |     | NULL    |
| CA_AREA     | varchar(50) | YES  |     | NULL    |
| CA_CITY     | varchar(50) | YES  |     | NULL    |
| CA_STATE    | varchar(45) | YES  |     | NULL    |
| CA_COUNTRY  | varchar(25) | YES  |     | NULL    |
| CA_STATUS   | char(1)     | YES  |     | NULL    |
| CA_FRMDATE  | date        | YES  |     | NULL    |
| CA_TODATE   | date        | YES  |     | NULL    |
| CA_EMPID    | int(10)     | YES  |     | NULL    |
| CA_CRTTIME  | timestamp   | YES  |     | NULL    |
| CA_UPDTIME  | timestamp   | YES  |     | NULL    |
+-------------+-------------+------+-----+---------+

 * Customer ID details 
 * Total 15 characters.
 * 		2 - CountryCode
 * 		3 - City
 * 		3 - BranchID
 * 		4 - Joining Year
 * 		5 - Sequence Number
 * 		E.g, INCHN001201310001
 */

public class CustomerDetails {

	private BigInt 		ca_addrid;		// Store Address ID, multiple recrods for multiple addresses 
	private String 		ca_custid;		// Customer ID
	private String 		ca_address1;	// Address
	private String 		ca_address2;
	private String 		ca_address3;
	private String 		ca_area;
	private String 		ca_city;
	private String 		ca_state;   
	private String 		ca_country;
	private char 		ca_status;
	private Date  		ca_frmdate; 
	private Date 		ca_todate;
	private int 		ca_empid; 
	private Timestamp 	ca_crttime; 
	private Timestamp 	ca_updtime;
	
	public CustomerDetails () {}

	public BigInt getCa_addrid() {
		return ca_addrid;
	}

	public void setCa_addrid(BigInt ca_addrid) {
		this.ca_addrid = ca_addrid;
	}

	public String getCa_custid() {
		return ca_custid;
	}

	public void setCa_custid(String ca_custid) {
		this.ca_custid = ca_custid;
	}

	public String getCa_address1() {
		return ca_address1;
	}

	public void setCa_address1(String ca_address1) {
		this.ca_address1 = ca_address1;
	}

	public String getCa_address2() {
		return ca_address2;
	}

	public void setCa_address2(String ca_address2) {
		this.ca_address2 = ca_address2;
	}

	public String getCa_address3() {
		return ca_address3;
	}

	public void setCa_address3(String ca_address3) {
		this.ca_address3 = ca_address3;
	}

	public String getCa_area() {
		return ca_area;
	}

	public void setCa_area(String ca_area) {
		this.ca_area = ca_area;
	}

	public String getCa_city() {
		return ca_city;
	}

	public void setCa_city(String ca_city) {
		this.ca_city = ca_city;
	}

	public String getCa_state() {
		return ca_state;
	}

	public void setCa_state(String ca_state) {
		this.ca_state = ca_state;
	}

	public String getCa_country() {
		return ca_country;
	}

	public void setCa_country(String ca_country) {
		this.ca_country = ca_country;
	}

	public char getCa_status() {
		return ca_status;
	}

	public void setCa_status(char ca_status) {
		this.ca_status = ca_status;
	}

	public Date getCa_frmdate() {
		return ca_frmdate;
	}

	public void setCa_frmdate(Date ca_frmdate) {
		this.ca_frmdate = ca_frmdate;
	}

	public Date getCa_todate() {
		return ca_todate;
	}

	public void setCa_todate(Date ca_todate) {
		this.ca_todate = ca_todate;
	}

	public int getCa_empid() {
		return ca_empid;
	}

	public void setCa_empid(int ca_empid) {
		this.ca_empid = ca_empid;
	}

	public Timestamp getCa_crttime() {
		return ca_crttime;
	}

	public void setCa_crttime(Timestamp ca_crttime) {
		this.ca_crttime = ca_crttime;
	}

	public Timestamp getCa_updtime() {
		return ca_updtime;
	}

	public void setCa_updtime(Timestamp ca_updtime) {
		this.ca_updtime = ca_updtime;
	}
	
}
