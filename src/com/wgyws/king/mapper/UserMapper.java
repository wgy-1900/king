package com.wgyws.king.mapper;

import java.sql.SQLException;
import java.util.Map;

import com.wgyws.king.pojo.User;



public interface UserMapper {
	/**
	 * 根据用户名密码查有无用户
	 * @param param  key userName    pwd
	 * @return
	 * @throws Exception
	 */
	User queryByUserNameAndPwd(Map<String, String> param)throws SQLException;
	/**
	 * 根据账户查是否有这个人
	 * @param account
	 * @return 
	 * @throws Exception
	 */
	User queryByAccount(String account) throws SQLException;
}
