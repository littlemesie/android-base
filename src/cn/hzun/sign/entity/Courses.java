package cn.hzun.sign.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
/**
 * 课程表
 * @author mesie
 * 2016年4月9日 上午9:16:47
 */
@Entity
@Table(name = "courses",catalog = "sign",uniqueConstraints = {@UniqueConstraint(columnNames={"CID"})})
public class Courses implements Serializable{
	
	private static final long serialVersionUID = -1345678789594005435L;

	/**课程id*/
	private String courseID;
	/**课程名*/
	private String courseName;
	/**开课学院*/
	private String courseCollege;
	/**课程时间*/
	private String courseTime;
	/**上课地址*/
	private String courseAddress;
	/**课程学分*/
	private Double courseScores;
	//定义教师集合
	private Set<Teachers> teachers = new HashSet<Teachers>();
	//定义学生集合
	private Set<Students> students = new HashSet<Students>();
	
	public Courses(){
		
	}
	
	public Courses(String courseID, String courseName, String courseCollege,
			String courseTime, String courseAddress, Double courseScores,
			Set<Teachers> teachers, Set<Students> students) {
		super();
		this.courseID = courseID;
		this.courseName = courseName;
		this.courseCollege = courseCollege;
		this.courseTime = courseTime;
		this.courseAddress = courseAddress;
		this.courseScores = courseScores;
		this.teachers = teachers;
		this.students = students;
	}

	@Id
	@Column(name = "CID",unique = true,nullable = false,length = 50)
	public String getCourseID() {
		return courseID;
	}

	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}

	@Column(name = "Cname", nullable = false,length = 50)
	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	
	@Column(name = "Ccollege", nullable = false,length = 50)
	public String getCourseCollege() {
		return courseCollege;
	}

	public void setCourseCollege(String courseCollege) {
		this.courseCollege = courseCollege;
	}

	@Column(name = "Ctime",nullable = false,length = 20)
	public String getCourseTime() {
		return courseTime;
	}

	public void setCourseTime(String courseTime) {
		this.courseTime = courseTime;
	}

	@Column(name = "Caddress", nullable = false,length = 50)
	public String getCourseAddress() {
		return courseAddress;
	}

	public void setCourseAddress(String courseAddress) {
		this.courseAddress = courseAddress;
	}

	@Column(name = "Cscores", nullable = false,length = 2)
	public Double getCourseScores() {
		return courseScores;
	}

	public void setCourseScores(Double courseScores) {
		this.courseScores = courseScores;
	}

	//使用@ManyToMany注解实现Courses到Teachers的多对多关联
	@ManyToMany(fetch = FetchType.EAGER)
	@Cascade(value = {CascadeType.SAVE_UPDATE})
	@JoinTable(name = "tc",joinColumns = {@JoinColumn(name = "CID")},
			   inverseJoinColumns = {@JoinColumn(name = "TNo")})
	public Set<Teachers> getTeachers() {
		return teachers;
	}

	public void setTeachers(Set<Teachers> teachers) {
		this.teachers = teachers;
	}

	//使用@ManyToMany注解实现Courses到Students的多对多关联
	@ManyToMany(fetch = FetchType.EAGER)
	@Cascade(value = {CascadeType.SAVE_UPDATE})
	@JoinTable(name = "sc",joinColumns = {@JoinColumn(name = "CID")},
	   inverseJoinColumns = {@JoinColumn(name = "SNo")})
	public Set<Students> getStudents() {
		return students;
	}

	public void setStudents(Set<Students> students) {
		this.students = students;
	}
	
	
}
