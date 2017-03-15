package cn.hzun.sign.util;
/**
 * 处理字符串工具
 * @author mesie
 * 2016年5月10日 下午8:26:29
 */
public class StringUtil {

	/**
	 * 判断字符串是否为空
	 * @param string
	 * @return
	 */
	public static boolean isEmpty(String string){
		if(string == null || "".equals(string.trim()) || "null".equals(string.trim())){
			return true;
		}else{
			return false;
		}
		
	}
}
