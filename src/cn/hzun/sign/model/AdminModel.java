package cn.hzun.sign.model;

import java.io.Serializable;

/**
 * admin类
 * @author mesie
 * 2016年4月8日 下午5:53:12
 */
public class AdminModel implements Serializable{

	/**用户id*/
	private Integer id;
	/**用户名*/
	private String userName;
	/**用户密码*/
	private String userPwd;
	
	public AdminModel(){
		
	}

	public AdminModel(Integer id, String userName, String userPwd) {
		super();
		this.id = id;
		this.userName = userName;
		this.userPwd = userPwd;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
}
