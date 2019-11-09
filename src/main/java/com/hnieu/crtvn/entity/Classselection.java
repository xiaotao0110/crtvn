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
 * Classselection generated by hbm2java
 */
@Entity
@Table(name = "classselection", catalog = "crtvn")
public class Classselection implements java.io.Serializable {

	private Integer id;
	private Classs classs;
	private Course course;
	private Integer reserve1;
	private String reserve2;

	public Classselection() {
	}

	public Classselection(Classs classs, Course course) {
		this.classs = classs;
		this.course = course;
	}

	public Classselection(Classs classs, Course course, Integer reserve1, String reserve2) {
		this.classs = classs;
		this.course = course;
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
	@JoinColumn(name = "CSID", nullable = false)
	public Classs getClasss() {
		return this.classs;
	}

	public void setClasss(Classs classs) {
		this.classs = classs;
	}

	@JsonBackReference
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "COID", nullable = false)
	public Course getCourse() {
		return this.course;
	}

	public void setCourse(Course course) {
		this.course = course;
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
