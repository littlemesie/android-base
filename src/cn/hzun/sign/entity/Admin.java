package cn.hzun.sign.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * 管理员表
 * @author mesie
 * 2016年4月7日 下午1:52:55
 */
@Entity
@Table(name = "admin",catalog = "sign",uniqueConstraints = {@UniqueConstraint(columnNames={"id"})})
public class Admin implements Serializable{
	
	private static final long serialVersionUID = -1345678789594005436L;

	/**用户id*/
	private Integer id;
	/**用户名*/
	private String userName;
	/**用户密码*/
	private String userPwd;
	
	public Admin(){
		
	}

	public Admin(Integer id, String userName, String userPwd) {
		super();
		this.id = id;
		this.userName = userName;
		this.userPwd = userPwd;
	}

	@Id
	@Column(name = "id",unique = true,nullable = false,length = 4)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "userName", nullable = false,length = 16)
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "userPwd",nullable = false,length = 16)
	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
}
