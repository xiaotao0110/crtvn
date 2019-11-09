package com.hnieu.crtvn.entity;
// Generated 2019-2-23 22:25:06 by Hibernate Tools 4.3.1.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import com.fasterxml.jackson.annotation.JsonBackReference;

/**
 * Classroom generated by hbm2java
 */
@Entity
@Table(name = "classroom", catalog = "crtvn", uniqueConstraints = @UniqueConstraint(columnNames = "code"))
public class Classroom implements java.io.Serializable {

	private Integer id;
	private College college;
	private String code;
	private Integer status;
	private int building;
	private int seats;
	private Integer number;
	private int mark;
	private Integer reserve1;
	private String reserve2;
	private Set<Examination> examinations = new HashSet<Examination>(0);

	public Classroom() {
	}

	public Classroom(String code, int building, int seats, int mark) {
		this.code = code;
		this.building = building;
		this.seats = seats;
		this.mark = mark;
	}

	public Classroom(College college, String code, Integer status, int building, int seats, Integer number, int mark,
			Integer reserve1, String reserve2, Set<Examination> examinations) {
		this.college = college;
		this.code = code;
		this.status = status;
		this.building = building;
		this.seats = seats;
		this.number = number;
		this.mark = mark;
		this.reserve1 = reserve1;
		this.reserve2 = reserve2;
		this.examinations = examinations;
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
	@JoinColumn(name = "CID")
	public College getCollege() {
		return this.college;
	}

	public void setCollege(College college) {
		this.college = college;
	}

	@Column(name = "code", unique = true, nullable = false, length = 20)
	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	@Column(name = "status")
	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Column(name = "building", nullable = false)
	public int getBuilding() {
		return this.building;
	}

	public void setBuilding(int building) {
		this.building = building;
	}

	@Column(name = "seats", nullable = false)
	public int getSeats() {
		return this.seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	@Column(name = "number")
	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	@Column(name = "mark", nullable = false)
	public int getMark() {
		return this.mark;
	}

	public void setMark(int mark) {
		this.mark = mark;
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

	@JsonBackReference
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "classroom")
	public Set<Examination> getExaminations() {
		return this.examinations;
	}

	public void setExaminations(Set<Examination> examinations) {
		this.examinations = examinations;
	}

}
