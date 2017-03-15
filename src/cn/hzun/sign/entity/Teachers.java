package cn.hzun.sign.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * 教师表
 * @author mesie
 * 2016年4月9日 上午9:17:25
 */
@Entity
@Table(name = "teachers",catalog = "sign",uniqueConstraints = {@UniqueConstraint(columnNames={"TNo"})})
public class Teachers implements Serializable{
	
	private static final long serialVersionUID = -1345678789594005433L;

	/**教师id*/
	private Integer teacherNo;
	/**教师用户名*/
	private String teacherName;
	/**密码*/
	private String teacherPwd;
	/**学校*/
	private String teacherCollege;
	/**院系*/
	private String teacherAcademy;
	//定义学生集合
	private Set<Students> students = new HashSet<Students>();
	//定义课程集合
	private Set<Courses> courses = new HashSet<Courses>();
	
	public Teachers(){
		
	}
	
	public Teachers(Integer teacherNo, String teacherName, String teacherPwd,
			String teacherCollege, String teacherAcademy,
			Set<Students> students, Set<Courses> courses) {
		super();
		this.teacherNo = teacherNo;
		this.teacherName = teacherName;
		this.teacherPwd = teacherPwd;
		this.teacherCollege = teacherCollege;
		this.teacherAcademy = teacherAcademy;
		this.students = students;
		this.courses = courses;
	}
	
	@Id
	@Column(name = "TNo",unique = true,nullable = false,length = 11)
	public Integer getTeacherNo() {
		return teacherNo;
	}

	public void setTeacherNo(Integer teacherNo) {
		this.teacherNo = teacherNo;
	}

	@Column(name = "Tname", nullable = false, length = 20)
	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	@Column(name = "Tpwd", nullable = false, length = 18)
	public String getTeacherPwd() {
		return teacherPwd;
	}

	public void setTeacherPwd(String teacherPwd) {
		this.teacherPwd = teacherPwd;
	}

	@Column(name = "Tcollege",length = 20)
	public String getTeacherCollege() {
		return teacherCollege;
	}

	public void setTeacherCollege(String teacherCollege) {
		this.teacherCollege = teacherCollege;
	}

	@Column(name = "Tacademy",length = 20)
	public String getTeacherAcademy() {
		return teacherAcademy;
	}

	public void setTeacherAcademy(String teacherAcademy) {
		this.teacherAcademy = teacherAcademy;
	}

	//使用@ManyToMany注解实现Teacher到Students的多对多关联
	@ManyToMany(mappedBy = "teachers",fetch = FetchType.EAGER)
	public Set<Students> getStudents() {
		return students;
	}

	public void setStudents(Set<Students> students) {
		this.students = students;
	}

	//使用@ManyToMany注解实现Teacher到Courses的多对多关联
	@ManyToMany(mappedBy = "teachers",fetch = FetchType.EAGER)
	public Set<Courses> getCourses() {
		return courses;
	}

	public void setCourses(Set<Courses> courses) {
		this.courses = courses;
	}
	
}
