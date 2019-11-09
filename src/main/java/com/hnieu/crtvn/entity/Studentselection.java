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

import com.fasterxml.jackson.annotation.JsonBackReference;

/**
 * Studentselection generated by hbm2java
 */
@Entity
@Table(name = "studentselection", catalog = "crtvn")
public class Studentselection implements java.io.Serializable {

	private Integer id;
	private Course course;
	private Student student;
	private String reason;
	private int mark;
	private Integer reserve1;
	private String reserve2;

	public Studentselection() {
	}

	public Studentselection(Course course, Student student, int mark) {
		this.course = course;
		this.student = student;
		this.mark = mark;
	}

	public Studentselection(Course course, Student student, String reason, int mark, Integer reserve1,
			String reserve2) {
		this.course = course;
		this.student = student;
		this.reason = reason;
		this.mark = mark;
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
	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	@JsonBackReference
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "SID", nullable = false)
	public Student getStudent() {
		return this.student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	@Column(name = "reason")
	public String getReason() {
		return this.reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
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

}
