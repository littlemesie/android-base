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
 * 学生
 * @author mesie
 * 2016年4月9日 上午9:17:06
 */
@Entity
@Table(name = "students",catalog = "sign",uniqueConstraints = {@UniqueConstraint(columnNames={"SNo"})})
public class Students implements Serializable{
	
	private static final long serialVersionUID = -1345678789594005434L;

	/**用户id*/
	private Integer stuNo;
	/**学生用户名*/
	private String stuName;
	/**学生手机号*/
	private String stuPhone;
	/**学校*/
	private String stuCollege;
	/**院系*/
	private String stuAcademic;
	/**专业*/
	private String stuSpecialty;
	/**班级*/
	private String stuSlass;
	/**性别*/
	private String stuSex;
	/**身份证*/
	private String stuDentityID;
	/**签到时间*/
	private String stuSigntime;
	/**签到设备*/
	private String stuSignDevice;
	/**签到地址*/
	private String stuSignAddress;
	//定义学生集合
	private Set<Teachers> teachers = new HashSet<Teachers>();
	//定义课程集合
	private Set<Courses> courses = new HashSet<Courses>();
	
	public Students(){
		
	}
	
	public Students(Integer stuNo, String stuName, String stuPhone,
			String stuCollege, String stuAcademic, String stuSpecialty,
			String stuSlass, String stuSex, String stuDentityID,
			String stuSigntime, String stuSignDevice, String stuSignAddress,
			Set<Teachers> teachers, Set<Courses> courses) {
		super();
		this.stuNo = stuNo;
		this.stuName = stuName;
		this.stuPhone = stuPhone;
		this.stuCollege = stuCollege;
		this.stuAcademic = stuAcademic;
		this.stuSpecialty = stuSpecialty;
		this.stuSlass = stuSlass;
		this.stuSex = stuSex;
		this.stuDentityID = stuDentityID;
		this.stuSigntime = stuSigntime;
		this.stuSignDevice = stuSignDevice;
		this.stuSignAddress = stuSignAddress;
		this.teachers = teachers;
		this.courses = courses;
	}
	
	@Id
	@Column(name = "SNo",unique = true,nullable = false,length = 11)
	public Integer getStuNo() {
		return stuNo;
	}

	public void setStuNo(Integer stuNo) {
		this.stuNo = stuNo;
	}

	@Column(name = "Sname", nullable = false,length = 20)
	public String getStuName() {
		return stuName;
	}

	public void setStuName(String stuName) {
		this.stuName = stuName;
	}

	@Column(name = "Sphone", nullable = false,length = 20)
	public String getStuPhone() {
		return stuPhone;
	}

	public void setStuPhone(String stuPhone) {
		this.stuPhone = stuPhone;
	}

	@Column(name = "Scollege",nullable = false,length = 20)
	public String getStuCollege() {
		return stuCollege;
	}

	public void setStuCollege(String stuCollege) {
		this.stuCollege = stuCollege;
	}

	@Column(name = "Sacademic",nullable = false,length = 20)
	public String getStuAcademic() {
		return stuAcademic;
	}

	public void setStuAcademic(String stuAcademic) {
		this.stuAcademic = stuAcademic;
	}

	@Column(name = "Sspecialty",nullable = false,length = 20)
	public String getStuSpecialty() {
		return stuSpecialty;
	}

	public void setStuSpecialty(String stuSpecialty) {
		this.stuSpecialty = stuSpecialty;
	}

	@Column(name = "Sclass",nullable = false,length = 20)
	public String getStuSlass() {
		return stuSlass;
	}

	public void setStuSlass(String stuSlass) {
		this.stuSlass = stuSlass;
	}

	@Column(name = "Ssex",nullable = false,length = 4)
	public String getStuSex() {
		return stuSex;
	}

	public void setStuSex(String stuSex) {
		this.stuSex = stuSex;
	}

	@Column(name = "SdentityID",nullable = false,length = 16)
	public String getStuDentityID() {
		return stuDentityID;
	}

	public void setStuDentityID(String stuDentityID) {
		this.stuDentityID = stuDentityID;
	}

	@Column(name = "Ssigntime",nullable = false,length = 10)
	public String getStuSigntime() {
		return stuSigntime;
	}

	public void setStuSigntime(String stuSigntime) {
		this.stuSigntime = stuSigntime;
	}

	@Column(name = "SsignDevice",nullable = false,length = 50)
	public String getStuSignDevice() {
		return stuSignDevice;
	}

	public void setStuSignDevice(String stuSignDevice) {
		this.stuSignDevice = stuSignDevice;
	}

	@Column(name = "SsignAddress",nullable = false,length = 20)
	public String getStuSignAddress() {
		return stuSignAddress;
	}

	public void setStuSignAddress(String stuSignAddress) {
		this.stuSignAddress = stuSignAddress;
	}

	//使用@ManyToMany注解实现Students到Teachers的多对多关联
	@ManyToMany(fetch = FetchType.EAGER)
	@Cascade(value = {CascadeType.SAVE_UPDATE})
	@JoinTable(name = "st",joinColumns = {@JoinColumn(name = "SNo")},
			   inverseJoinColumns = {@JoinColumn(name = "TNo")})
	public Set<Teachers> getTeachers() {
		return teachers;
	}

	public void setTeachers(Set<Teachers> teachers) {
		this.teachers = teachers;
	}

	//使用@ManyToMany注解实现Students到Courses的多对多关联
	@ManyToMany(mappedBy = "students",fetch = FetchType.EAGER)
	public Set<Courses> getCourses() {
		return courses;
	}

	public void setCourses(Set<Courses> courses) {
		this.courses = courses;
	}
	
	
}
