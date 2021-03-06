package com.hnieu.crtvn.entity;
// Generated 2019-2-23 22:25:06 by Hibernate Tools 4.3.1.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonBackReference;

/**
 * Academician generated by hbm2java
 */
@Entity
@Table(name = "academician", catalog = "crtvn", uniqueConstraints = @UniqueConstraint(columnNames = "employeeNo"))
public class Academician implements java.io.Serializable {

	private Integer id;
	private College college;
	private String employeeNo;
	private String name;
	private String password;
	private Integer reserve1;
	private String reserve2;

	public Academician() {
	}

	public Academician(College college, String employeeNo, String name, String password) {
		this.college = college;
		this.employeeNo = employeeNo;
		this.name = name;
		this.password = password;
	}

	public Academician(College college, String employeeNo, String name, String password, Integer reserve1,
			String reserve2) {
		this.college = college;
		this.employeeNo = employeeNo;
		this.name = name;
		this.password = password;
		this.reserve1 = reserve1;
		this.reserve2 = reserve2;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@JsonBackReference
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "CID", nullable = false)
	public College getCollege() {
		return this.college;
	}

	public void setCollege(College college) {
		this.college = college;
	}

	@Column(name = "employeeNo", unique = true, nullable = false, length = 20)
	public String getEmployeeNo() {
		return this.employeeNo;
	}

	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}

	@Column(name = "name", nullable = false, length = 10)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "password", nullable = false, length = 16)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "reserve1")
	public Integer getReserve1() {
		return this.reserve1;
	}

	public void setReserve1(Integer reserve1) {
		this.reserve1 = reserve1;
	}

	@Column(name = "reserve2", length = 50)
	public String getReserve2() {
		return this.reserve2;
	}

	public void setReserve2(String reserve2) {
		this.reserve2 = reserve2;
	}

}
